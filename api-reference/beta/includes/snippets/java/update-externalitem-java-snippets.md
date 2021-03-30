---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ExternalItem externalItem = new ExternalItem();
LinkedList<Acl> aclList = new LinkedList<Acl>();
Acl acl = new Acl();
acl.type = AclType.USER;
acl.value = "49103559-feac-4575-8b94-254814dfca72";
acl.accessType = AccessType.GRANT;
acl.identitySource = "Azure Active Directory";
aclList.add(acl);
externalItem.acl = aclList;

graphClient.connections("contosohr").items("TSP228082938")
	.buildRequest()
	.patch(externalItem);

```