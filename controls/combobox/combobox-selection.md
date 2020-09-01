---
title: Selection
page_title: Xamarin ComboBox Documentation | Selection
description: Check our &quot;Selection&quot; documentation article for Telerik ComboBox for Xamarin control.
position: 6
slug: combobox-selection
---

# Selection

ComboBox for Xamarin enables the app users to quickly and easily select item/items fro a drop-down list. This topic will go through the provided by the ComboBox API related to item/items selection.

ComboBox control has a support for single and multiple selection. You can easily specify the required selection using the `SelectionMode` property.

## Main Properties

* **SelectionMode** (enumeration of type *Telerik.XamarinForms.Input.ComboBoxSelectionMode*): Defines whether the selection is single or multiple.
* **SelectedIndex** (*int*): Specifies the index of the first item in the current selection or -1 if the selection is empty.
* **SelectedItem** (*object*): Defines the first item in the current selection, or null if the selection is empty.
* **SelectedItems** (*readonly ObservableCollection<object>*): Gets the collection of currently Selected Items.
* **HighlightTextColor** (*Xamarin.Forms.Color*): Defines the color of the text that will be highlighted when searching is performed.

## Single Selection

The default **SelectinMode** (enumeration of type *Telerik.XamarinForms.Input.ComboBoxSelectionMode*) of the ComboBox control is **Single**.

### Example with Single Selection and SelectedIndex set

Here is the ComboBox definition in XAML:

<snippet id='combobox-single-selection'/>

the sample business model

<snippet id='combobox-city-businessmodel'/>

and the ViewModel used:

<snippet id='comobobox-selection-viewmodel'/> 

This is how single selection looks:

![ComboBox Single Selection](images/combobox-single-selection.png)

## Multiple Selection

If you want to achieve multiple selection you will need to set the `SelectionMode` to `Multiple`. The multiple selected items are visualized inside tokens.

### Example with Multiple Selection and SelectedItem set

Here is the ComboBox definition in XAML:

<snippet id='combobox-multiple-selection'/>

the sample business model

<snippet id='combobox-city-businessmodel'/>

and the ViewModel used:

<snippet id='comobobox-selection-viewmodel'/> 

This is how multiple selection looks: 

![ComboBox Multiple Selection](images/combobox-multiple-selection.png)

## Events

ComboBox exposes a SelectionChanged event which is raised when item is selected.

The SelectionChanged event handler receives two parameters:

- The `sender` which is the RadComboBox control.
- ComboBoxSelectionChangedEventArgs provides the following properties:
	- `AddedItems`: the items added to the SelectedItemsCollection
	- `RemovedItems`: the items removed from the SelectedItmesCollection

## Commands

ComboBox has two commands related to the Selection feature:

- **SelectAllCommand** (*ICommand*): Selects all items from the source.
- **ClearSelectionCommand** (*ICommand*): Sets the selection to null. If Multiple SelectionMode is used, this command will clear all selected items.

## See Also

- [Key Features]({%slug combobox-key-features%})
- [Data Binding]({%slug combobox-databinding%})
- [Editing]({%slug combobox-editing%})
- [Searching]({%slug combobox-searching%})
- [Templates]({%slug combobox-templates%})
