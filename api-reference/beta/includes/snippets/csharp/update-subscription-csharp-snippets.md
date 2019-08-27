---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var subscription = new Subscription
{
	ExpirationDateTime = DateTimeOffset.Parse("11/22/2016 18:23:45")
};

await graphClient.Subscriptions["{id}"]
	.Request()
	.UpdateAsync(subscription);

```