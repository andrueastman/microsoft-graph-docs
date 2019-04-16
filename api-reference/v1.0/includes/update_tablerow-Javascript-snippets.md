
```Javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const rows = {
  index: 99,
  values: "values-value"
};

let res = await client.api('/me/drive/items/{id}/workbook/tables/{id|name}/rows/{index}')
	.update({workbookTableRow : rows});

```