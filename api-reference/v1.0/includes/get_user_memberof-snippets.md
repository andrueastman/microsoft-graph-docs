#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var memberOf = await graphClient.Devices.Devices.MemberOf.Request().GetAsync();

```