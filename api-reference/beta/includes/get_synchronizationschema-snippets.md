---
title: "get_synchronizationschema"
description: "Code snippet example" 
author: "api-doctor
"localization_priority: Normal
ms.prod: "graph"
--- 
#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var schema = await graphClient.ServicePrincipals.ServicePrincipals.Synchronization.Jobs.Jobs.Schema.Request().GetAsync();

```