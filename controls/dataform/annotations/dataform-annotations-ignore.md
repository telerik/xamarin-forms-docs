---
title: Ignore Attribute
page_title: Ignore Attribute
slug: dataform-annotations-ignore
---

## IgnoreAttribute

Properties marked with the Ignore attribute will force the **RadDataForm** to skip creating editor for them.

### Example

Here is the decoration of the source class properties:

<snippet id='dataform-dataannotations-ignore-source'/>

Here is the data form setup:

<snippet id='dataform-dataannotations-ignore-form'/>

No editor will be created for the "Weight" property.
	
## See Also
- [Validation Attribute]({%slug dataform-annotations-validation%})
- [Converter Attribute]({%slug dataform-annotations-converter%})
- [Data Source Key Attribute]({%slug dataform-annotations-data-source-key%})
- [Display Options Attribute]({%slug dataform-annotations-display-options%})
- [Display Value Format Attribute]({%slug dataform-annotations-display-value-format%})
- [Read Only Attribute]({%slug dataform-annotations-read-only%})