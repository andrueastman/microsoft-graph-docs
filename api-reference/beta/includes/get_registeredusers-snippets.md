#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var registeredUsers = await graphClient.Devices.Devices.RegisteredUsers.Request().GetAsync();

```