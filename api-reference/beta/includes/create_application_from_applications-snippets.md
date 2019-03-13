#### Sample Code
# [C#](#tab/Csharp)

```C#

var application = new Application
{
  "allowPublicClient": true,
  "displayName": "Display name"
}
GraphServiceClient graphClient = new GraphServiceClient();
var applications = await graphClient.Applications.Request().AddAsync(application);


```