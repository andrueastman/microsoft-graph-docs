---
title: "get-special-folder"
description: "Code snippet example" 
author: "api-doctor
"localization_priority: Normal
ms.prod: "graph"
--- 
#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var special = await graphClient.Me.Drive.Special.Special.Request().GetAsync();

```