---
title: Selection
page_title: Selection
position: 0
slug: listview-features-selection
---

# Selection

The **RadListView** component exposes selection feature. It allows users to select one or many items out of the ItemsSource of the control. This feature provides both visual and programmatic feedback for the actions of the user. The following members are related to the selection: 

- **SelectionGesture** (*SelectionGesture*): Gets or sets the gesture triggering the selection.
	- Tap
	- Hold
- **SelectionMode** (*SelectionMode*): Gets or sets the mode of the selection.
	- None - This mode doesn't allow users to select an item.
	- Single - This is the default selection mode. It allows users to select only one item.
	- Multiple - This mode allows users to select more than one item. To enable it the **SelectionMode** property should be set to **SelectionMode.Multiple**.
	
- **SelectedItems** (*ObservableCollection&lt;object&gt;*): Gets or sets the currently selected items.
- **SelectedItem** (*object*): Gets the last selected item.
- **SelectionChanged**: An event that is triggered whenever the SelectedItems collection is changed.


## Example

Here is the definition of the ListView control:

<snippet id='listview-features-selection-xaml'>

and lets create a simple data for the ListView component and a method called InitializePickers in which we can add the modes and gestures we want to use:
<snippet id='listview-features-selection-csharp'>


We can control the behavior of the RadListView's selection when changing the selection of the Pickers. The methods that are related with the Picker functionality are **OnSelectionGestureChanged** and **OnSelectionModeChanged**. We use them to change the SelectionGesture/SelectionMode of the RadListView.

Here is an example how those methods can be implemented:

<snippet id='listview-features-onselectionchanged-csharp'>

## Single Selection

This is how the **RadListView** control will look like when the single selection mode is set.

![SingleSelection](images/listview-features-selection-single.png "Single Selection")


## Multiple Selection

Here is how the **RadListView** control will look like when the multiple selection mode is set.

![MultipleSelection](images/listview-features-selection-multiple.png "Multiple Selection")

>important **SDK Browser** application contains an example that shows Selection feature in RadListView cotrol. You can find the application in the **Examples** folder of your local **Telerik UI for Xamarin** installation.


