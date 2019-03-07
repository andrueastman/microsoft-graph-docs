---
title: "get_oAuth2Permissiongrants"
description: "Code snippet example" 
author: "api-doctor
"localization_priority: Normal
ms.prod: "graph"
--- 
#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var oAuth2Permissiongrants = await graphClient.ServicePrincipals.ServicePrincipals.OAuth2Permissiongrants.Request().GetAsync();

```