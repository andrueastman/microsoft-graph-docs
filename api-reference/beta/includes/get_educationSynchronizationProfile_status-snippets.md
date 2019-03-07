---
title: "get_educationSynchronizationProfile_status"
description: "Code snippet example" 
author: "api-doctor
"localization_priority: Normal
ms.prod: "graph"
--- 
#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var profileStatus = await graphClient.Education.SynchronizationProfiles.SynchronizationProfiles.ProfileStatus.Request().GetAsync();

```