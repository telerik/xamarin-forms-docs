---
title: Selection
page_title: Selection
position: 4
slug: datagrid-selection-overview
---

# Selection #

Within a **RadDataGrid** control, a selection can be made by a click/tap on a cell/row, which raises the **SelectionChanged** event.

>note You can listen to the CollectionChanged event of the SelectedItem directly.

You can unselect by a click/tap on the already selected cell/row.

## Important Properties

RadDataGrid supports different selection modes that can be modified by the following properties. First, you can choose the Unit that you will be allowed to select and then the Selection Mode:

* **SelectionUnit** property (type of DataGridSelectionUnit):
 * **Row**: The unit to select is a grid row(by default).
 * **Cell**: The unit to select is a cell within a grid row.
 
>note To define a Cell when using a selection you can use the DataGridCellInfo class, that holds all the information about it. To define a Row when using a selection you can use your data object.

* **SelectionMode** property (type of DataGridSelectionMode):
  * **Single**: Single unit may be selected(by default).
  * **Multiple**: Multiple units may be selected.
  * **None**: No selection is allowed.
  
Once you make a selection, you can get or modify a collection with the selected Items by using:

* **SelectedItems** property (type of ObservableCollection): Gets or Modifies an ObservableCollection of the currently selected Items(their type depends on the applied SelectionUnit, that is, DataGridCellInfo for Cell and Data Item for Row).

## Methods

Additional functionalities for programmatic selecting and deselecting items are exposed by this component as methods. They also depend on the applied **SelectionUnit**.

* **SelectItem**(object item): Selects the specified data item and adds it in the SelectedItems collection.
* **DeselectItem**(object item): Removes the selection for the specified data item and removes it from the SelectedItems collection.
* **SelectCell**(DataGridCellInfo item): Selects the grid cell as defined by the specified cell info.
* **DeselectCell**(DataGridCellInfo item): Removes the selection for the grid cell defined by the specified cell info.
* **SelectAll**(): Selects all the items as defined by the SelectionMode and SelectionUnit property.
* **DeselectAll**(): Clears the current selected items as defined by the SelectionUnit property.

## See Also

* [DataGrid Sorting]({%slug datagrid-sorting-overview%})
* [DataGrid Commands]({%slug datagrid-commands-overview%})