#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var privilegedRoleAssignmentRequests = await graphClient.PrivilegedRoleAssignmentRequests.Request().GetAsync();

```