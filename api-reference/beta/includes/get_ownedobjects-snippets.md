---
title: "get_ownedobjects"
description: "Code snippet example" 
author: "api-doctor
"localization_priority: Normal
ms.prod: "graph"
--- 
#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var ownedObjects = await graphClient.Me.OwnedObjects.Request().GetAsync();

```