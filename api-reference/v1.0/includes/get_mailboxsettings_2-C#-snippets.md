
```CS

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var me = await graphClient.Me
	.Request()
	.Select( e => new {
			 e.mailboxSettings 
			 })
	.GetAsync();

var automaticRepliesSetting = me.MailboxSettings.AutomaticRepliesSetting;

```