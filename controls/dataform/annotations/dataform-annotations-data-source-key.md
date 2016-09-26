---
title: Data Source Key Attribute
page_title: Data Source Key Attribute
slug: dataform-annotations-data-source-key
---

## DataSourceKeyAttribute

The **DataSourceKey** attribute is used when a property can have one of many (known in advance) values. This attribute should be used along with a PropertyDataSourceProvider. The attribute defines the following property:

- Key (object): Specifies the key that is used by **PropertyDataSourceProvider** of RadDataForm.

Some editors require a list of possible values which the end user will pick one from, e.g. picker editors. These values are provided by a special class that implements the **IPropertyDataSourceProvider** interface. It has two methods:

-  IList **GetSourceForKey**(object *key*): Provides a list of values for properties with specific key defined with the DataSourceKeyAttribute. 
-  IList **GetSourceForType**(Type *type*): Provides a list of values for a specific property type. This method has less priority than the GetSourceForKey method. 

The default implementation of this interface - the PropertyDataSourceProvider class automatically provides values for enum types. In all other cases users have to create their own implementation of the **IPropertyDataSourceProvider** interface.

### Example

Here is the implementation of the **IPropertyDataSourceProvider** interface that will provide a list of available locations for all properties that have **DataSourceKeyAttribute** defined with Key="Location".

<source id='dataform-dataannotations-datasourcekey-locationprovider'/>

Here is the decoration of the source class properties:

<source id='dataform-dataannotations-datasourcekey-source'/>
 
And here is the data form setup, you have to specify the property data source provider for the data form:

<source id='dataform-dataannotations-datasourcekey-form'/>
			
## See Also
- [Validation Attribute]({%slug dataform-annotations-validation%})
- [Converter Attribute]({%slug dataform-annotations-converter%})
- [Display Options Attribute]({%slug dataform-annotations-display-options%})
- [Display Value Format Attribute]({%slug dataform-annotations-display-value-format%})
- [Ignore Attribute]({%slug dataform-annotations-ignore%})
- [Read Only Attribute]({%slug dataform-annotations-read-only%})