---
title: Display Options Attribute
page_title: Display Options Attribute
slug: dataform-annotations-display-options
---

# DisplayOptionsAttribute

The **DisplayOptionsAttribute** controls the way an editor is presented. It provides the following properties:

- **Header** (string): Sets the label of the respective editor.
- **Group** (string): Sets the group which the editor is part of.
- **Position** (int): Sets the position of the editor in the layout.
- **ColumnPosition** (int): Sets the column position of the editor in the layout.
- **ColumnSpan** (int): Sets the column span of the editor in the layout.
- **PlaceholderText** (string): Sets the empty content of the editor.

> All properties are optional.

## Example

Here is the decoration of the source class:

<snippet id='dataform-dataannotations-displayoptions-source'/>

And here is the data form setup:

<snippet id-'dataform-dataannotations-displayoptions-form'/>

## See Also
- [Validation Attribute]({%slug dataform-annotations-validation%})
- [Converter Attribute]({%slug dataform-annotations-converter%})
- [Data Source Key Attribute]({%slug dataform-annotations-data-source-key%})
- [Display Value Format Attribute]({%slug dataform-annotations-display-value-format%})
- [Ignore Attribute]({%slug dataform-annotations-ignore%})
- [Read Only Attribute]({%slug dataform-annotations-read-only%})