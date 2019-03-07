---
title: "get_posts"
description: "Code snippet example" 
author: "api-doctor
"localization_priority: Normal
ms.prod: "graph"
--- 
#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var posts = await graphClient.Groups.Groups.Threads.Threads.Posts.Request().GetAsync();

```