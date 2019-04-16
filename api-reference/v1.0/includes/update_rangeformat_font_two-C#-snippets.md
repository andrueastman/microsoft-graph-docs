
```CS

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var font = new WorkbookRangeFont
{
	Italic = true,
	Size = 26,
};

await graphClient.Me.Drive.Items["{id}"].Workbook.Worksheets["{sheet-id}"].Range('$B$1').Format.Font
	.Request()
	.UpdateAsync(font);

```