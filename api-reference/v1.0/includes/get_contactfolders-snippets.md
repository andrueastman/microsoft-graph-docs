---
title: "get_contactfolders"
description: "Code snippet example" 
author: "api-doctor
"localization_priority: Normal
ms.prod: "graph"
--- 
#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var contactFolders = await graphClient.Me.ContactFolders.Request().GetAsync();

```