
```CS

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var event = await graphClient.Me.Events["{id}"].Instances
	.Request()
	.GetAsync();

```