#### Sample Code
# [C#](#tab/Csharp)

```C#

var privilegedApprova = new PrivilegedApprova
{
  "userId": "userId-value",
  "roleId": "roleId-value",
  "approvalType": "approvalType-value",
  "approvalState": "approvalState-value",
  "approvalDuration": "datetime-value"
}
GraphServiceClient graphClient = new GraphServiceClient();
var privilegedApproval = await graphClient.PrivilegedApproval.Request().AddAsync(privilegedApprova);


```