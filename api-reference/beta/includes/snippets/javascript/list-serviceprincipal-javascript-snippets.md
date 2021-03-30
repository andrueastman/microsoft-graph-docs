---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let serviceprincipals = await client.api('/serviceprincipals')
	.version('beta')
	.get();

```