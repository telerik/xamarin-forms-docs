---
title: Display Option Attribute
page_title: Display Option Attribute
slug: dataform-annotations-display-option
position: 0
---

## DisplayOptionsAttribute

The **DisplayOptionsAttribute** controls the way an editor is presented. It defines the following properties:

- **Header (string)** - Sets the label of the respective editor.
- **Group (string)** - Sets the group which the editor is part of.
- **Position (int)** - Sets the position the editor will be visualized.
- **PlaceholderText (string)** - Sets the empty content of the editor.

All properties are optional.

### Example

	[DisplayOptions( Header = "Age", Position = 0, PlaceholderText = "age")]
	public int Age { get; set; }
	
