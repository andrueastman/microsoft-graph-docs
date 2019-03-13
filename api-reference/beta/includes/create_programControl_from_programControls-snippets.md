#### Sample Code
# [C#](#tab/Csharp)

```C#

var programControl = new ProgramControl
{
    "controlId": "7e59d237-2fb0-4e5d-b7bb-d4f9f9129213",
    "controlTypeId": "6e4f3d20-c5c3-407f-9695-8460952bcc68",
    "programId": "7e59d237-2fb0-4e5d-b7bb-d4f9f9129213"
}
GraphServiceClient graphClient = new GraphServiceClient();
var programControls = await graphClient.ProgramControls.Request().AddAsync(programControl);


```