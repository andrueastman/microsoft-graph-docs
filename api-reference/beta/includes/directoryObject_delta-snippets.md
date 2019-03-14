#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var directoryObjects = await graphClient.DirectoryObjects["delta"].Request().GetAsync();

```