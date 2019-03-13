#### Sample Code
# [C#](#tab/Csharp)

```C#

var administrativeUnit = new AdministrativeUnit
{
    "displayName": "Seattle District Technical Schools",
    "description": "Seattle district technical schools administration",
    "visibility": "true"
}
GraphServiceClient graphClient = new GraphServiceClient();
var administrativeUnits = await graphClient.AdministrativeUnits.Request().AddAsync(administrativeUnit);


```