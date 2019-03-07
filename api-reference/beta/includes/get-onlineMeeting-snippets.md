---
title: "get-onlineMeeting"
description: "Code snippet example" 
author: "api-doctor
"localization_priority: Normal
ms.prod: "graph"
--- 
#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var onlineMeetings = await graphClient.App.OnlineMeetings.OnlineMeetings.Request().GetAsync();

```