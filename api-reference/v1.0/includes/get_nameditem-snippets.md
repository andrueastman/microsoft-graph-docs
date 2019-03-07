---
title: "get_nameditem"
description: "Code snippet example" 
author: "api-doctor
"localization_priority: Normal
ms.prod: "graph"
--- 
#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var names = await graphClient.Me.Drive.Items.Items.Workbook.Names.Names.Request().GetAsync();

```