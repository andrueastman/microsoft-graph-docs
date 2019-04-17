
```CS

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var user = await graphClient.Users
	.Request()
	.Select( e => new {
			 e.displayName,
			 e.givenName,
			 e.postalCode 
			 })
	.GetAsync();

```