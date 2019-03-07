---
title: "get_governanceresources"
description: "Code snippet example" 
author: "api-doctor
"localization_priority: Normal
ms.prod: "graph"
--- 
#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var resources = await graphClient.PrivilegedAccess.PrivilegedAccess.Resources.Request().GetAsync();

```