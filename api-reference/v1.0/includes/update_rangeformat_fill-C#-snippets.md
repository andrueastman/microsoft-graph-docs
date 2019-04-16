
```CS

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var fill = new WorkbookRangeFill
{
	Color = "#FF0000",
};

await graphClient.Me.Drive.Items["{id}"].Workbook.Worksheets["{sheet-id}"].Range('$A$1').Format.Fill
	.Request()
	.UpdateAsync(fill);

```