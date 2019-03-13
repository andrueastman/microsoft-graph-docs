#### Sample Code
# [C#](#tab/Csharp)

```C#

var privilegedRoleAssignment = new PrivilegedRoleAssignment
{
  "userId": "userId-value",
  "roleId": "roleId-value"
}
GraphServiceClient graphClient = new GraphServiceClient();
var privilegedRoleAssignments = await graphClient.PrivilegedRoleAssignments.Request().AddAsync(privilegedRoleAssignment);


```