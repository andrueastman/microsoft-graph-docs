#### Sample Code
# [C#](#tab/Csharp)

```C#

var agreement = new Agreement
{
  "displayName": "MSGraph Sample",
  "isViewingBeforeAcceptanceRequired": true,
  "files": [
    {
      "fileName": "TOU.pdf",
      "language": "en",
      "isDefault": true,
      "fileData": {
        "data": "SGVsbG8gd29ybGQ="
      }
    }
  ]
}
GraphServiceClient graphClient = new GraphServiceClient();
var agreements = await graphClient.Agreements.Request().AddAsync(agreement);


```