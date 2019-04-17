
```CS

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var events = await graphClient.Me.Events["AAMkAGIAAAoZDOFAAA="]
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