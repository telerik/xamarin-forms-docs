---
title: Ignore Attribute
page_title: Ignore Attribute
slug: dataform-annotations-read-only
position: 2
---

## ReadOnlyAttribute

Properties marked with the **ReadOnly** attribute can not be edited. There are differences between the platforms:

- **iOS**: The editors are in disabled state.
- **Android**: Viewers are used instead of editors. 

### Example

	[ReadOnly]
	public int Age { get; set; }