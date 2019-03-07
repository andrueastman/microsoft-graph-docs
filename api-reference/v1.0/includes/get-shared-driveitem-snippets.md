---
title: "get-shared-driveitem"
description: "Code snippet example" 
author: "api-doctor
"localization_priority: Normal
ms.prod: "graph"
--- 
#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var driveItem = await graphClient.Shares.Shares.DriveItem.Request().GetAsync();

```