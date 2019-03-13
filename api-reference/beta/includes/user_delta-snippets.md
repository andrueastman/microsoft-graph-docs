#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var delta = await graphClient.Users.Delta.Request().GetAsync();

```