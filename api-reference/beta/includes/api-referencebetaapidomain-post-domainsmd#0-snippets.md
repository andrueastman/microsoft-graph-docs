#### Sample Code
# [C#](#tab/Csharp)

```C#

var domain = new Domain
{
  "id": "contoso.com"
}
GraphServiceClient graphClient = new GraphServiceClient();
var domains = await graphClient.Domains.Request().AddAsync(domain);


```