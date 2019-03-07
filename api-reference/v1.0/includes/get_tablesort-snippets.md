---
title: "get_tablesort"
description: "Code snippet example" 
author: "api-doctor
"localization_priority: Normal
ms.prod: "graph"
--- 
#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var sort = await graphClient.Me.Drive.Items.Items.Workbook.Tables.Tables.Sort.Request().GetAsync();

```