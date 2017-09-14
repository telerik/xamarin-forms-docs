---
title: Time Column
page_title: Time Column
position: 0
slug: datagrid-columns-time-column
---

# DataGridTimeColumn #

The **DataGridTimeColumn** is used to represent DateTime objects. It uses the TimePicker control to pick a value in EditMode.

## Important Properties

* **PropertyName**: Gets or sets the name of the property of the object type that represents each row within the grid.
* **CellContentStyle**: Gets or sets the Style object that defines the appearance of each cell associated with this column. The TargetType of the Style should be TextBlock type.
* **CellContentStyleSelector**: Gets or sets the StyleSelector instance that allows for dynamic appearance on a per cell basis.
* **CellContentFormat**: Gets or sets the custom format for each cell value. The String.Format routine is used and the format passed should be in the form required by this method.


## Example

				<telerikGrid:DataGridTimeColumn PropertyName="Established" 
                                                HeaderText="Time Column"/>