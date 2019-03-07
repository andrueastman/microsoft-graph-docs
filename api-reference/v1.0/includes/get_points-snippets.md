---
title: "get_points"
description: "Code snippet example" 
author: "api-doctor
"localization_priority: Normal
ms.prod: "graph"
--- 
#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var points = await graphClient.Me.Drive.Items.Items.Workbook.Worksheets.Worksheets.Charts.Charts.Series.Series.Points.Request().GetAsync();

```