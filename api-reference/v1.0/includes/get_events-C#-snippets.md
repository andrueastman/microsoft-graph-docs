
```CS

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var event = await graphClient.Me.Events
	.Request()
	.Header("Prefer","outlook.timezone="Pacific Standard Time"")
	.Select( e => new {
			 e.subject,
			 e.body,
			 e.bodyPreview,
			 e.organizer,
			 e.attendees,
			 e.start,
			 e.end,
			 e.location 
			 })
	.GetAsync();

```