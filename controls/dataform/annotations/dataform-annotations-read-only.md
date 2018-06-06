---
title: ReadOnly Attribute
page_title: ReadOnly Attribute
slug: dataform-annotations-read-only
---

## ReadOnlyAttribute

Properties marked with the **ReadOnly** attribute will force the RadDataForm to create editors that can not be edited by the end users. There are differences in the behavior of the generated native components in the different platforms:

- **iOS**: The editors are in disabled state.
- **Android**: Viewers are used instead of editors. 

### Example

Here is the decoration of the source class properties:

<snippet id='dataform-dataannotations-readonly-source'/>
 
And here is the data form setup:

<snippet id='dataform-dataannotations-readonly-form'/>

## See Also

- [Converter Attribute]({%slug dataform-annotations-converter%})
- [DataSourceKey Attribute]({%slug dataform-annotations-data-source-key%})
- [DisplayOptions Attribute]({%slug dataform-annotations-display-options%})
- [DisplayValueFormat Attribute]({%slug dataform-annotations-display-value-format%})
- [Ignore Attribute]({%slug dataform-annotations-ignore%})
- [NativeConversionContext Attribute]({%slug dataform-annotations-native-convertion-context%})
- [Validation Attribute]({%slug dataform-annotations-validation%})
