
```CS

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var title = await graphClient.Me.Drive.Items["{id}"].Workbook.Worksheets["{id|name}"].Charts["name"].Axes.ValueAxis.Title
	.Request()
	.GetAsync();

```