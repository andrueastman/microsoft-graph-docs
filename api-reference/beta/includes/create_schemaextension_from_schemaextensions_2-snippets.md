#### Sample Code
# [C#](#tab/Csharp)

```C#

var schemaExtension = new SchemaExtension
{
    "id":"courses",
    "description": "Graph Learn training courses extensions",
    "targetTypes": [
        "Group"
    ],
    "properties": [
        {
            "name": "courseId",
            "type": "Integer"
        },
        {
            "name": "courseName",
            "type": "String"
        },
        {
            "name": "courseType",
            "type": "String"
        }
    ]
}
GraphServiceClient graphClient = new GraphServiceClient();
var schemaExtensions = await graphClient.SchemaExtensions.Request().AddAsync(schemaExtension);


```