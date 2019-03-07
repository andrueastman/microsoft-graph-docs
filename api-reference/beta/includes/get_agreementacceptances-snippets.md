---
title: "get_agreementacceptances"
description: "Code snippet example" 
author: "api-doctor
"localization_priority: Normal
ms.prod: "graph"
--- 
#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var agreementAcceptances = await graphClient.Me.AgreementAcceptances.Request().GetAsync();

```