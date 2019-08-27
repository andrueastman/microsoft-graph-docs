---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var contact = new Contact
{
	ParentFolderId = "parentFolderId-value",
	Birthday = DateTimeOffset.Parse("10/19/2016 10:37:00"),
	FileAs = "fileAs-value",
	DisplayName = "displayName-value",
	GivenName = "givenName-value",
	Initials = "initials-value"
};

await graphClient.Me.ContactFolders["{id}"].Contacts
	.Request()
	.AddAsync(contact);

```