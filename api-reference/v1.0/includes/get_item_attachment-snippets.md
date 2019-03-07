---
title: "get_item_attachment"
description: "Code snippet example" 
author: "api-doctor
"localization_priority: Normal
ms.prod: "graph"
--- 
#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var attachments = await graphClient.Me.Messages.Messages.Attachments.Attachments.Request().GetAsync();

```