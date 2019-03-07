---
title: "drive_root_subscriptions_socketIo"
description: "Code snippet example" 
author: "api-doctor
"localization_priority: Normal
ms.prod: "graph"
--- 
#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var socketIo = await graphClient.Me.Drive.Root.Subscriptions.SocketIo.Request().GetAsync();

```