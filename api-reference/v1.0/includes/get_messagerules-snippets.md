---
title: "get_messagerules"
description: "Code snippet example" 
author: "api-doctor
"localization_priority: Normal
ms.prod: "graph"
--- 
#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var messageRules = await graphClient.Me.MailFolders.MailFolders.MessageRules.Request().GetAsync();

```