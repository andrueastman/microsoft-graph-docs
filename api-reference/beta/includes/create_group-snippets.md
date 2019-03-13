#### Sample Code
# [C#](#tab/Csharp)

```C#

var group = new Group
{
  "description": "Self help community for golf",
  "displayName": "Golf Assist",
  "groupTypes": [
    "Unified"
  ],
  "mailEnabled": true,
  "mailNickname": "golfassist",
  "securityEnabled": false
}
GraphServiceClient graphClient = new GraphServiceClient();
var groups = await graphClient.Groups.Request().AddAsync(group);


```