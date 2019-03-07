---
title: "enum-item-thumbnails"
description: "Code snippet example" 
author: "api-doctor
"localization_priority: Normal
ms.prod: "graph"
--- 
#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var thumbnails = await graphClient.Me.Drive.Items.Items.Thumbnails.Request().GetAsync();

```