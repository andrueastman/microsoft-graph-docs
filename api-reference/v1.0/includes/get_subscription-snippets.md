#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var subscriptions = await graphClient.Subscriptions.Subscriptions.Request().GetAsync();

```