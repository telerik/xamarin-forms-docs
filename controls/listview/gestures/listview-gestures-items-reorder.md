---
title: Reorder Items
page_title: Xamarin ListView Documentation | Reorder Items
description: Check our &quot;Reorder Items&quot; documentation article for Telerik ListView for Xamarin control.
position: 
slug: listview-features-reorder-items
---

# Reorder Items

The items reorder feature allows end-users reorder the list view data items. If the feature is enabled, when the user holds on an item, the reorder mode is triggered and the user can move and release the item at the desired position. This will perform reorder operation on the data.

Reorder functionality can be enabled by setting the **IsItemsReorderEnabled** property to `true`.

## Example

This example will demonstrate how to enable the items reorder functionality and style the list view items.

Here is the definition of the list view in Xaml:

<snippet id='listview-gestures-reorderitems-listview'/>

Where:

<snippet id='xmlns-teleriklistview'/>

We will set the source in the code behind of the page:

<snippet id='listview-gestures-reorderitems-code'/>

Here is the result:

![](images/listview-gestures-reorder.png)

>You could also take advantage of the [Reorder Events]({% slug listview-features-events %}#groupreorder-events) for additional control over the reorder functionality of RadListView.

## See Also

- [ListView Cell Types]({% slug listview-cells %})
- [ListView Layouts]({% slug listview-features-layouts %})
- [Cell Swipe]({% slug listview-features-cell-swipe %})
- [Pull to Refresh]({% slug listview-features-pull-to-refresh %})
