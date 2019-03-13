#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var events = await graphClient.Me.Events["AAMkADAGAADDdm4NAAA="].Request().GetAsync();

```