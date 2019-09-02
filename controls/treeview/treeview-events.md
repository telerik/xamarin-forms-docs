---
title: Events
page_title: Events
position: 7
slug: treeview-events
---

# Events

RadTreeView exposes the following events:

* **ItemTapped** - occurs when an item is tapped. The `ItemTapped` event handler receives two parameters:
	* The `sender` argument which is of type object, but can be cast to the **RadTreeView** type.
	* A `TreeViewItemEventArgs` object which has a reference to the tapped item through its **Item** property.
	
* **ItemHold** - occurs when the item is held on. The `ItemHold` event handler receives two parameters:
	* The `sender` argument which is of type object, but can be cast to the **RadTreeView** type.
	* A `TreeViewItemEventArgs` object which has a reference to the held item through its **Item** property.
	
* **ItemCollapsed** - occurs when the item is collapsed. The `ItemHold` event handler receives two parameters:
	* The `sender` argument which is of type object, but can be cast to the **RadTreeView** type.
	* A `TreeViewItemEventArgs` object which has a reference to the collapsed item through its **Item** property.
	
* **ItemExpanded** - occurs when the item is expanded. The `ItemHold` event handler receives two parameters:
	* The `sender` argument which is of type object, but can be cast to the **RadTreeView** type.
	* A `TreeViewItemEventArgs` object which has a reference to the expanded item through its **Item** property.

## See Also

* [Expand/Collapse]({%slug treeview-expand-collapse-api%})
* [CheckBoxes]({%slug treeview-checkboxes-support%})
* [Theming]({%slug treeview-theming%})
