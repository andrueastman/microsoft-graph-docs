---
title: "get_worksheetprotection"
description: "Code snippet example" 
author: "api-doctor
"localization_priority: Normal
ms.prod: "graph"
--- 
#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var protection = await graphClient.Me.Drive.Items.Items.Workbook.Worksheets.Worksheets.Protection.Request().GetAsync();

```