#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var settings = await graphClient.Settings.Request().GetAsync();

```