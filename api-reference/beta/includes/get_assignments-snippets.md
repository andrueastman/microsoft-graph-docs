---
title: "get_assignments"
description: "Code snippet example" 
author: "api-doctor
"localization_priority: Normal
ms.prod: "graph"
--- 
#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var assignments = await graphClient.PrivilegedRoles.PrivilegedRoles.Assignments.Request().GetAsync();

```