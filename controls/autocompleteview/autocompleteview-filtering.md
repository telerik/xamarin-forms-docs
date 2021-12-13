---
title: Filtering
page_title: Xamarin AutoCompleteView Documentation | Filtering
description: Check our &quot;Filtering&quot; documentation article for Telerik AutoCompleteView for Xamarin control.
position: 9
slug: autocompleteview-filtering
---

# Filtering

The RadAutoCompleteView control allows users to define custom filtering logic through the following property:

* **Filter** *(IAutoCompleteFilter)*: Defines the function that will be used to filter items. 

The IAutoCompleteFilter interface contains a **Filter** *(bool)* function  that is called by RadAutoCompleteView control in order to filter items. The Filter function provides the following properties:

* **item**: The item to be checked.
* **searchText**: The current text in the RadAutoCompleteView control.
* **completionMode**: The current CompletionMode of RadAutoCompleteView.

The function returns true when the item is added into RadAutoCompleteView FilteredItems collection, otherwise it returns false and the item won't be added into RadAutoCompleteView FilteredItems collection.

>The RadAutoCompleteView **TextSearchPath** property is required in custom filtering scenarios.

## FilteredItems collection

**FilteredItems** bindable property allows you to access the collection containing the search results of the AutoCompleteView. The property can be used in scenarios where the search results are visualized at a different place or inside another container.

## Example

Here is an example how the RadAutoCompleteView Custom Filtering works when searching in two properties:

First, create the needed business objects, for example type Person with the following properties:

<snippet id='autocompleteview-filtering-businessobject'/>

Then create a CustomFilterViewModel with a collection of Person objects:

<snippet id='autocompleteview-filering-viewmodel'/>

After, create a class for example CustomAutoCompleteViewFilter that implements the IAutoCompleteFilter interface:

<snippet id='autocompleteview-filtering-class'/>

Finally, use the following snippet to declare a RadAutoCompleteView in XAML:

<snippet id='autocompleteview-features-customfiltering'/>

Where the **telerikInput** namespace is the following:

<snippet id='xmlns-telerikinput'/>

Here is the result:

![AutoCompleteView Filtering](images/autocompleteview-filtering.png "AutoCompleteView Filtering")

>important A sample Custom Filtering example can be found in the AutoCompleteView/Features folder of the [SDK Samples Browser application]({%slug developer-focused-examples%}).

## Handling Punctuation

By default, the .NET `string.Contains` method will take all punctuation into consideration. If you find punctuation to be hindering your user experience, you can use a custom filter that removes the punctuation before the strings are compared. 

For example, if the source string is `Main Street, 101` and the user searches `Main Street 101`, string.Contains will return false and the result will not appear in the FilteredItems view. The custom filter below removes the commas before the string is used with the Contains method.

```
public class CustomAutoCompleteViewFilter : IAutoCompleteFilter
{
    public bool Filter(object item, string searchText, CompletionMode completionMode)
    {
        var googleSearchResult = (string)item;

        // Remove commas from the source value before comparing with the search term
        var googleSearchResultNoCommas = googleSearchResult.Replace(",", "");

        var normalizedPlace = googleSearchResultNoCommas.ToLowerInvariant();
        var normalizedSearchText = searchText.ToLowerInvariant();
        
        return normalizedPlace.Contains(normalizedSearchText);
    }
}
```

## See Also

- [Remote Search]({% slug autocompleteview-remote-search%})
- [Events]({% slug autocompleteview-events%})
- [Methods]({% slug autocompleteview-methods%})
