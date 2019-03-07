---
title: "get_scopedrolemember"
description: "Code snippet example" 
author: "api-doctor
"localization_priority: Normal
ms.prod: "graph"
--- 
#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var scopedRoleMembers = await graphClient.AdministrativeUnits.AdministrativeUnits.ScopedRoleMembers.Request().GetAsync();

```