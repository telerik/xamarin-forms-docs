---
title: Schema
page_title: RadDataForm Schema  | Telerik UI for Xamarin.Android Documentation
description: This page describes how to use the data form schema.
slug: data-form-schema
tags: dataform, data, form, schema
position: 6
publish: true
---

## DataForm for Xamarin.Android: Schema

You can set up how each property will be edited through the [property metadata]({% slug data-form-metadata %} "Read more about the data form metadata.").
Another way to achieve the same is through a json schema that provides the same information. This can be useful for example when editing json objects that can't be annotated with the
**DataFormProperty** annotation. The schema can be used not only as a replacement for the annotations for defining the metadata for each property - label, 
index, columnIndex, group, required, readOnly, skip, editor, editorParams, converter, validator, validatorParams - but also for data form properties like isReadOnly, commitMode and
validationMode. More about each of these properties is available in the article about [metadata]({% slug data-form-metadata %} "Read more about the data form metadata.").

Here's one schema example:

	{
	  "commitMode": "immediate",
	  "validationMode": "immediate",
	  "properties":
	  [
		{
		  "name": "name",
		  "displayName": "Your Name"
		},
		{
		  "name": "age",
		  "displayName": "Your Age",
		  "editor": "stepper",
		  "editorParams":
		  {
			"minimum": 18,
			"maximum": 70
		  }
		},
		{
		  "name": "gender",
		  "displayName": "Your Gender",
		  "editor": "picker",
		  "valuesProvider": ["male", "female"]
		},
		{
		  "name": "email",
		  "editor": "email",
		  "validator": "MailValidator",
		  "displayName": "Your Email"
		},
		{
		  "name": "city",
		  "editor": "segmentededitor",
		  "valuesProvider": ["New York", "Las Vegas", "Los Angeles"]
		}
	  ]
	}

This schema can be used to edit the following object:

	{
	  "name": "John Doe",
	  "age": 21,
	  "gender": "Male",
	  "email": "john.doe@example.com",
	  "city": "New York"
	}

The result would be that the name property will have a header "Your name", the age property will be edited with NumberPicker(Stepper), with available range from 18 to 70. The gender will be edited with a Picker(Spinner) with 
male and female as possible values, etc.

Here's how to apply the schema to the data form:


```C#
// The files PersonExtended.json and PersonSchema.json are
// in the Assets folder of the project
String json = LoadJSONFromAsset ("PersonExtended.json");

try {
	JSONObject jsonObject = new JSONObject (json);
	dataForm.SetEntity(jsonObject);

	String schema = LoadJSONFromAsset("PersonSchema.json");
	JSONObject jsonSchema = new JSONObject(schema);
	DataFormMetadata metadata = new DataFormMetadata(jsonSchema);
	dataForm.SetMetadata(metadata);
} catch(JSONException e) {
	Log.Error ("json", "error parsing json", e);
}
```

The loadJSONFromAsset simply returns the content of file with given name. One sample implementation is provided in the getting started [article]({% slug data-form-getting-started %} "Read Data Form Getting Started.").