---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var subscription = new Subscription
{
	ChangeType = "created,updated",
	NotificationUrl = "https://webhook.azurewebsites.net/api/send/myNotifyClient",
	Resource = "me/mailFolders('Inbox')/messages",
	ExpirationDateTime = DateTimeOffset.Parse("11/20/2016 18:23:45"),
	ClientState = "secretClientValue"
};

await graphClient.Subscriptions
	.Request()
	.AddAsync(subscription);

```