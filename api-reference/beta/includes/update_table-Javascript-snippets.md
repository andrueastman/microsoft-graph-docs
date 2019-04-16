
```Javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const tables = {
  name: "name-value",
  showHeaders: true,
  showTotals: true,
  style: "style-value"
};

let res = await client.api('/me/drive/items/{id}/workbook/tables/{id|name}')
	.version('beta')
	.update({workbookTable : tables});

```