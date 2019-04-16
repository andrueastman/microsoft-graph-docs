
```Javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/me/outlook/tasks('AAMkADA1MHgwAAA=')')
	.version('beta')
	.header('Prefer','outlook.timezone="Pacific Standard Time"')
	.get();

```