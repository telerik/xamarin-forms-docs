---
title: Events
page_title: Xamarin ComboBox Documentation | Events
description: Check our &quot;Evenys&quot; documentation article for Telerik ComboBox for Xamarin control.
position: 7
slug: combobox-events
---

# Events

ComboBox for Xamarin exposes the following events:

- **SelectionChanged** event is raised when item is selected. The SelectionChanged event handler receives two parameters:
	- The `sender` which is the RadComboBox control.
	- ComboBoxSelectionChangedEventArgs provides the following properties:
		- `AddedItems`: the items added to the SelectedItemsCollection
		- `RemovedItems`: the items removed from the SelectedItemsCollection

- **Completed**: Invoked when the completed button of the keyboard gets pressed. In UWP it is invoked when entered gets pressed. 

## See Also

- [Key Features]({%slug combobox-key-features%})
- [Header and Footer]({%slug combobox-header-footer%})
- [Searching]({%slug combobox-searching%})
- [Single and Multiple Selection]({%slug combobox-selection%})
- [Styling]({%slug combobox-styling%})
- [Commands]({%slug combobox-commands%})
