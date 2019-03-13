#### Sample Code
# [C#](#tab/Csharp)

```C#

var group = new Group
{
  "description": "Self help community for library",
  "displayName": "Library Assist",
  "groupTypes": [
    "Unified"
  ],
  "mailEnabled": true,
  "mailNickname": "library",
  "securityEnabled": false
}
GraphServiceClient graphClient = new GraphServiceClient();
var groups = await graphClient.Groups.Request().AddAsync(group);


```