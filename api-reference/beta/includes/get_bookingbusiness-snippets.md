#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var bookingBusinesses = await graphClient.BookingBusinesses.BookingBusinesses.Request().GetAsync();

```