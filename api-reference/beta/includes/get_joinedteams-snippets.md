---
title: "get_joinedteams"
description: "Code snippet example" 
author: "api-doctor
"localization_priority: Normal
ms.prod: "graph"
--- 
#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var joinedTeams = await graphClient.Me.JoinedTeams.Request().GetAsync();

```