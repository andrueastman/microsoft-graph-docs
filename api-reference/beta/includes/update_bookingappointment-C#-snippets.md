
```CS

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var start = new DateTimeTimeZone
{
	DateTime = "2018-05-06T12:00:00+00:00",
	TimeZone = "UTC",
};

var invoiceDate = new DateTimeTimeZone
{
	DateTime = "2018-05-06T12:30:00+00:00",
	TimeZone = "UTC",
};

var end = new DateTimeTimeZone
{
	DateTime = "2018-05-06T12:30:00+00:00",
	TimeZone = "UTC",
};

var appointments = new BookingAppointment
{
	End = end,
	InvoiceDate = invoiceDate,
	Start = start,
};

await graphClient.BookingBusinesses["Contosolunchdelivery@M365B489948.onmicrosoft.com"].Appointments["AAMkADKnAAA="]
	.Request()
	.UpdateAsync(appointments);

```