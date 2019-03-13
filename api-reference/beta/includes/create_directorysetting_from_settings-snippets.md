#### Sample Code
# [C#](#tab/Csharp)

```C#

var setting = new Setting
{
  "templateId": "templateId-value",
  "values": [
    {
      "name": "name-value",
      "value": "value-value"
    }
  ]
}
GraphServiceClient graphClient = new GraphServiceClient();
var settings = await graphClient.Settings.Request().AddAsync(setting);


```