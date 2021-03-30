---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

await client.api('/trustFramework/keySets/{id}/getActiveKey')
	.version('beta')
	.post();

```