
```Javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/me/events/{id}/instances')
	.version('beta')
	.get();

```