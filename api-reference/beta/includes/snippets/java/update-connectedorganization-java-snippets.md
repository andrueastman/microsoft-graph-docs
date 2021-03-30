---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ConnectedOrganization connectedOrganization = new ConnectedOrganization();
connectedOrganization.displayName = "Connected organization new name";
connectedOrganization.description = "Connected organization new description";

graphClient.identityGovernance().entitlementManagement().connectedOrganizations("{id}")
	.buildRequest()
	.patch(connectedOrganization);

```