---
title: DisplayOptions Attribute
page_title: DisplayOptions Attribute
slug: dataform-annotations-display-options
---

# DisplayOptionsAttribute

The **DisplayOptionsAttribute** controls the way an editor is presented. It provides the following properties:

- **Header** (string): Sets the label of the respective editor.
- **HeaderResourceKey**(string): Sets the key which will be used for [globalizing]({%slug dataform-globalization%}) the control´s property headers. The key should be present in a custom [RESX file](https://docs.microsoft.com/en-us/previous-versions/visualstudio/visual-studio-2008/ekyft91f(v=vs.90)) in your application.
- **Group** (string): Sets the group which the editor is part of.
- **GroupResourceKey**(string): Sets the key which will be used for [globalizing]({%slug dataform-globalization%}) the control´s group headers. The key should be present in a custom [RESX file](https://docs.microsoft.com/en-us/previous-versions/visualstudio/visual-studio-2008/ekyft91f(v=vs.90)) in your application.
- **Position** (int): Sets the position of the editor in the layout.
- **ColumnPosition** (int): Sets the column position of the editor in the layout.
- **ColumnSpan** (int): Sets the column span of the editor in the layout.
- **PlaceholderText** (string): Sets the empty content of the editor.
- **PlaceholderResourceKey**(string): Sets the key which will be used for [globalizing]({%slug dataform-globalization%}) the placeholder texts of the different properties. The key should be present in a custom [RESX file](https://docs.microsoft.com/en-us/previous-versions/visualstudio/visual-studio-2008/ekyft91f(v=vs.90)) in your application.

> All properties are optional.

## Example

Here is the decoration of the source class:

<snippet id='dataform-dataannotations-displayoptions-source'/>

And here is the data form setup:

<snippet id='dataform-dataannotations-displayoptions-form'/>

## See Also

- [Converter Attribute]({%slug dataform-annotations-converter%})
- [DataSourceKey Attribute]({%slug dataform-annotations-data-source-key%})
- [DisplayValueFormat Attribute]({%slug dataform-annotations-display-value-format%})
- [Ignore Attribute]({%slug dataform-annotations-ignore%})
- [NativeConversionContext Attribute]({%slug dataform-annotations-native-convertion-context%})
- [ReadOnly Attribute]({%slug dataform-annotations-read-only%})
- [Validation Attribute]({%slug dataform-annotations-validation%})