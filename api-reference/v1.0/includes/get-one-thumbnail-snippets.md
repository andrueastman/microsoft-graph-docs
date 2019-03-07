---
title: "get-one-thumbnail"
description: "Code snippet example" 
author: "api-doctor
"localization_priority: Normal
ms.prod: "graph"
--- 
#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var {size} = await graphClient.Me.Drive.Items.Items.Thumbnails.Thumbnails.{size}.Request().GetAsync();

```