---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var secureScoreControlProfile = new SecureScoreControlProfile
{
	AssignedTo = "assignedTo-value",
	ControlStateUpdates = "controlStateUpdates-value",
	TenantNote = "tenantNote-value"
};

await graphClient.Security.SecureScoreControlProfiles["AdminMFA"]
	.Request()
	.UpdateAsync(secureScoreControlProfile);

```