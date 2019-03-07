---
title: "get_privilegedroleassignmentrequest"
description: "Code snippet example" 
author: "api-doctor
"localization_priority: Normal
ms.prod: "graph"
--- 
#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var privilegedRoleAssignmentRequests = await graphClient.PrivilegedRoleAssignmentRequests.Request().GetAsync();

```