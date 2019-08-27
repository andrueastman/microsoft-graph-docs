---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var extension = new Extension
{
	AdditionalData = new Dictionary<string, object>()
	{
		{"@odata.type","microsoft.graph.openTypeExtension"}
	},
	ExtensionName = "Com.Contoso.Deal",
	CompanyName = "Alpine Skis",
	DealValue = 1010100,
	ExpirationDate = "07/03/2015 13:04:00"
};

await graphClient.Groups["f5480dfd-7d77-4d0b-ba2e-3391953cc74a"].Events["AAMkADVl17IsAAA="].Extensions
	.Request()
	.AddAsync(extension);

```