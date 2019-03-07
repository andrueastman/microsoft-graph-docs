---
title: "get_educationSynchronizationProfile_error"
description: "Code snippet example" 
author: "api-doctor
"localization_priority: Normal
ms.prod: "graph"
--- 
#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var errors = await graphClient.Education.SynchronizationProfiles.SynchronizationProfiles.Errors.Request().GetAsync();

```