---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let installedApps = await client.api('/teams/{id}/installedApps')
	.version('beta')
	.expand('teamsAppDefinition')
	.get();

```