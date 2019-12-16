---
title: TreeView Does Not Resize After Item Collapses or Expands
description: Learn how to automatically resize the TreeView to exactly fit the current content height.
type: troubleshooting
page_title: Automatically Resize TreeView When Item Is Collapsed or Expanded
slug: treeview-resize-after-item-expand-collapse
position: 
tags: RadTreeView, Xamarin, Xamarin.Forms, TreeView, Height, Expand, Collapse
ticketid: 1442742
res_type: kb
---

## Environment
<table>
	<tbody>
		<tr>
			<td>Product Version</td>
			<td>2019.3.1023.1</td>
		</tr>
		<tr>
			<td>Product</td>
			<td>TreeView for Xamarin</td>
		</tr>
	</tbody>
</table>


## Description

The RadTreeView doesn't automatically resize itself every time an item is expanded or collapsed. 

## Solution

You can solve this by asking Xamarin.Forms to resize the TreeView by calling **InvalidateMeasureNonVirtual** after an item is expanded or collapsed.

### Step 1

Subscribe to the RadTreeView's `ItemExpanded` and `ItemCollapsed` events

_XAML_

```xml
<telerikDataControls:RadTreeView x:Name="MyTreeView"
                                 ItemExpanded="TreeView_OnItemExpanded"
                                 ItemCollapsed="TreeView_OnItemCollapsed"
                                 VerticalOptions="Start">
```

_Code-Behind_


```csharp
private void TreeView_OnItemExpanded(object sender, TreeViewItemEventArgs e)
{
}

private void TreeView_OnItemCollapsed(object sender, TreeViewItemEventArgs e)
{
}
```

### Step 2

Invoke **InvalidateMeasureNonVirtual** with the `InvalidationTrigger.MeasureChanged` argument on the RadTreeView.

```csharp
private void TreeView_OnItemExpanded(object sender, TreeViewItemEventArgs e)
{
    MyTreeView.InvalidateMeasureNonVirtual(InvalidationTrigger.MeasureChanged);
}

private void TreeView_OnItemCollapsed(object sender, TreeViewItemEventArgs e)
{
    MyTreeView.InvalidateMeasureNonVirtual(InvalidationTrigger.MeasureChanged);
}
```
