
```CS

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var group = await graphClient.Groups
	.Request()
	.Filter("hasMembersWithLicenseErrors+eq+true,")
	.Select( e => new {
			 e.id,
			 e.displayName 
			 })
	.GetAsync();

```