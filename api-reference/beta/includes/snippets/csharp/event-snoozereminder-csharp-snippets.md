---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var newReminderTime = new DateTimeTimeZone
{
	DateTime = "10/19/2016 10:37:00",
	TimeZone = "timeZone-value"
};

await graphClient.Me.Events["{id}"]
	.SnoozeReminder(newReminderTime)
	.Request()
	.PostAsync();

```