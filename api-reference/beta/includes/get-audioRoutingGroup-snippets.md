---
title: "get-audioRoutingGroup"
description: "Code snippet example" 
author: "api-doctor
"localization_priority: Normal
ms.prod: "graph"
--- 
#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var audioRoutingGroups = await graphClient.App.Calls.Calls.AudioRoutingGroups.AudioRoutingGroups.Request().GetAsync();

```