
```CS

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var items = await graphClient.Drive.Items["{item-id}"]
	.Request()
	.Select( e => new {
			 e.content 
			 })
	.GetAsync();

var content = items.Content;

```