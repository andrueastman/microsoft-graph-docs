---
title: "get_privilegedrolesettings"
description: "Code snippet example" 
author: "api-doctor
"localization_priority: Normal
ms.prod: "graph"
--- 
#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var settings = await graphClient.PrivilegedRoles.PrivilegedRoles.Settings.Request().GetAsync();

```