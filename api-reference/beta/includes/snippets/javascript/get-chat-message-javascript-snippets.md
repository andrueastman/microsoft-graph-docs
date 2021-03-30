---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let chat = await client.api('/users/{id}/chats/{id}')
	.version('beta')
	.get();

```