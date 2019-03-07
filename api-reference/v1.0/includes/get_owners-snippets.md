---
title: "get_owners"
description: "Code snippet example" 
author: "api-doctor
"localization_priority: Normal
ms.prod: "graph"
--- 
#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var installedApps = await graphClient.Teams.Teams.InstalledApps.Request().GetAsync();

```