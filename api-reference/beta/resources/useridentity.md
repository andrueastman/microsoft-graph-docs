---
title: "userIdentity type"
description: "For the Azure AD access reviews, this type represents an Azure AD user identity for a reviewer of an access review.  "
localization_priority: Normal
author: "dkershaw10"
ms.prod: "microsoft-identity-platform"
---

# userIdentity type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

For the Azure AD [access reviews](accessreviews-root.md), this type represents an Azure AD user identity for a reviewer of an access review.  
In the context of an Azure AD audit log, this represents the user information that initiated or was affected by an audit activity.

This type inherits from [identity](identity.md) and has one additional property, the user principal name of the user.

## Methods

None.  You would include objects of this type in the body of a request when [creating an accessReview](../api/accessreview-create.md).

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
| `displayName` | `String` | The identity's display name. Note that this may not always be available or up-to-date.    |
| `id`          | `String` | Unique identifier for the identity.  |
| `ipAddress`| `String`| Indicates the client IP address used by user performing the activity (audit log only).|
| `userPrincipalName`|`String` | The userPrincipalName attribute of the user. |

## Remarks

In some circumstances, the unique identifier for the actor may not be available.
In this case, the **displayName** property for the identity will be returned, but the **id** property will be missing from the resource.

## Relationships

None.

## See also

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get accessReview reviewers](../api/accessreview-listreviewers.md) |		[userIdentity](useridentity.md) collection|	Get the reviewers of an accessReview. |
|[Add accessReview reviewer](../api/accessreview-addreviewer.md) |		None.	|	Add a reviewer to an accessReview. |
|[Remove accessReview reviewer](../api/accessreview-removereviewer.md) | None.	|	Remove a reviewer from an accessReview. |

## JSON representation

Here is a JSON representation of the type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
"displayName", "thumbnails"
  ],
  "@odata.type": "microsoft.graph.userIdentity"
}-->

```json
{
  "displayName": "string",
  "id": "string",
 "userPrincipalName": "String"
}

```

<!--
{
  "type": "#page.annotation",
  "description": "userIdentity type",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
    "Error: /api-reference/beta/resources/useridentity.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->