---
title: "get_programControl_from_program"
description: "Code snippet example" 
author: "api-doctor
"localization_priority: Normal
ms.prod: "graph"
--- 
#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var controls = await graphClient.Programs.Programs.Controls.Request().GetAsync();

```