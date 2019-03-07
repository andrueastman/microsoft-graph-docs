---
title: "get_approleassignments"
description: "Code snippet example" 
author: "api-doctor
"localization_priority: Normal
ms.prod: "graph"
--- 
#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var appRoleAssignments = await graphClient.ServicePrincipals.ServicePrincipals.AppRoleAssignments.Request().GetAsync();

```