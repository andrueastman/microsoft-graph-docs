
```CS

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var contact = await graphClient.Me.Contacts
	.Request()
	.Select( e => new {
			 e.displayName,
			 e.emailAddresses 
			 })
	.GetAsync();

```