
```Javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const schools = {
  displayName: "Fabrikam Arts High School",
  description: "Magnate school for the arts. Los Angeles School District"
};

let res = await client.api('/education/schools/10002')
	.version('beta')
	.update({educationSchool : schools});

```