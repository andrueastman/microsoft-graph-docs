---
title: "get_accessReview_reviewers"
description: "Code snippet example" 
author: "api-doctor
"localization_priority: Normal
ms.prod: "graph"
--- 
#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var reviewers = await graphClient.AccessReviews.AccessReviews.Reviewers.Request().GetAsync();

```