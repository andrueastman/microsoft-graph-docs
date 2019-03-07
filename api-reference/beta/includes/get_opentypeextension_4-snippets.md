---
title: "get_opentypeextension_4"
description: "Code snippet example" 
author: "api-doctor
"localization_priority: Normal
ms.prod: "graph"
--- 
#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var extensions = await graphClient.Groups.Groups.Threads.Threads.Posts.Posts.Extensions.Extensions.Request().GetAsync();

```