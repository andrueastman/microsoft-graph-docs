---
title: "get_photo_value"
description: "Code snippet example" 
author: "api-doctor
"localization_priority: Normal
ms.prod: "graph"
--- 
#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var $value = await graphClient.Users.Users.Photo.$value.Request().GetAsync();

```