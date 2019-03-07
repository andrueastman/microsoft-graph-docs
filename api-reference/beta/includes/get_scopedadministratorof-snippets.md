---
title: "get_scopedadministratorof"
description: "Code snippet example" 
author: "api-doctor
"localization_priority: Normal
ms.prod: "graph"
--- 
#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var scopedAdministratorOf = await graphClient.Me.ScopedAdministratorOf.Request().GetAsync();

```