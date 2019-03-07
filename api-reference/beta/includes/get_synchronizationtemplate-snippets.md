---
title: "get_synchronizationtemplate"
description: "Code snippet example" 
author: "api-doctor
"localization_priority: Normal
ms.prod: "graph"
--- 
#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var templates = await graphClient.ServicePrincipals.ServicePrincipals.Synchronization.Templates.Request().GetAsync();

```