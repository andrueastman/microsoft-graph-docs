
```CS

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var events = await graphClient.Me.Events["AAMkADAGAADDdm4NAAA="]
	.Request()
	.Select( e => new {
			 e.subject,
			 e.body,
			 e.bodyPreview,
			 e.organizer,
			 e.attendees,
			 e.start,
			 e.end,
			 e.location,
			 e.locations 
			 })
	.GetAsync();

```