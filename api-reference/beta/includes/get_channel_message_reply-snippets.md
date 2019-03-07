---
title: "get_channel_message_reply"
description: "Code snippet example" 
author: "api-doctor
"localization_priority: Normal
ms.prod: "graph"
--- 
#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var replies = await graphClient.Teams.Teams.Channels.Channels.Messages.Messages.Replies.Replies.Request().GetAsync();

```