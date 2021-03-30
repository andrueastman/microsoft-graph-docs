---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

byte[] connectorGroup = Base64.getDecoder().decode("Content-type: application/jsonContent-length: 30{  "@odata.id": "https://graph.microsoft.com/onPremisesPublishingProfiles/applicationproxy/connectorGroups/{id}"}");
	graphClient.applications("{id}").connectorGroup().reference()
	.buildRequest()
	.put(connectorGroup);

```