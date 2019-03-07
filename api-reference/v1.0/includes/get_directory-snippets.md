---
title: "get_directory"
description: "Code snippet example" 
author: "api-doctor
"localization_priority: Normal
ms.prod: "graph"
--- 
#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var deletedItems = await graphClient.Directory.DeletedItems.DeletedItems.Request().GetAsync();

```