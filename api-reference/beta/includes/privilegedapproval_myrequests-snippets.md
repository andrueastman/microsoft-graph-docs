#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var privilegedApproval = await graphClient.PrivilegedApproval.PrivilegedApproval.Request().GetAsync();

```