#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var messages = await graphClient.Me.Messages["AAMkAGE1M2_bs88AACHsLqWAAA="].Request().GetAsync();

```