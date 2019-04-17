
```CS

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var groups = await graphClient.Groups["b320ee12-b1cd-4cca-b648-a437be61c5cd"]
	.Request()
	.Select( e => new {
			 e.allowExternalSenders,
			 e.autoSubscribeNewMembers,
			 e.isSubscribedByMail,
			 e.unseenCount 
			 })
	.GetAsync();

```