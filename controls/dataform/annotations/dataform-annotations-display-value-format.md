---
title: Display Value Format Attribute
page_title: Display Value Format Attribute
slug: dataform-annotations-display-value-format
position: 6
---

## DisplayValueFormatAttribute

For the scenarios when the provided property value is not the same as the required visualization the **DisplayValueFormat** attribute comes handy. This attribute provides formatting options for Date, Time and NumberPicker editor types. Here is how it can be used.

### Example

	[DisplayValueFormat(Plural = "{0} votes", Single = "{0} vote", Zero = "no votes")]
	public double Votes	{ get; set; }

	[DisplayValueFormat(Date = "yyyy.MM.dd")]
	public DateTime Date { get; set; }
		

## Read More
- [Validation Attribute]({%slug dataform-annotations-validation%})
- [Converter Attribute]({%slug dataform-annotations-converter%})
- [Data Source Key Attribute]({%slug dataform-annotations-data-source-key%})
- [Display Option Attribute]({%slug dataform-annotations-display-option%})
- [Ignore Attribute]({%slug dataform-annotations-ignore%})
- [Read Only Attribute]({%slug dataform-annotations-read-only%})