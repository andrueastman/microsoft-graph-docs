---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var outlookTask = new OutlookTask
{
	Subject = "Shop for children's weekend",
	StartDateTime = new DateTimeTimeZone
	{
		DateTime = "05/03/2016 09:00:00",
		TimeZone = "Eastern Standard Time"
	},
	DueDateTime = new DateTimeTimeZone
	{
		DateTime = "05/05/2016 16:00:00",
		TimeZone = "Eastern Standard Time"
	}
};

await graphClient.Me.Outlook.Tasks
	.Request()
	.Header("Prefer","outlook.timezone=\"Pacific Standard Time\"")
	.AddAsync(outlookTask);

```