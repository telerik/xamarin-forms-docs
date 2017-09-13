---
title: Picker Column
page_title: Picker Column
position: 0
slug: datagrid-columns-picker-column
---

# DataGridPickerColumn  

The DataGridPickerColumn uses a Picker control in Edit mode to select a value from list of possibilities.

## Important Properties

Here are the specific properties defined for DataGridPickerColumn:

* **ItemsSource** (IEnumerable<object>): This property is used when the source of the ComboBox items is not part of the data and is the same for all items in the grid.
* **ItemsSourcePath** (string): This property is used to specify a property of your data class to be used as source for the ComboBox.
* **ItemDisplayBindingPath** (string): Sets the display path of the items in the ComboBox selector. It points to a field in the items from the ItemsSource collection of the ComboBox.
* **SelectedValuePath** (string): Sets the value that is actually selected in the ComboBox (could be different from the display value) and is passed to the property that is edited in the ComboBox column.

## Example 

	  <telerikGrid:DataGridPickerColumn PropertyName="Country"
                                        HeaderText="Country"
                                        ItemsSourcePath="Countries"/>