---
title: "educationRoot resource type"
description: "The `/education` namespace exposes functionality that is specific to the education sector. "
author: "mmast-msft"
localization_priority: Normal
ms.prod: "education"
---

# educationRoot resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The `/education` namespace exposes functionality that is specific to the education sector. 
Some objects in the `/education` namespace can be found in other parts of Microsoft Graph (for example, [users](user.md)). The education namespace provides education-specific properties and features on these objects.

## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Create educationClass](../api/educationroot-post-classes.md) |[educationClass](educationclass.md)| Create a new **educationClass** by posting to the classes collection.|
|[List classes](../api/educationroot-list-classes.md) |[educationClass](educationclass.md) collection| Get an **educationClass** object collection.|
|[Create educationSchool](../api/educationroot-post-schools.md) |[educationSchool](educationschool.md)| Create a new **educationSchool** by posting to the schools collection.|
|[List schools](../api/educationroot-list-schools.md) |[educationSchool](educationschool.md) collection| Get an **educationSchool** object collection.|
|[Create educationUser](../api/educationroot-post-users.md) |[educationUser](educationuser.md)| Create a new **educationUser** by posting to the users collection.|
|[List users](../api/educationroot-list-users.md) |[educationUser](educationuser.md) collection| Get an **educationUser** object collection.|

## Properties
None.

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|classes|[educationClass](educationclass.md) collection| Read-only. Nullable.|
|me|[educationUser](educationuser.md)| Read-only. Nullable.|
|schools|[educationSchool](educationschool.md) collection| Read-only. Nullable.|
|users|[educationUser](educationuser.md) collection| Read-only. Nullable.|

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "educationRoot resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
    "Error: /api-reference/beta/resources/educationroot.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->