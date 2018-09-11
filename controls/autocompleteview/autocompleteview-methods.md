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

First, create the needed business objects, for example type Client with the following properties:

<snippet id='autocompleteview-features-businessobject'/>

Then create a ViewModel with a collection of Client objects:

<snippet id='autocompleteview-features-viewmodel'/>

Declare the RadAutoCompleteView in XAML:

<snippet id='autocompleteview-features-data-binding'/>

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
