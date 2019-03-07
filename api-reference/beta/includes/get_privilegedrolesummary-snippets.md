---
title: "get_privilegedrolesummary"
description: "Code snippet example" 
author: "api-doctor
"localization_priority: Normal
ms.prod: "graph"
--- 
#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var summary = await graphClient.PrivilegedRoles.PrivilegedRoles.Summary.Request().GetAsync();

```