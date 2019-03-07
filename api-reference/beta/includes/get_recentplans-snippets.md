---
title: "get_recentplans"
description: "Code snippet example" 
author: "api-doctor
"localization_priority: Normal
ms.prod: "graph"
--- 
#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var recentPlans = await graphClient.Me.Planner.RecentPlans.Request().GetAsync();

```