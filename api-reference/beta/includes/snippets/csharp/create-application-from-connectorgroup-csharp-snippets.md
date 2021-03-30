---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

using var connectorGroup = new System.IO.MemoryStream(Encoding.UTF8.GetBytes(@"Content-type: application/json
Content-length: 30

{
  ""@odata.id"": ""https://graph.microsoft.com/onPremisesPublishingProfiles/applicationproxy/connectorGroups/{id}""
}"));

await graphClient.Applications["{id}"].ConnectorGroup.Reference
	.Request()
	.PutAsync<Application>(connectorGroup);

```