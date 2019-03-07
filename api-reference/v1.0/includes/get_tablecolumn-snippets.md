---
title: "get_tablecolumn"
description: "Code snippet example" 
author: "api-doctor
"localization_priority: Normal
ms.prod: "graph"
--- 
#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var columns = await graphClient.Me.Drive.Items.Items.Workbook.Tables.Tables.Columns.Columns.Request().GetAsync();

```