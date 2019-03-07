---
title: "get_registeredusers"
description: "Code snippet example" 
author: "api-doctor
"localization_priority: Normal
ms.prod: "graph"
--- 
#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var registeredUsers = await graphClient.Devices.Devices.RegisteredUsers.Request().GetAsync();

```