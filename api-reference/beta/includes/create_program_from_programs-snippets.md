#### Sample Code
# [C#](#tab/Csharp)

```C#

var program = new Program
{
    "displayName": "testprogram3",
    "description": "test description"
}
GraphServiceClient graphClient = new GraphServiceClient();
var programs = await graphClient.Programs.Request().AddAsync(program);


```