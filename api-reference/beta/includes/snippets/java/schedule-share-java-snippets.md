---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Boolean notifyTeam = true;

OffsetDateTime startDateTime = OffsetDateTimeSerializer.deserialize("10/8/2018 12:00:00 AM");

OffsetDateTime endDateTime = OffsetDateTimeSerializer.deserialize("10/15/2018 12:00:00 AM");

graphClient.teams("{teamId}").schedule()
	.share(ScheduleShareParameterSet
		.newBuilder()
		.withNotifyTeam(notifyTeam)
		.withStartDateTime(startDateTime)
		.withEndDateTime(endDateTime)
		.build())
	.buildRequest()
	.post();

```