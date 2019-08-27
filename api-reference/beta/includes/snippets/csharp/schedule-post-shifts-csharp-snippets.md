---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var shift = new Shift
{
	Id = "SHFT_577b75d2-a927-48c0-a5d1-dc984894e7b8",
	UserId = "c5d0c76b-80c4-481c-be50-923cd8d680a1",
	SchedulingGroupId = "TAG_228940ed-ff84-4e25-b129-1b395cf78be0",
	SharedShift = new ShiftItem
	{
		DisplayName = "Day shift",
		Notes = "Please do inventory as part of your shift.",
		StartDateTime = DateTimeOffset.Parse("03/11/2019 15:00:00"),
		EndDateTime = DateTimeOffset.Parse("03/12/2019 00:00:00"),
		Theme = ScheduleEntityTheme.Blue,
		Activities = new List<ShiftActivity>()
		{
			new ShiftActivity
			{
				IsPaid = true,
				StartDateTime = DateTimeOffset.Parse("03/11/2019 15:00:00"),
				EndDateTime = DateTimeOffset.Parse("03/11/2019 15:15:00"),
				Code = "",
				DisplayName = "Lunch"
			}
		}
	},
	DraftShift = new ShiftItem
	{
		DisplayName = "Day shift",
		Notes = "Please do inventory as part of your shift.",
		StartDateTime = DateTimeOffset.Parse("03/11/2019 15:00:00"),
		EndDateTime = DateTimeOffset.Parse("03/12/2019 00:00:00"),
		Theme = ScheduleEntityTheme.Blue,
		Activities = new List<ShiftActivity>()
		{
			new ShiftActivity
			{
				IsPaid = true,
				StartDateTime = DateTimeOffset.Parse("03/11/2019 15:00:00"),
				EndDateTime = DateTimeOffset.Parse("03/11/2019 15:30:00"),
				Code = "",
				DisplayName = "Lunch"
			}
		}
	}
};

await graphClient.Teams["{teamId}"].Schedule.Shifts
	.Request()
	.AddAsync(shift);

```