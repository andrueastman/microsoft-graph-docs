---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<SearchRequest> requestsList = new LinkedList<SearchRequest>();
SearchRequest requests = new SearchRequest();
LinkedList<EntityType> entityTypesList = new LinkedList<EntityType>();
entityTypesList.add(EntityType.EXTERNAL_ITEM);
requests.entityTypes = entityTypesList;
LinkedList<String> contentSourcesList = new LinkedList<String>();
contentSourcesList.add("/external/connections/connectionfriendlyname");
requests.contentSources = contentSourcesList;
SearchQuery query = new SearchQuery();
SearchQueryString query_string = new SearchQueryString();
query_string.query = "contoso product";
query.query_string = query_string;
requests.query = query1;
requests.from = 0;
requests.size = 25;
LinkedList<String> stored_fieldsList = new LinkedList<String>();
stored_fieldsList.add("title");
stored_fieldsList.add("description");
requests.stored_fields = stored_fieldsList;

requestsList.add(requests);

graphClient.search()
	.query(SearchEntityQueryParameterSet
		.newBuilder()
		.withRequests(requestsList)
		.build())
	.buildRequest()
	.post();

```