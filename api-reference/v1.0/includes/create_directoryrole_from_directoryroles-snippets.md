#### Sample Code
# [C#](#tab/Csharp)

```C#

var directoryRole = new DirectoryRole
{
  "roleTemplateId": "roleTemplateId-value"
}
GraphServiceClient graphClient = new GraphServiceClient();
var directoryRoles = await graphClient.DirectoryRoles.Request().AddAsync(directoryRole);


```