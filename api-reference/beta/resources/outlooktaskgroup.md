---
title: "outlookTaskGroup resource type"
description: "A group of folders (outlookTaskFolder) that contain Outlook tasks (collection of outlookTask objects). "
author: "angelgolfer-ms"
localization_priority: Normal
ms.prod: "outlook"
---

# outlookTaskGroup resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A group of folders ([outlookTaskFolder](outlooktaskfolder.md)) that contain Outlook tasks (collection of [outlookTask](outlooktask.md) objects). 

In Outlook, there is a default task group `My Tasks` which you cannot rename or delete. You can, however, create additional task groups. 


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get outlookTaskGroup](../api/outlooktaskgroup-get.md) | [outlookTaskGroup](outlooktaskgroup.md) |Get the properties and relationships of the specified Outlook task group.|
|[Create outlookTaskFolder](../api/outlooktaskgroup-post-taskfolders.md) |[outlookTaskFolder](outlooktaskfolder.md)| Create an Outlook task folder.|
|[List taskFolders](../api/outlooktaskgroup-list-taskfolders.md) |[outlookTaskFolder](outlooktaskfolder.md) collection| Get a collection of Outlook task folders.|
|[Update](../api/outlooktaskgroup-update.md) | [outlookTaskGroup](outlooktaskgroup.md)	|Update the writable properties of an Outlook task group. |
|[Delete](../api/outlooktaskgroup-delete.md) | None |Delete the specified Outlook task group. |

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|changeKey|String|The version of the task group.|
|groupKey|Edm.Guid|The unique GUID identifier for the task group.|
|id|String|The unique string identifier of the task group. Read-only.|
|isDefaultGroup|Boolean|True if the task group is the default task group.|
|name|String|The name of the task group.|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|taskFolders|[outlookTaskFolder](outlooktaskfolder.md) collection| The collection of task folders in the task group. Read-only. Nullable.|

## JSON representation
Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.outlookTaskGroup"
}-->

```json
{
  "changeKey": "String",
  "groupKey": "Guid",
  "id": "String (identifier)",
  "isDefaultGroup": true,
  "name": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "outlookTaskGroup resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
    "Error: /api-reference/beta/resources/outlooktaskgroup.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->