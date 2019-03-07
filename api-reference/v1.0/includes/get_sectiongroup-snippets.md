---
title: "get_sectiongroup"
description: "Code snippet example" 
author: "api-doctor
"localization_priority: Normal
ms.prod: "graph"
--- 
#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var sectionGroups = await graphClient.Me.Onenote.SectionGroups.SectionGroups.Request().GetAsync();

```