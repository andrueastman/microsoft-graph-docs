#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var memberOf = await graphClient.ServicePrincipals.ServicePrincipals.MemberOf.Request().GetAsync();

```