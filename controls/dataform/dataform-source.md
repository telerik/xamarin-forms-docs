---
title: Data Source
page_title: Data Source
position: 3
slug: data-form-data-source
---

# Data Source

## Data Class

One way to set data form source is to use a class and decorate its properties with data annotations. These data annotations are used to build metadata for each property used by the data form to customize its UI. Here are listed all available data annotations:

- [Display Options Attribute]({%slug dataform-annotations-display-options%})
- [Ignore Attribute]({%slug dataform-annotations-ignore%})
- [Read Only Attribute]({%slug dataform-annotations-read-only%})
- [Data Source Key Attribute]({%slug dataform-annotations-data-source-key%})
- [Validation Attribute]({%slug dataform-annotations-validation%})
- [Converter Attribute]({%slug dataform-annotations-converter%})
- [Display Value Format Attribute]({%slug dataform-annotations-display-value-format%})

### Example 

Here is a sample class decorated with annotations:

<snippet id='dataform-source-dataclass-class'/>

Here is how to set an instance of the class as data form source:

<snippet id='dataform-source-dataclass-dataform'/>


##  Third Party Data Source

Sometimes the source is not an instance of a specific class that can be decorated with data annotations. In these cases you have to provide your own metadata through the **RadDataForm.MetadataProvider** property.

### Example

This example will demonstrate how to use a dictionary as data form source.

<snippet id='dataform-source-customsource-source'/>

You have to set a custom metadata provider that will provide information for each property, in this case dictionary item. The data form will use this metadata when building its UI.

The metadata provider has to inherit from the **PropertyMetadataProviderBase** class:

<snippet id='dataform-source-customsource-metadataprovider'/>

In the **Initialize** method you have to add the metadata for each dictionary item using the **EntityPropertyMetadata** class. It contains all metadata information that can be set on a property and you can modify it as per your needs.

You also need a custom entity property class that is responsible for committing the values entered in the data form:

<snippet id='dataform-source-customsource-entityproperty'/>

Here is the data form setup:

<snippet id='dataform-source-customsource-dataform-setup'/>

## See Also

- [DataForm Editors]({% slug dataform-editors %})
- [DataForm Layouts]({% slug dataform-group-layouts %})
- [Validate and Commit]({% slug dataform-validate-and-commit %})