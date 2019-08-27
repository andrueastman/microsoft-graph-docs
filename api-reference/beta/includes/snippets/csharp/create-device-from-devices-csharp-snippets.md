---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var device = new Device
{
	AccountEnabled = true,
	AlternativeSecurityIds = new List<AlternativeSecurityId>()
	{
		new AlternativeSecurityId
		{
			Type = 99,
			IdentityProvider = "identityProvider-value",
			Key = "base64Y3YxN2E1MWFlYw=="
		}
	},
	ApproximateLastSignInDateTime = DateTimeOffset.Parse("10/19/2016 10:37:00"),
	DeviceId = "deviceId-value",
	DeviceMetadata = "deviceMetadata-value",
	DeviceVersion = 99
};

await graphClient.Devices
	.Request()
	.AddAsync(device);

```