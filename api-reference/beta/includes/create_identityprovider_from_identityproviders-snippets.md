#### Sample Code
# [C#](#tab/Csharp)

```C#

var identityProvider = new IdentityProvider
{
    "name": "Login with Amazon",
    "type": "Amazon",
    "clientId": "56433757-cadd-4135-8431-2c9e3fd68ae8",
    "clientSecret": "000000000000"
}
GraphServiceClient graphClient = new GraphServiceClient();
var identityProviders = await graphClient.IdentityProviders.Request().AddAsync(identityProvider);


```