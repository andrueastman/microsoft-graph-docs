---
title: "get_bookingappointment"
description: "Code snippet example" 
author: "api-doctor
"localization_priority: Normal
ms.prod: "graph"
--- 
#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var appointments = await graphClient.BookingBusinesses.BookingBusinesses.Appointments.Appointments.Request().GetAsync();

```