---
title: Data Source Key Attribute
page_title: Data Source Key Attribute
slug: dataform-annotations-data-source-key
position: 3
---

## DataSourceKeyAttribute

The DataSourceKeyAttribute defines the following property:

- Key (object): Specifies the key that is used by **PropertyDataSourceProvider** property of RadDataForm.

Some editors require a list of possible values, e.g. picker editors. These values are provided by a special class that implements the **IPropertyDataSourceProvider** interface. It has two methods:

-  IList **GetSourceForKey**(object *key*): Provides a list of values for properties with specific key defined with the DataSourceKeyAttribute. 
-  IList **GetSourceForType**(Type *type*): Provides a list of values for a specific property type. This method has less priority than the GetSourceForKey method. 

Our default implementation - the PropertyDataSourceProvider class automatically provides values for enum types. In all other cases you have to use your own implementation of the IPropertyDataSourceProvider interface.

### Example

	[DataSourceKey("Location")]
	public string Location { get; set; }

Here is the implementation that will provide a list of available locations for all properties that have DataSourceKeyAttribute defined with Key="Location".

	public class UserPropertyDataSourceProvider : PropertyDataSourceProvider
	{
	    public override IList GetSourceForKey(object key)
	    {
	        if (key == "Location")
	        {
	            return new List<string> { "Top", "Bottom", "Left", "Right" };
	        }
	
	        return null;
	    }
	}

You have to specify the property data source provider for the data form:

	dataForm.PropertyDataSourceProvider = new UserPropertyDataSourceProvider();

Finally, replace the default text editor with a picker editor:

	dataForm.RegisterEditor("Location", EditorType.PickerEditor);