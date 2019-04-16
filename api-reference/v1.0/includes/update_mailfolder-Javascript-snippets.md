
```Javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const mailFolders = {
  displayName: "displayName-value",
};

let res = await client.api('/me/mailFolders/{id}')
	.update({mailFolder : mailFolders});

```