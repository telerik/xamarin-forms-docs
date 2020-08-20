---
title: CheckBox Elements
page_title: Xamarin TreeView Documentation | CheckBox Elements
description: Check our &quot;CheckBox Elements&quot; documentation article for Telerik TreeView for Xamarin control.
position: 3
slug: treeview-checkboxes-support
---

# CheckBox elements #

RadTreeView supports showing **CheckBox** elements and checking specific items from its **ItemsSource**. The checked items are added to the **CheckedItems** property of the control. You can also control the Visibility of the **CheckBox** elements as well as their state propagation.
 
## CheckBox State Propagation

You can control the state propagation by setting the CheckBoxMode property of the RadTreeView. The **CheckBoxModes** enum consists of the following values:

* **None**: The CheckBox would not be present.
* **Individual**: The CheckBox state will affect only the individual item.
* **Propagate**: The CheckBox state of the children items will affect the parent item. In case all items within a parent nodes are checked - it will be with checked state as well. If all items are not checked, the parent item will not be checked. If only some of the children items are checked, the parent item will be shown with an indeterminate state. 

>note When adding items to the items source of the TreeView, the checked state will propagate according to the parent item.

Here is an example of how you can set the property:

<snippet id='treeview-checkboxes-xaml' />

Here is a picture that show the different states of the CheckBox:

![checkbox states](images/checkboxes_treeview.png)

## Programmatic Check and Uncheck

The RadTreeView exposes two methods to programmatically check or uncheck an item. 

* **CheckItem(object item)**: Adds an item to CheckedItems collection
* **UncheckItem(object item)**: Removes an item from the CheckedItems collection

<snippet id='treeview-check-uncheck-item' />
  
## CheckedItems collection

The control exposes a collection of all the checked items. **CheckedItems** is a read-only collection of type *Telerik.XamarinForms.DataControls.TreeView.CheckedItemsCollection*, so you can add/remove items to it only through the TreeView CheckItem and UncheckItem methods. To keep track of the checked items subscribe to its CollectionChanged event:

<snippet id='treeview-checkeditems-collection' />

And here is the CollectionChanged event handler:

<snippet id='treeview-checkeditems-collectionchanged' />

## CheckBoxes Visibility

The CheckBox visibility can be controlled through the **CheckBoxMode** property. Setting it to "None" would remove the appearance of these elements. Here is the appearance of the **control** when the **CheckBoxMode** is set to **None**:

![hidden checkboxes](images/nocheckboxes_treeview.png)

>important You can check a runnable demo in the **Features** section of the **RadTreeView** component in the **SDK Samples Browser application**(can be found in the Examples folder of your local *Telerik UI for Xamarin* installation)

## See Also

* [Commands]({%slug treeview-commands%})
* [Expand/Collapse]({%slug treeview-expand-collapse-api%})
* [Theming]({%slug treeview-theming%})
