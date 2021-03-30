---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Application application = new Application();
application.displayName = "Contoso IWA App";
application.signInAudience = "AzureADMyOrg";

graphClient.applications()
	.buildRequest()
	.post(application);

```