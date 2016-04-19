---
title: Read Only Attribute
page_title: Read Only Attribute
slug: dataform-annotations-read-only
position: 2
---

## ReadOnlyAttribute

Properties marked with the **ReadOnly** attribute will force the RadDataForm to create editors that can not be edited by the end users. There are differences in the behavior of the generated native components in the different platforms:

- **iOS**: The editors are in disabled state.
- **Android**: Viewers are used instead of editors. 

### Example

	[ReadOnly]
	public int Age { get; set; }
	
## See Also
- [Ignore Attribute]({%slug dataform-annotations-ignore%})
- [Converter Attribute]({%slug dataform-annotations-converter%})
- [Data Source Key Attribute]({%slug dataform-annotations-data-source-key%})
- [Display Option Attribute]({%slug dataform-annotations-display-option%})
- [Display Value Format Attribute]({%slug dataform-annotations-display-value-format%})
- [Validation Attribute]({%slug dataform-annotations-validation%})