---
title: "get_acceptedsenders"
description: "Code snippet example" 
author: "api-doctor
"localization_priority: Normal
ms.prod: "graph"
--- 
#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var acceptedSenders = await graphClient.Groups.Groups.AcceptedSenders.Request().GetAsync();

```