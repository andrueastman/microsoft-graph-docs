---
title: "plannerAssignment resource type"
description: "The **plannerAssignment** resource represents the assignment of a task to a user. This type is used in the open type plannerAssignments."
localization_priority: Normal
author: "TarkanSevilmis"
ms.prod: "planner"
---

# plannerAssignment resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **plannerAssignment** resource represents the assignment of a task to a user. This type is used in the open type [plannerAssignments](plannerassignments.md).


## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|assignedBy|[identitySet](identityset.md)|The identity of the user that performed the assignment of the task, i.e. the assignor.|
|assignedDateTime|DateTimeOffset|The time at which the task was assigned. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|orderHint|String|Hint used to order assignees in a task. The format is defined as outlined [here](planner-order-hint-format.md).|

## JSON representation
Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.plannerAssignment"
}-->

```json
{
  "assignedBy": {"@odata.type": "microsoft.graph.identitySet"},
  "assignedDateTime": "String (timestamp)",
  "orderHint": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "plannerAssignment resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
    "Error: /api-reference/beta/resources/plannerassignment.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->