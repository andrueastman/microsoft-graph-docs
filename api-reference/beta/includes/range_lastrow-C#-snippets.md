
```CS

GraphServiceClient graphClient = new GraphServiceClient();
var LastRow = await graphClient.Me.Drive.Items["{id}"].Workbook.Names["name"].Range().LastRow()
	.Request()
	.GetAsync();

```