---
title: "get_createdobjects"
description: "Code snippet example" 
author: "api-doctor
"localization_priority: Normal
ms.prod: "graph"
--- 
#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var createdObjects = await graphClient.Me.CreatedObjects.Request().GetAsync();

```