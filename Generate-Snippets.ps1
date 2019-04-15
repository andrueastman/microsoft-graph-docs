Param(
    [switch]$cleanUp,
    [string]$file
)
$apiDoctorVersion = $env:APIDOCTOR_VERSION
$repoPath = (Get-Location).Path
$downloadedApiDoctor = $false
$downloadedNuGet = $false

Write-Host "Repository location: ", $repoPath

# Check if ApiDoctor version has been set
if ([string]::IsNullOrWhiteSpace($apiDoctorVersion)) {
	Write-Host "API Doctor version has not been set. Aborting..."
	exit 1
}

# Get NuGet
$nugetPath = $null
if (Get-Command "nuget.exe" -ErrorAction SilentlyContinue) {
	# Use the existing nuget.exe from the path
	$nugetPath = (Get-Command "nuget.exe").Source
}
else {
	# Download nuget.exe from the nuget server if required
	$nugetPath = Join-Path $repoPath -ChildPath "nuget.exe"
	$nugetExists = Test-Path $nugetPath
	if ($nugetExists -eq $false) {
		Write-Host "nuget.exe not found. Downloading from dist.nuget.org"
		Invoke-WebRequest -Uri "https://dist.nuget.org/win-x86-commandline/latest/nuget.exe" -OutFile $nugetPath
	}
	$downloadedNuGet = $true
}

# Check for ApiDoctor in path
$apidoc = $null
if (Get-Command "apidoc.exe" -ErrorAction SilentlyContinue) {
    $apidoc = (Get-Command "apidoc.exe").Source
}
else {
	$apidocPath = Join-Path $repoPath -ChildPath "apidoctor"
	New-Item -ItemType Directory -Force -Path $apidocPath
	
	if ($apiDoctorVersion.StartsWith("https://"))
	{
		# Download ApiDoctor from GitHub	
		Write-Host "Cloning API Doctor repository from GitHub"
		& git clone -b generate-snippets $apiDoctorVersion --recurse-submodules "$apidocPath\SourceCode"
		$downloadedApiDoctor = $true
		
		$nugetParams = "restore", "$apidocPath\SourceCode"
		& $nugetPath $nugetParams
			
		# Build ApiDoctor
		Install-Module -Name Invoke-MsBuild -Scope CurrentUser -Force 
		Write-Host "`r`nBuilding API Doctor..."
		Invoke-MsBuild -Path "$apidocPath\SourceCode\ApiDoctor.sln" -MsBuildParameters "/t:Rebuild /p:Configuration=Release /p:OutputPath=$apidocPath\ApiDoctor\tools"

        # Delete existing ApiDoctor source code     
        Remove-Item $apidocPath\SourceCode -Force  -Recurse -ErrorAction SilentlyContinue
	}
	else {
		# Install ApiDoctor from NuGet
		Write-Host "Running nuget.exe from ", $nugetPath
		$nugetParams = "install", "ApiDoctor", "-Version", $apiDoctorVersion, "-OutputDirectory", $apidocPath, "-NonInteractive", "-DisableParallelProcessing"
		& $nugetPath $nugetParams

		if ($LastExitCode -ne 0) { 
			# NuGet error, so we can't proceed
			Write-Host "Error installing API Doctor from NuGet. Aborting."
			Remove-Item $nugetPath
			exit $LastExitCode
		}
	}
    
	# Get the path to the ApiDoctor exe
	$pkgfolder = Get-ChildItem -LiteralPath $apidocPath -Directory | Where-Object {$_.name -match "ApiDoctor"}
	$apidoc = [System.IO.Path]::Combine($apidocPath, $pkgfolder.Name, "tools\apidoc.exe")
	$downloadedApiDoctor = $true
}

# Configure git appropiately
git config --global user.name "ApiDoctor"
git config --global user.email "ApiDoctor"
git remote rm origin
git remote add origin $env:GIT_REMOTE_URL

# Run the snippet generator
$params = "generate-snippets", "--path", $repoPath ,"--verbose","false","--git-path",$env:GIT_PATH,"--snippet-api-url" , $env:SNIPPET_API_URL ,"--lang", $env:LANGUAGES , "--github-token" , $env:GITHUB_TOKEN

& $apidoc $params

# Clean up the stuff we downloaded
if ($cleanUp -eq $true) {
    if ($downloadedNuGet -eq $true) {
        Remove-Item $nugetPath 
    }
    if ($downloadedApiDoctor -eq $true) {
        Remove-Item $apidocPath -Recurse -Force
    }
}
