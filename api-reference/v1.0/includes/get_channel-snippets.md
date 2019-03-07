---
title: "get_channel"
description: "Code snippet example" 
author: "api-doctor
"localization_priority: Normal
ms.prod: "graph"
--- 
#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var channels = await graphClient.Teams.Teams.Channels.Channels.Request().GetAsync();

```