---
author: JeremyKelley
ms.author: JeremyKelley
ms.date: 09/17/2017
title: ListItemVersion
localization_priority: Normal
ms.prod: "sharepoint"
---
# ListItemVersion resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **listItemVersion** resource represents a previous version of a [ListItem](listitem.md) resource.

## Tasks on ListItemVersion resources

The following tasks are available for listItemVersion resources.

|            Common task             |         HTTP method         |
| :--------------------------------- | :-------------------------- |
| [List versions][version-list]      | `GET /sites/{site-id}/items/{item-id}/versions`  |
| [Get version][version-get]         | `GET /sites/{site-id}/items/versions/{version-id}`     |
| [Restore version][version-restore] | `POST /sites/{site-id}/items/versions/{version-id}/restore` |

[version-list]: ../api/listitem-list-versions.md
[version-get]: ../api/listitemversion-get.md
[version-restore]: ../api/listitemversion-restore.md


## JSON representation

<!-- { "blockType": "resource", "@odata.type": "microsoft.graph.listItemVersion", "@type.aka": "oneDrive.baseItemVersion" } -->

```json
{
  "content": { "@odata.type": "Edm.Stream" },
  "fields": { "@odata.type": "microsoft.graph.fieldValueSet" },
  "id": "string",
  "lastModifiedBy": { "@odata.type": "microsoft.graph.identitySet" },
  "lastModifiedDateTime": "2016-01-01T15:20:01.125Z",
  "published": { "@odata.type": "microsoft.graph.publicationFacet" }
}
```

## Properties

|      Property name       |                         Type                         |                               Description                               |
| :----------------------- | :--------------------------------------------------- | :---------------------------------------------------------------------- |
| **id**                   | string                                               | The ID of the version. Read-only.                                       |
| **lastModifiedBy**       | [IdentitySet](../resources/identityset.md)           | Identity of the user which last modified the version. Read-only.        |
| **lastModifiedDateTime** | [DateTimeOffset](../resources/timestamp.md)          | Date and time the version was last modified. Read-only.                 |
| **published**            | [PublicationFacet](../resources/publicationfacet.md) | Indicates the publication status of this particular version. Read-only. |


## Relationships

The following table defines the relationships that the **driveItemVersion** resource has to other resources.

| Relationship name |                      Type                      |                               Description                                |
| :---------------- | :--------------------------------------------- | :----------------------------------------------------------------------- |
| **fields**        | [FieldValueSet](../resources/fieldvalueset.md) | A collection of the fields and values for this version of the list item. |


<!--
{
  "type": "#page.annotation",
  "description": "The version facet provides information about the properties of a file version.",
  "keywords": "version,versions,version-history,history",
  "section": "documentation",
  "tocPath": "Facets/Version",
  "suppressions": [
    "Error: /api-reference/beta/resources/listitemversion.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->