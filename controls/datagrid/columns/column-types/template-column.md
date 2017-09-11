---
title: Template Column
page_title: Template Column
position: 0
slug: datagrid-columns-template-column
---

# DataGridTemplateColumn

If you want to completely customize the content of the cells in a grid column you can use **DataGridTemplateColumn**, which uses a **DataTemplate** to describe the content of each associated grid cell.

## Important Properties:

* **CellContentTemplate** (DataTemplate): Gets or sets the DataTemplate instance that defines the appearance of each cell associated with this column.
* **CellContentTemplateSelector** (DataTemplateSelector): Gets or sets a DataTemplateSelector instance that may be used to retrieve dynamic data templates on a per cell basis.

## Example