#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var line = await graphClient.Me.Drive.Items.Items.Workbook.Worksheets.Worksheets.Charts.Charts.Axes.SeriesAxis.Format.Line.Request().GetAsync();

```