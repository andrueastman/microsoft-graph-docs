---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

GroupCollectionPage groups = graphClient.groups()
	.buildRequest()
	.filter("hasMembersWithLicenseErrors eq true")
	.select("id,displayName")
	.get();

```