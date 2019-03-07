---
title: "get_subscribedsku"
description: "Code snippet example" 
author: "api-doctor
"localization_priority: Normal
ms.prod: "graph"
--- 
#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var subscribedSkus = await graphClient.SubscribedSkus.SubscribedSkus.Request().GetAsync();

```