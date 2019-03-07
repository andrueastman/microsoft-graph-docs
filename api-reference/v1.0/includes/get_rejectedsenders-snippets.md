---
title: "get_rejectedsenders"
description: "Code snippet example" 
author: "api-doctor
"localization_priority: Normal
ms.prod: "graph"
--- 
#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var rejectedSenders = await graphClient.Groups.Groups.RejectedSenders.Request().GetAsync();

```