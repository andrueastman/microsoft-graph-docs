#### Sample Code
# [C#](#tab/Csharp)

```C#

var invitation = new Invitation
{
  "invitedUserEmailAddress": "yyy@test.com",
  "inviteRedirectUrl": "https://myapp.com"
}
GraphServiceClient graphClient = new GraphServiceClient();
var invitations = await graphClient.Invitations.Request().AddAsync(invitation);


```