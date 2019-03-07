---
title: "get_privilegedrole"
description: "Code snippet example" 
author: "api-doctor
"localization_priority: Normal
ms.prod: "graph"
--- 
#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var privilegedRoles = await graphClient.PrivilegedRoles.PrivilegedRoles.Request().GetAsync();

```