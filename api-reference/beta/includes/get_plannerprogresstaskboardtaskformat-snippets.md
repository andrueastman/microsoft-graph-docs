---
title: "get_plannerprogresstaskboardtaskformat"
description: "Code snippet example" 
author: "api-doctor
"localization_priority: Normal
ms.prod: "graph"
--- 
#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var progressTaskBoardFormat = await graphClient.Planner.Tasks.Tasks.ProgressTaskBoardFormat.Request().GetAsync();

```