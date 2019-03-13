#### Sample Code
# [C#](#tab/Csharp)

```C#

var device = new Device
{
  "accountEnabled":false,
  "alternativeSecurityIds":
  [
    {
      "type":2,
      "key":"base64Y3YxN2E1MWFlYw=="
    }
  ],
  "deviceId":"4c299165-6e8f-4b45-a5ba-c5d250a707ff",
  "displayName":"Test device",
  "operatingSystem":"linux",
  "operatingSystemVersion":"1"
}
GraphServiceClient graphClient = new GraphServiceClient();
var devices = await graphClient.Devices.Request().AddAsync(device);


```