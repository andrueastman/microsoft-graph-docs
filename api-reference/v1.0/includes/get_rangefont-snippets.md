#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var font = await graphClient.Me.Drive.Items["{id}"].Workbook.Names["{name}"].Range().Format.Font.Request().GetAsync();

```