#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var children = await graphClient.Drives.Drives.Items.Items.Children.Request().GetAsync();

```