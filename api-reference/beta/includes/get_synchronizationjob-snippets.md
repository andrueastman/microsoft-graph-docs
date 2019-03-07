---
title: "get_synchronizationjob"
description: "Code snippet example" 
author: "api-doctor
"localization_priority: Normal
ms.prod: "graph"
--- 
#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var jobs = await graphClient.ServicePrincipals.ServicePrincipals.Synchronization.Jobs.Jobs.Request().GetAsync();

```