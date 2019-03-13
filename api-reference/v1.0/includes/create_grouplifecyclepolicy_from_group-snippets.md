#### Sample Code
# [C#](#tab/Csharp)

```C#

var groupLifecyclePolicie = new GroupLifecyclePolicie
{
  "groupLifetimeInDays": 100,
  "managedGroupTypes": "Selected",
  "alternateNotificationEmails": "admin@contoso.com"
}
GraphServiceClient graphClient = new GraphServiceClient();
var groupLifecyclePolicies = await graphClient.GroupLifecyclePolicies.Request().AddAsync(groupLifecyclePolicie);


```