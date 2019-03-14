#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var secureScores = await graphClient.Security.SecureScores.Request().GetAsync();

```