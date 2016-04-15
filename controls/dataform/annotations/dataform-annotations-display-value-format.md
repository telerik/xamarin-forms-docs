---
title: Display Value Format Attribute
page_title: Display Value Format Attribute
slug: dataform-annotations-display-value-format
position: 6
---

## DisplayValueFormatAttribute

This attribute provides format options for Date, Time and NumberPicker editor types.

### Example

	[DisplayValueFormat(Plural = "{0} votes", Single = "{0} vote", Zero = "no votes")]
	public double Votes	{ get; set; }

	[DisplayValueFormat(Date = "yyyy.MM.dd")]
	public DateTime Date { get; set; }