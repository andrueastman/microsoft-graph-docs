---
title: "get_attachments"
description: "Code snippet example" 
author: "api-doctor
"localization_priority: Normal
ms.prod: "graph"
--- 
#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var attachments = await graphClient.Groups.Groups.Threads.Threads.Posts.Posts.Attachments.Request().GetAsync();

```