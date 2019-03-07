---
title: "get-special-children"
description: "Code snippet example" 
author: "api-doctor
"localization_priority: Normal
ms.prod: "graph"
--- 
#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var children = await graphClient.Me.Drive.Special.Special.Children.Request().GetAsync();

```