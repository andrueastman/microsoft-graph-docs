---
title: "get_mailboxsettings_1"
description: "Code snippet example" 
author: "api-doctor
"localization_priority: Normal
ms.prod: "graph"
--- 
#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var mailboxSettings = await graphClient.Me.MailboxSettings.Request().GetAsync();

```