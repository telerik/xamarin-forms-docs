---
title: Suggest Mode
page_title: Suggest Mode
position: 3
slug: autocompleteview-suggest-mode
---

# Suggest Mode

**RadAutoCompleteView** exposes three different modes for providing suggestions:

* Suggest
* Append
* SuggestAppend

In order to choose any of those modes you should set the **SuggestMode** property of the control. The default SuggestMode is "Suggest". 

## Example

Here is an example how the RadAutoCompleteView Suggest Mode functionality works:

First, create the needed business objects, for example type Client with the following properties:

<snippet id='autocompleteview-features-businessobject'/>

Then create a ViewModel with a collection of Client objects:

<snippet id='autocompleteview-features-viewmodel'/>

For example **SuggestMode="Suggest"** property can be declared through XAML using the following snippet:

<snippet id='autocompleteview-suggestmode-suggest'/>

Here is the result when SuggestMOde is set to Suggest:

![AutoCompleteView Suggest](images/autocompleteview-suggest-mode-suggest.png "AutoCompleteView Suggest")

For **SuggestMode="Append"**:

<snippet id='autocompleteview-suggestmode-append'/>

And the final result:

![AutoCompleteView Append](images/autocompleteview-suggest-mode-append.png "AutoCompleteView Append")

And finaly **SuggestMode="SuggestAppend"** is declared as follow:

<snippet id='autocompleteview-suggestmode-suggest-append'/>

Here is the result:

![AutoCompleteView SuggestAppend](images/autocompleteview-suggest-mode-suggestappend.png "AutoCompleteView SuggestAppend")

>important A sample Suggest Mode example can be found in the AutoCompleteView/Features folder of the [SDK Samples Browser application]({%slug developer-focused-examples%}).

# See Also

- [Tokens Support]({% slug autocompleteview-tokens-support%})
- [SuggestionItemTemplate]({% slug autocompleteview-suggestion-item-template%})
- [Remote Search]({% slug autocompleteview-remote-search%})
