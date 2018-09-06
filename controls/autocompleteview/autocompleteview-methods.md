---
title: Methods
page_title: Methods
position: 7
slug: autocompleteview-methods
---

# Methods

**RadAutoCompleteView** exposes the ability to explicitly show/hide the popup containing the filtered items through the following methods:

* **ShowSuggesstions**
* **HideSuggestions**

## Example

The example below uses **ShowSuggesstions** method to display the filtered items as soon as the AutoCompleteView receives the focus. 

Use the following code to attach the focused event to the control:

<snippet id='autocompleteview-focused'/>

and call the ShowSuggestions method inside the event:

<snippet id='autocompleteview-showsuggestions'/>

Here is the result:

![AutoCompleteView ShowSuggestions](images/autocompleteview-showsuggestions.png "AutoCompleteView ShowSuggestions")

# See Also

- [Key Features]({% slug autocompleteview-key-features%})
- [Tokens Support]({% slug autocompleteview-tokens-support%})
- [Styling Options]({% slug autocompleteview-styling-options%})
