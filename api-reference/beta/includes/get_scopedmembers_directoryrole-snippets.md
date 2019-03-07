---
title: "get_scopedmembers_directoryrole"
description: "Code snippet example" 
author: "api-doctor
"localization_priority: Normal
ms.prod: "graph"
--- 
#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var scopedMembers = await graphClient.DirectoryRoles.DirectoryRoles.ScopedMembers.Request().GetAsync();

```