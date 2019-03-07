---
title: "get_outlooktaskgroup"
description: "Code snippet example" 
author: "api-doctor
"localization_priority: Normal
ms.prod: "graph"
--- 
#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var taskGroups = await graphClient.Me.Outlook.TaskGroups.TaskGroups.Request().GetAsync();

```