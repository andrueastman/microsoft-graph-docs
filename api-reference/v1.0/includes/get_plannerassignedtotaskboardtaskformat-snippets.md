---
title: "get_plannerassignedtotaskboardtaskformat"
description: "Code snippet example" 
author: "api-doctor
"localization_priority: Normal
ms.prod: "graph"
--- 
#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var assignedToTaskBoardFormat = await graphClient.Planner.Tasks.Tasks.AssignedToTaskBoardFormat.Request().GetAsync();

```