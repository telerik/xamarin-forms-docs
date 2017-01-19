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

- [Converter Attribute]({%slug dataform-annotations-converter%})
- [DataSourceKey Attribute]({%slug dataform-annotations-data-source-key%})
- [DisplayOptions Attribute]({%slug dataform-annotations-display-options%})
- [DisplayValueFormat Attribute]({%slug dataform-annotations-display-value-format%})
- [NativeConvertionContext Attribute]({%slug dataform-annotations-native-convertion-context%})
- [ReadOnly Attribute]({%slug dataform-annotations-read-only%})
- [Validation Attribute]({%slug dataform-annotations-validation%})
