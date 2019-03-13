#### Sample Code
# [C#](#tab/Csharp)

```C#

var bookingBusinesse = new BookingBusinesse
{
    "displayName":"Fourth Coffee",
    "address":{
        "type":"mall",
        "postOfficeBox":"P.O. Box 123",
        "street":"4567 Main Street",
        "city":"Buffalo",
        "state":"NY",
        "countryOrRegion":"USA",
        "postalCode":"98052"
    },
    "phone":"206-555-0100",
    "email":"manager@fourthcoffee.com",
    "webSiteUrl":"https://www.fourthcoffee.com",
    "defaultCurrencyIso":"USD"
}
GraphServiceClient graphClient = new GraphServiceClient();
var bookingBusinesses = await graphClient.BookingBusinesses.Request().AddAsync(bookingBusinesse);


```