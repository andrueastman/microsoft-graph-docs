---
title: "get_taskfolders"
description: "Code snippet example" 
author: "api-doctor
"localization_priority: Normal
ms.prod: "graph"
--- 
#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var taskFolders = await graphClient.Me.Outlook.TaskFolders.Request().GetAsync();

```