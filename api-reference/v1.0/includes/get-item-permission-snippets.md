---
title: "get-item-permission"
description: "Code snippet example" 
author: "api-doctor
"localization_priority: Normal
ms.prod: "graph"
--- 
#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var permissions = await graphClient.Me.Drive.Items.Items.Permissions.Permissions.Request().GetAsync();

```