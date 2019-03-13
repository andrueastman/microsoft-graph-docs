#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var delta = await graphClient.Groups.Delta().Request().GetAsync();

```