#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var delta = await graphClient.Me.MailFolders["{id}"].Messages.Delta().Request().GetAsync();

```