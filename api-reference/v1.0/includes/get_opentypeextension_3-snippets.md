#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var messages = await graphClient.Me.Messages["AAMkAGE1M2IyNGNmLTI5MTktNDUyZi1iOTVl==="].Request().GetAsync();

```