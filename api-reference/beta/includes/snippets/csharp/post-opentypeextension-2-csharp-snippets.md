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
	ExtensionName = "Com.Contoso.Referral",
	CompanyName = "Wingtip Toys",
	DealValue = 500050,
	ExpirationDate = "12/03/2015 10:00:00"
};

await graphClient.Me.Messages["AAMkAGE1M2IyNGNmLTI5MTktNDUyZi1iOTVl==="].Extensions
	.Request()
	.AddAsync(extension);

```