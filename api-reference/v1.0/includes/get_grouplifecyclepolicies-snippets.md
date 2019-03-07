---
title: "get_grouplifecyclepolicies"
description: "Code snippet example" 
author: "api-doctor
"localization_priority: Normal
ms.prod: "graph"
--- 
#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var groupLifecyclePolicies = await graphClient.Groups.Groups.GroupLifecyclePolicies.Request().GetAsync();

```