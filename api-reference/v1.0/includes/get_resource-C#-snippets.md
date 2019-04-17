
```CS

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var resources = await graphClient.Me.Onenote.Resources["{id}"]
	.Request()
	.Select( e => new {
			 e.content 
			 })
	.GetAsync();

var content = resources.Content;

```