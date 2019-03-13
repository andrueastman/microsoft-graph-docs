#### Sample Code
# [C#](#tab/Csharp)

```C#

var user = new User
{
  "accountEnabled": true,
  "displayName": "displayName-value",
  "mailNickname": "mailNickname-value",
  "userPrincipalName": "upn-value@tenant-value.onmicrosoft.com",
  "passwordProfile" : {
    "forceChangePasswordNextSignIn": true,
    "password": "password-value"
  }
}
GraphServiceClient graphClient = new GraphServiceClient();
var users = await graphClient.Users.Request().AddAsync(user);


```