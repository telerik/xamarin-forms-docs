---
title: Converter Attribute
page_title: Converter Attribute
slug: dataform-annotations-converter
---

## ConverterAttribute

There are cases when the editors require types that are not the same as the property type defined in the business object. In these case users can use a converter class. This is a custom class implementing the **IPropertyConverter** interface. The next example demonstrates how such converted can be used.

### Example

In this example we will demonstrate how we can use a number picker editor, which supports double type, for property of type decimal. First, you need a proper converter:

<snippet id='dataform-dataannotations-converter-decimaltodoublepropertyconverter'/>

Here is the decoration of the source class with attributes:

<snippet id='dataform-dataannotations-converter-source'/>

Finally, you have to register a number picker editor for the item Price property:

<snippet id='dataform-dataannotations-converter-form'/>
				
## See Also
- [Validation Attribute]({%slug dataform-annotations-validation%})
- [Data Source Key Attribute]({%slug dataform-annotations-data-source-key%})
- [Display Options Attribute]({%slug dataform-annotations-display-options%})
- [Display Value Format Attribute]({%slug dataform-annotations-display-value-format%})
- [Ignore Attribute]({%slug dataform-annotations-ignore%})
- [Read Only Attribute]({%slug dataform-annotations-read-only%})