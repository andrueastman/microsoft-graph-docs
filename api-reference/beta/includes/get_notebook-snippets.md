---
title: "get_notebook"
description: "Code snippet example" 
author: "api-doctor
"localization_priority: Normal
ms.prod: "graph"
--- 
#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var notebooks = await graphClient.Me.Onenote.Notebooks.Notebooks.Request().GetAsync();

```