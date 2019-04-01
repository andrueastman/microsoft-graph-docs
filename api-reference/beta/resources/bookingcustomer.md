---
title: "bookingCustomer resource type"
description: " > **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported."
localization_priority: Normal
author: "angelgolfer-ms"
ms.prod: "bookings"
---

# bookingCustomer resource type

 [!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]
 
Represents a customer of a [bookingBsiness](bookingbusiness.md).


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[List customers](../api/bookingbusiness-list-customers.md) | [bookingCustomer](bookingcustomer.md) collection | Get a list of **bookingCustomer** objects. |
|[Create bookingCustomer](../api/bookingbusiness-post-customers.md) | [bookingCustomer](bookingcustomer.md) | Create a new **bookingCustomer** object. |
|[Get bookingCustomer](../api/bookingcustomer-get.md) | [bookingCustomer](bookingcustomer.md) |Read the properties and relationships of a **bookingCustomer** object.|
|[Update](../api/bookingcustomer-update.md) | [bookingCustomer](bookingcustomer.md)	|Update a **bookingCustomer** object. |
|[Delete](../api/bookingcustomer-delete.md) | None |Delete a **bookingCustomer** object. |

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|displayName|String|The name of the customer.|
|emailAddress|String|The SMTP address of the customer.|
|id|String| The ID of the customer. Read-only.|

## Relationships
None


## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.bookingCustomer"
}-->

```json
{
  "displayName": "String",
  "emailAddress": "String",
  "id": "String (identifier)"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "bookingCustomer resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
    "Error: /api-reference/beta/resources/bookingcustomer.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->