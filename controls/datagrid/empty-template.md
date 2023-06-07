---
title: Empty Template
page_title: .NET MAUI DataGrid Documentation - Empty Template
description: Learn more about the Empty Template property of the DataGrid control.
position: 9
slug: datagrid-empty-template
---

# DataGrid Empty Template

The `DataGrid` control provides the ability to specify a template when the ItemsSource is null or collection is empty.

It exposes the following properties:

* `EmptyContentTemplate`(`DataTemplate`)&mdash;defines the content of the view which is shown when there are no items.

* `EmptyContentDisplayMode`&mdash;defines the modes for displaying empty content. The property have two modes:
       - `ItemsSourceNull`&mdash;displays the empty content view only when the ItemsSource is null.
       - `ItemsSourceNullOrEmpty`&mdash;displays the empty content view when ItemsSource is null or when the source is empty(has zero items).

## See Also

- [Editing Commands]({%slug datagrid-commands-editing%})
- [Columns Cell Templates]({%slug datagrid-cell-templates%})
- [Columns Styling]({%slug datagrid-columns-styling%})