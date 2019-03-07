---
title: "get-list-item"
description: "Code snippet example" 
author: "api-doctor
"localization_priority: Normal
ms.prod: "graph"
--- 
#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var items = await graphClient.Sites.Sites.Lists.Lists.Items.Items.Request().GetAsync();

```