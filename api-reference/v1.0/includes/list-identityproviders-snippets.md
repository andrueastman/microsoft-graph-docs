#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var identityProviders = await graphClient.IdentityProviders.Request().GetAsync();

```