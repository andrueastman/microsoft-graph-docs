---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var secureScoreControlProfile = new SecureScoreControlProfile
{
	AssignedTo = "",
	Comment = "control is reviewed",
	State = "Reviewed",
	VendorInformation = new SecurityVendorInformation
	{
		Provider = "SecureScore",
		ProviderVersion = ,
		SubProvider = ,
		Vendor = "Microsoft"
	}
};

await graphClient.Security.SecureScoreControlProfiles["NonOwnerAccess"]
	.Request()
	.UpdateAsync(secureScoreControlProfile);

```