---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.serviceprincipals("{id}").owners("{id}").reference()
	.buildRequest()
	.delete();

```