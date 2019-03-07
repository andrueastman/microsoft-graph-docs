---
title: "get_endpoint"
description: "Code snippet example" 
author: "api-doctor
"localization_priority: Normal
ms.prod: "graph"
--- 
#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var endpoints = await graphClient.Groups.Groups.Endpoints.Endpoints.Request().GetAsync();

```