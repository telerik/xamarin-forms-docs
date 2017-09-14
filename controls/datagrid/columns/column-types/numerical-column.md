---
title: Numerical Column
page_title: Numerical Column
position: 2
slug: datagrid-columns-numerical-column
---

# DataGridNumericalColumn #

The **DataGridNumericalColumn** is used to represent only numerical values. It uses an entry control to edit the value in EditMode. The difference between this column and the text one is that it will directly invoke the numeric keyboard on the mobile devices

## Important Properties

* **PropertyName**: Gets or sets the name of the property of the object type that represents each row within the grid.
* **CellContentStyle**: Gets or sets the Style object that defines the appearance of each cell associated with this column. The TargetType of the Style should be TextBlock type.
* **CellContentStyleSelector**: Gets or sets the StyleSelector instance that allows for dynamic appearance on a per cell basis.
* **CellContentFormat**: Gets or sets the custom format for each cell value. The String.Format routine is used and the format passed should be in the form required by this method.


## Example

	 <telerikGrid:DataGridNumericalColumn PropertyName="StadiumCapacity" 
                                           HeaderText="Stadium Capacity"/>
