---
title: "get-analytics"
description: "Code snippet example" 
author: "api-doctor
"localization_priority: Normal
ms.prod: "graph"
--- 
#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var analytics = await graphClient.Drives.Drives.Items.Items.Analytics.Request().GetAsync();

```