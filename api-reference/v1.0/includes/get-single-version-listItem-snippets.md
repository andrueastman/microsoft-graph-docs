---
title: "get-single-version-listItem"
description: "Code snippet example" 
author: "api-doctor
"localization_priority: Normal
ms.prod: "graph"
--- 
#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var versions = await graphClient.Sites.Sites.Lists.Lists.Items.Items.Versions.Versions.Request().GetAsync();

```