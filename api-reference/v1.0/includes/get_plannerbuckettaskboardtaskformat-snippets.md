---
title: "get_plannerbuckettaskboardtaskformat"
description: "Code snippet example" 
author: "api-doctor
"localization_priority: Normal
ms.prod: "graph"
--- 
#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var bucketTaskBoardFormat = await graphClient.Planner.Tasks.Tasks.BucketTaskBoardFormat.Request().GetAsync();

```