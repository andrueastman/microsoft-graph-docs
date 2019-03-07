---
title: "get_conversation"
description: "Code snippet example" 
author: "api-doctor
"localization_priority: Normal
ms.prod: "graph"
--- 
#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var conversations = await graphClient.Groups.Groups.Conversations.Conversations.Request().GetAsync();

```