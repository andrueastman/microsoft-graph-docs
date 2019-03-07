---
title: "get_bookingbusiness"
description: "Code snippet example" 
author: "api-doctor
"localization_priority: Normal
ms.prod: "graph"
--- 
#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var bookingBusinesses = await graphClient.BookingBusinesses.BookingBusinesses.Request().GetAsync();

```