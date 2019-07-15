---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var value = new List<Alert>()
{
	new Alert
	{
		AssignedTo = "String",
		ClosedDateTime = "String (timestamp)",
		Comments = new List<String>()
		{
			"String"
		},
		Feedback = AlertFeedback.Unknown,
		Id = "String (identifier)",
		Status = AlertStatus.Unknown,
		Tags = new List<String>()
		{
			"String"
		},
		VendorInformation = new SecurityVendorInformation
		{
			Provider = "String",
			Vendor = "String"
		}
	}
};

await graphClient.Security.Alerts
	.UpdateAlerts(value)
	.Request()
	.PostAsync();

```