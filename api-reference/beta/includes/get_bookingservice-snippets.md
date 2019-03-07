---
title: "get_bookingservice"
description: "Code snippet example" 
author: "api-doctor
"localization_priority: Normal
ms.prod: "graph"
--- 
#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var services = await graphClient.BookingBusinesses.BookingBusinesses.Services.Services.Request().GetAsync();

```