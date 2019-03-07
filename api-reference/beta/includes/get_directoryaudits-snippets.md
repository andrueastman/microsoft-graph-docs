---
title: "get_directoryaudits"
description: "Code snippet example" 
author: "api-doctor
"localization_priority: Normal
ms.prod: "graph"
--- 
#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var directoryAudits = await graphClient.AuditLogs.DirectoryAudits.Request().GetAsync();

```