
```CS

GraphServiceClient graphClient = new GraphServiceClient();
var EntireColumn = await graphClient.Me.Drive.Items["{id}"].Workbook.Names["name"].Range().EntireColumn()
	.Request()
	.GetAsync();

```