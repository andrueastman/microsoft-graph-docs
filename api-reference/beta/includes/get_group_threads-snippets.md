---
title: "get_group_threads"
description: "Code snippet example" 
author: "api-doctor
"localization_priority: Normal
ms.prod: "graph"
--- 
#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var threads = await graphClient.Groups.Groups.Threads.Request().GetAsync();

```