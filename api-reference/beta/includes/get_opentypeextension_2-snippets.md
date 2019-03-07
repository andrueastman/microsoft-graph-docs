---
title: "get_opentypeextension_2"
description: "Code snippet example" 
author: "api-doctor
"localization_priority: Normal
ms.prod: "graph"
--- 
#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var extensions = await graphClient.Groups.Groups.Events.Events.Extensions.Extensions.Request().GetAsync();

```