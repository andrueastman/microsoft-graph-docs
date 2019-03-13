#### Sample Code
# [C#](#tab/Csharp)

```C#

var subscription = new Subscription
{
   "changeType": "created,updated",
   "notificationUrl": "https://webhook.azurewebsites.net/api/send/myNotifyClient",
   "resource": "me/mailFolders('Inbox')/messages",
   "expirationDateTime":"2016-11-20T18:23:45.9356913Z",
   "clientState": "secretClientValue"
}
GraphServiceClient graphClient = new GraphServiceClient();
var subscriptions = await graphClient.Subscriptions.Request().AddAsync(subscription);


```