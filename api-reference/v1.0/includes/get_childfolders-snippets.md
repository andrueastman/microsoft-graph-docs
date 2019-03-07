---
title: "get_childfolders"
description: "Code snippet example" 
author: "api-doctor
"localization_priority: Normal
ms.prod: "graph"
--- 
#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var childFolders = await graphClient.Me.MailFolders.MailFolders.ChildFolders.Request().GetAsync();

```