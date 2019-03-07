---
title: "list_riskyusers"
description: "Code snippet example" 
author: "api-doctor
"localization_priority: Normal
ms.prod: "graph"
--- 
#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var riskyUsers = await graphClient.RiskyUsers.Request().GetAsync();

```