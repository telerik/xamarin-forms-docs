---
title: Text Column
page_title: Text Column
position: 1
slug: datagrid-columns-text-column
---

# DataGridTextColumn  #

A DataGridTextColumn converts the content of each associated cell to a System.String object.

>note A DataGridTextColumn has better performance than a DataGridTemplateColumn.

## Important Properties

Here are the specific properties for TextColumns:

* **PropertyName**: Gets or sets the name of the property of the object type that represents each row within the grid.
* **CellContentStyle**: Gets or sets the Style object that defines the appearance of each cell associated with this column. The TargetType of the Style should be TextBlock type.
* **CellContentStyleSelector**: Gets or sets the StyleSelector instance that allows for dynamic appearance on a per cell basis.
* **CellContentFormat**: Gets or sets the custom format for each cell value. The String.Format routine is used and the format passed should be in the form required by this method.

## Example