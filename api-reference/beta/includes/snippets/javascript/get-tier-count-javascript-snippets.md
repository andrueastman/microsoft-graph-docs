---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let group = await client.api('/users/{id}/transitiveMemberOf/microsoft.graph.group')
	.version('beta')
	.header('ConsistencyLevel','eventual')
	.search('displayName:tier')
	.select('displayName,id')
	.orderby('displayName')
	.get();

```