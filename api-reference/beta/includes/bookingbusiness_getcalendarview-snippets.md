---
title: "bookingbusiness_getcalendarview"
description: "Code snippet example" 
author: "api-doctor
"localization_priority: Normal
ms.prod: "graph"
--- 
#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var calendarView = await graphClient.BookingBusinesses.BookingBusinesses.CalendarView.Request().GetAsync();

```