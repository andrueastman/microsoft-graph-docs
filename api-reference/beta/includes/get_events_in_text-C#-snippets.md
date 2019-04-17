
```CS

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var event = await graphClient.Me.Events
	.Request()
	.Header("Prefer","outlook.body-content-type="text"")
	.Select( e => new {
			 e.subject,
			 e.body,
			 e.bodyPreview 
			 })
	.GetAsync();

```