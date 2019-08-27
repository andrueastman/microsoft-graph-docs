---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var appRoleAssignment = new AppRoleAssignment
{
	CreationTimestamp = DateTimeOffset.Parse("10/19/2016 10:37:00"),
	PrincipalDisplayName = "principalDisplayName-value",
	PrincipalId = Guid.Parse("principalId-value"),
	PrincipalType = "principalType-value",
	ResourceDisplayName = "resourceDisplayName-value"
};

await graphClient.ServicePrincipals["{id}"].AppRoleAssignments
	.Request()
	.AddAsync(appRoleAssignment);

```