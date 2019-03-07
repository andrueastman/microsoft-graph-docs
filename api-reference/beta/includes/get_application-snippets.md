---
title: "get_application"
description: "Code snippet example" 
author: "api-doctor
"localization_priority: Normal
ms.prod: "graph"
--- 
#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var application = await graphClient.Me.Drive.Items.Items.Workbook.Application.Request().GetAsync();

```