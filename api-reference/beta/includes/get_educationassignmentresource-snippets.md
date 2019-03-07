---
title: "get_educationassignmentresource"
description: "Code snippet example" 
author: "api-doctor
"localization_priority: Normal
ms.prod: "graph"
--- 
#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var resources = await graphClient.Education.Classes.Classes.Assignments.Assignments.Resources.Resources.Request().GetAsync();

```