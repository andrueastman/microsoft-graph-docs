---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

await client.api('/users/{id}/teamwork/installedApps/{id}/upgrade')
	.version('beta')
	.post();

```