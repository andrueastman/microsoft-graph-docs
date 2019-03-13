#### Sample Code
# [C#](#tab/Csharp)

```C#

var groupSetting = new GroupSetting
{
  "displayName": "displayName-value",
  "templateId": "templateId-value",
  "values": [
    {
      "name": "name-value",
      "value": "value-value"
    }
  ]
}
GraphServiceClient graphClient = new GraphServiceClient();
var groupSettings = await graphClient.GroupSettings.Request().AddAsync(groupSetting);


```