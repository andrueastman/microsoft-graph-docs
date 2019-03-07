---
title: "user_get_room_lists"
description: "Code snippet example" 
author: "api-doctor
"localization_priority: Normal
ms.prod: "graph"
--- 
#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var findRoomLists = await graphClient.Me.FindRoomLists.Request().GetAsync();

```