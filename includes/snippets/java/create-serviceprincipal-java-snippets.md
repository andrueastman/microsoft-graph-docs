---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ServicePrincipal servicePrincipal = new ServicePrincipal();
servicePrincipal.appId = "d7fbfe28-c60e-46d2-8335-841923950d3b";
LinkedList<String> tagsList = new LinkedList<String>();
tagsList.add("WindowsAzureActiveDirectoryIntegratedApp");
tagsList.add("WindowsAzureActiveDirectoryOnPremApp");
servicePrincipal.tags = tagsList;

graphClient.serviceprincipals()
	.buildRequest()
	.post(servicePrincipal);

```