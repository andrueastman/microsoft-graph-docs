---
title: "get_accessReview_decisions"
description: "Code snippet example" 
author: "api-doctor
"localization_priority: Normal
ms.prod: "graph"
--- 
#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var myDecisions = await graphClient.AccessReviews.AccessReviews.MyDecisions.Request().GetAsync();

```