---
title: Events
page_title: Events
position: 6
slug: autocompleteview-events
---

# Events

**RadAutoCompleteView** component exposes the following events:

* **TextChanged**: Occurs when the text is changed. The TextChanged event handler receives a TextChangedEventArgs argument containing data related to this event. The TextChangedEventArgs provides the following properties:
	* NewTextValue*(string)*: which gets the new text value.
	* OldTextValue*(string)*: that gets the old text value.
	
>important You can find a working demo labeled **Remote Search** in the AutoCompleteView/Features folder of the [SDK Samples Browser application]({%slug developer-focused-examples%}).

* **SuggestionItemSelected**: Occurs when an item is selected from the SuggestionsView. The **SuggestionItemSelected** event handler receives two parameters:
	* The sender argument which is of type object, but can be cast to the **RadAutoCompleteView** type.
	* An **SuggestionItemSelectedEventArgs** object which has a reference to the selected item through its **DataItem** property.

* **FilteredItemsChanged**: Ooccurs when the FilteredItems collection is updated. The **FilteredItemsChanged** event handler receives two parameters:
	* The sender argument which is of type object, but can be cast to the **RadAutoCompleteView** type.
	* An **FilteredItemsChangedEventArgs** object which has a reference to filtered items collection its **FilteredItems** property.



# See Also

- [Key Features]({% slug autocompleteview-key-features %})
- [Tokens Support]({% slug autocompleteview-tokens-support %})
- [Styling Options]({%slug autocompleteview-styling-options%})
