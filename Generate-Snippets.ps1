Param(
    [switch]$cleanUp
)
$repoPath = (Get-Location).Path
$downloadedApiDoctor = $false
$downloadedNuGet = $false

Write-Host "Repository location: ", $repoPath

if (-not (Test-Path env:APIDOCTOR_VERSION)) { $env:APIDOCTOR_VERSION = 'https://github.com/andrueastman/apidoctor' }

$apiDoctorVersion = $env:APIDOCTOR_VERSION
Write-Host "Using apidoctor version: ", $apiDoctorVersion

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

# Configure with defaults for snippet generation
$git_path = (Get-Command "git.exe").Source
if (-not (Test-Path env:SNIPPET_API_URL)) { $env:SNIPPET_API_URL = 'https://graphexplorerapi.azurewebsites.net/api/GraphExplorerSnippets' }
if (-not (Test-Path env:LANGUAGES)) { $env:LANGUAGES = 'Javascript,C#' }
if (-not (Test-Path env:GIT_REMOTE_URL)) { $env:GIT_REMOTE_URL = 'https://github.com/andrueastman/microsoft-graph-docs.git' }

#we must have the access token
if (-not (Test-Path env:GITHUB_TOKEN)) { 
	Write-Host "Cannot run without Github access token" 
	exit 1 
}

# Configure git appropiately
git config user.name "ApiDoctor"
git remote rm origin
git remote add origin $env:GIT_REMOTE_URL

# Run the snippet generator
$params = "generate-snippets", "--path" , $repoPath , "--ignore-warnings" , "--git-path" , $git_path ,"--snippet-api-url" , $env:SNIPPET_API_URL ,"--lang", $env:LANGUAGES , "--github-token" , $env:GITHUB_TOKEN

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

exit 0