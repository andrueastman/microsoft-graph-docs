---
title: "get_governancerolesetting"
description: "Code snippet example" 
author: "api-doctor
"localization_priority: Normal
ms.prod: "graph"
--- 
#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var roleSettings = await graphClient.PrivilegedAccess.PrivilegedAccess.RoleSettings.RoleSettings.Request().GetAsync();

```