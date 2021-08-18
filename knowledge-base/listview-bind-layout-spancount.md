---
title: How to bind ListViewGridLayout SpanCount property of RadListView?
description: How to change the SpanCount with a binding at runtime?
type: how-to
page_title: RadListView GridLayout SpanCount Binding
slug: listview-bind-layout-spancount
tags: listview, spancount, binding
res_type: kb
---

## Environment
<table>
	<tbody>
		<tr>
			<td>Product Version</td>
			<td>R2 2021</td>
		</tr>
		<tr>
			<td>Product</td>
			<td>ListView for Xamarin</td>
		</tr>
	</tbody>
</table>


## Description

Let's have the following RadListView with `ListViewGridLayout` configured as follow:

```XAML
<telerikDataControls:RadListView x:Name="listView"
                                ItemsSource="{Binding Source}">
    <telerikDataControls:RadListView.LayoutDefinition>
        <telerikListView:ListViewGridLayout SpanCount="2"
                                            ItemLength="120"/>
    </telerikDataControls:RadListView.LayoutDefinition>
</telerikDataControls:RadListView>
```

The requirement is to update the SpanCount property through a binding.


## Solution

The tricky part is the ListViewGridLayout does not receive the binding context of the ListView directly. The binding context should be explicitly applied like this:

```XAML
<telerikDataControls:RadListView x:Name="listView"
                                ItemsSource="{Binding Source}">
    <telerikDataControls:RadListView.LayoutDefinition>
        <telerikListView:ListViewGridLayout SpanCount="{Binding BindingContext.SpanCountValue, Source={x:Reference listView}}"
                                            ItemLength="120"/>
    </telerikDataControls:RadListView.LayoutDefinition>
</telerikDataControls:RadListView>
```


