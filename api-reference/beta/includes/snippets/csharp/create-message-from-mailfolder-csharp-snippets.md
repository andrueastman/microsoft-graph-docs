---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var message = new Message
{
	ReceivedDateTime = DateTimeOffset.Parse("10/19/2016 10:37:00"),
	SentDateTime = DateTimeOffset.Parse("10/19/2016 10:37:00"),
	HasAttachments = true,
	Subject = "subject-value",
	Body = new ItemBody
	{
		ContentType = BodyType.Text,
		Content = "content-value"
	},
	BodyPreview = "bodyPreview-value"
};

await graphClient.Me.MailFolders["{id}"].Messages
	.Request()
	.AddAsync(message);

```