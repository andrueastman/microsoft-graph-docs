---
title: "get-single-version"
description: "Code snippet example" 
author: "api-doctor
"localization_priority: Normal
ms.prod: "graph"
--- 
#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var versions = await graphClient.Me.Drive.Items.Items.Versions.Versions.Request().GetAsync();

```