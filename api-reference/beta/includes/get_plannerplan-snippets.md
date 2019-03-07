---
title: "get_plannerplan"
description: "Code snippet example" 
author: "api-doctor
"localization_priority: Normal
ms.prod: "graph"
--- 
#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var plans = await graphClient.Planner.Plans.Plans.Request().GetAsync();

```