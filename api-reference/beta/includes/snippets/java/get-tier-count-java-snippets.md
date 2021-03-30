---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new HeaderOption("ConsistencyLevel", "eventual"));
requestOptions.add(new QueryOption("$search", "displayName:tier"));

GroupCollectionPage group = graphClient.users("{id}").transitiveMemberOf().microsoft.graph.group()
	.buildRequest( requestOptions )
	.select("displayName,id")
	.orderBy("displayName")
	.get();

```