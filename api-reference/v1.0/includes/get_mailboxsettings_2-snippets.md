---
title: "get_mailboxsettings_2"
description: "Code snippet example" 
author: "api-doctor
"localization_priority: Normal
ms.prod: "graph"
--- 
#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var automaticRepliesSetting = await graphClient.Me.MailboxSettings.AutomaticRepliesSetting.Request().GetAsync();

```