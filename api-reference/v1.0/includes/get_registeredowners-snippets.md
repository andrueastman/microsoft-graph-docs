---
title: "get_registeredowners"
description: "Code snippet example" 
author: "api-doctor
"localization_priority: Normal
ms.prod: "graph"
--- 
#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var registeredOwners = await graphClient.Devices.Devices.RegisteredOwners.Request().GetAsync();

```