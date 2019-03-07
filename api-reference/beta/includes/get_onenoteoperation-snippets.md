---
title: "get_onenoteoperation"
description: "Code snippet example" 
author: "api-doctor
"localization_priority: Normal
ms.prod: "graph"
--- 
#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var operations = await graphClient.Me.Onenote.Operations.Operations.Request().GetAsync();

```