---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String displayName = "AWS Contoso";

graphClient.applicationTemplates("8b1025e4-1dd2-430b-a150-2ef79cd700f5")
	.instantiate(ApplicationTemplateInstantiateParameterSet
		.newBuilder()
		.withDisplayName(displayName)
		.build())
	.buildRequest()
	.post();

```