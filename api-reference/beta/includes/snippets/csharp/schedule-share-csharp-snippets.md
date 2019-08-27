---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var notifyTeam = true;

var startDateTime = DateTimeOffset.Parse("10/08/2018 00:00:00");

var endDateTime = DateTimeOffset.Parse("10/15/2018 00:00:00");

await graphClient.Teams["{teamId}"].Schedule
	.Share(notifyTeam,startDateTime,endDateTime)
	.Request()
	.PostAsync();

```