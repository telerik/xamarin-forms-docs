---
title: Data Source
page_title: Data Source
position: 3
slug: data-form-data-source
---

# Data Source

## Data Class

One way to set data form source is to use a class and decorate its properties with data annotations. These data annotations are used to build metadata for each property used by the data form to customize its UI. Here are listed all available data annotations:

- [Display Option Attribute]({%slug dataform-annotations-display-option%})
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

The metadata provider has to inherit from the **PropertyMetadataProviderBase** class:

<snippet id='dataform-source-customsource-metadataprovider'/>

You also have to provide a custom entity property class that is responsible for committing the values entered in the data form:

<snippet id='dataform-source-customsource-entityproperty'/>

Here is the data form setup:

<snippet id='dataform-source-customsource-dataform'/>

<snippet id='dataform-source-customsource-dataform-setup'/>
