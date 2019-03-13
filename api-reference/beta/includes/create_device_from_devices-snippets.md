#### Sample Code
# [C#](#tab/Csharp)

```C#

var device = new Device
{
  "accountEnabled": true,
  "alternativeSecurityIds": [
    {
      "type": 99,
      "identityProvider": "identityProvider-value",
      "key": "key-value"
    }
  ],
  "approximateLastSignInDateTime": "2016-10-19T10:37:00Z",
  "deviceId": "deviceId-value",
  "deviceMetadata": "deviceMetadata-value",
  "deviceVersion": 99
}
GraphServiceClient graphClient = new GraphServiceClient();
var devices = await graphClient.Devices.Request().AddAsync(device);


```