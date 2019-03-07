---
title: "get_favoriteplans"
description: "Code snippet example" 
author: "api-doctor
"localization_priority: Normal
ms.prod: "graph"
--- 
#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var favoritePlans = await graphClient.Me.Planner.FavoritePlans.Request().GetAsync();

```