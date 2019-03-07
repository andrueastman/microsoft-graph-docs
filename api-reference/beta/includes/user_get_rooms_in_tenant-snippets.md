---
title: "user_get_rooms_in_tenant"
description: "Code snippet example" 
author: "api-doctor
"localization_priority: Normal
ms.prod: "graph"
--- 
#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var findRooms = await graphClient.Me.FindRooms.Request().GetAsync();

```