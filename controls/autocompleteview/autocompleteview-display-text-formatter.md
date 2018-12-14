---
title: DisplayText Formatter
page_title: DisplayText Formatter
position: 6
slug: autocompleteview-display-text-formatter
---

# DisplayText Formatter

With AutoCompleteView provides an option for formatting the visualized text. The format of the text could be formatted when AutoCompleteView DisplayMode is Plain or Token:

* **DisplayTextFormatter**(IDisplayTextFormatter): Defines the formatter of the selected item.

## Example

### DisplayText Formatter with DisplayMode Plain

Here is an example how the RadAutoCompleteView DisplayText Formatter works on Plain text:

First, create the needed business objects, for example type Client with the following properties:

<snippet id='autocompleteview-features-businessobject'/>

Then create a ViewModel with a collection of Client objects:

<snippet id='autocompleteview-features-viewmodel'/>

After that create a class for example MyBusinessObjectFormatter that inherist from IDisplayTextFormatter:

<snippet id='autocompleteview-features-text-formatter-plain-class'/>

Finally, use the following snippet to declare a RadAutoCompleteView in XAML:

<snippet id='autocompleteview-features-textformatter-plain'/>

Where the **telerikInput** namespace is the following:

<snippet id='xmlns-telerikinput'/>

### DisplayText Formatter with DisplayMode Token

Here is an example how the RadAutoCompleteView DisplayText Formatter works on Tokens:

First, create the needed business objects, for example type Client with the following properties:

<snippet id='autocompleteview-features-businessobject'/>

Then create a ViewModel with a collection of Client objects:

<snippet id='autocompleteview-features-viewmodel'/>

After that create a class for example MyObjectFormatter that inherist from IDisplayTextFormatter:

<snippet id='autocompleteview-features-text-formatter-tokens-class'/>

Finally, use the following snippet to declare a RadAutoCompleteView in XAML:

<snippet id='autocompleteview-features-textformatter-tokens'/>

Where the **telerikInput** namespace is the following:

<snippet id='xmlns-telerikinput'/>

Here is how the DisplayText Formatter looks when DisplayMode is Plain and Token:

![AutoCompleteView DisplayText Formatter](images/autocompleteview-features-display-text-formatter.png "AutoCompleteView DisplayText Formatter")

>important A sample DisplayText Formatter example can be found in the AutoCompleteView/Features folder of the [SDK Samples Browser application]({%slug developer-focused-examples%}).

## See Also

- [Data Binding]({% slug autocompleteview-data-binding %})
- [Events]({% slug autocompleteview-events%})
- [Methods]({% slug autocompleteview-methods%})
