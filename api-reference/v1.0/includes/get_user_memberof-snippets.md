---
title: "get_user_memberof"
description: "Code snippet example" 
author: "api-doctor
"localization_priority: Normal
ms.prod: "graph"
--- 
#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var memberOf = await graphClient.Devices.Devices.MemberOf.Request().GetAsync();

```