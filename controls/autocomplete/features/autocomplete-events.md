---
title: Events
page_title: Events
description: Check our &quot;Events&quot; documentation article for Telerik AutoComplete for Xamarin control.
position: 4
slug: autocomplete-events
---

>caution RadAutoComplete control has been replaced with RadAutoCompleteView and will be removed from the suite soon. You can read about the differences between both components and how to migrate to the new RadAutoCompleteView in the kb article here: [Replace AutoComplete with AutoCompleteView]({%slug replace-autocomplete-with-autocompleteview%})

# Events

**RadAutoComplete** component exposes the following events:

* __SuggestionItemSelected__ - occurs when an item is selected from the SuggestionsView. The __SuggestionItemSelected__ event handler receives two parameters:
	* The sender argument which is of type object, but can be cast to the __RadAutoComplete__ type.
	* An __SuggestionItemSelectedEventArgs__ object which has a reference to the selected item through its **DataItem** property.

* __FilteredItemsChanged__ - occurs when the FilteredItems collection is updated. The __FilteredItemsChanged__ event handler receives two parameters:
	* The sender argument which is of type object, but can be cast to the __RadAutoComplete__ type.
	* An __FilteredItemsChangedEventArgs__ object which has a reference to filtered items collection its **FilteredItems** property.


## Example

Add the telerikInput namespace:

```XML
xmlns:telerikInput="clr-namespace:Telerik.XamarinForms.Input;assembly=Telerik.XamarinForms.Input"
```

Add a RadAutoComplete with the event handlers:

```XML
<telerikInput:RadAutoComplete x:Name="radAutoComplete" 
                              FilteredItemsChanged="RadAutoComplete_OnFilteredItemsChanged" 
                              SuggestionItemSelected="RadAutoComplete_OnSuggestionItemSelected" />
```

In code-behind, assign an ItemsSource and define the event handlers:

```C#
public partial class MainPage : ContentPage
{
    public MainPage()
    {
        InitializeComponent();
        
        radAutoComplete.ItemsSource = new ObservableCollection<string>
        {
            "Apple",
            "Pear",
            "Cherry"
        };
    }

    private void RadAutoComplete_OnFilteredItemsChanged(object sender, FilteredItemsChangedEventArgs e)
    {
        // Since the ItemsSource is of type ObservableCollection<string>, FilteredItems will be as well.
        var filteredFruits = e.FilteredItems as ObservableCollection<string>;
    }

    private void RadAutoComplete_OnSuggestionItemSelected(object sender, SuggestionItemSelectedEventArgs e)
    {
        // The DataItem is an item from the FilteredItems collection. In this example, it's of type string.
        var selectedFruit = e.DataItem as string;
    }
}
```

# See Also

- [AutoComplete Getting Started]({% slug autocomplete-getting-started%})
- [SuggestionItemTemplate]({% slug autocomplete-suggestion-item-template %})
