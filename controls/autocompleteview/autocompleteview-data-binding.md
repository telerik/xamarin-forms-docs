---
title: Data Binding
page_title: Data Binding
description: Check our &quot;Data Binding&quot; documentation article for Telerik AutoCompleteView for Xamarin control.
position: 5
slug: autocompleteview-data-binding
---

# Data Binding

For all cases where the business items are not simple strings data-binding is necessary in order to correctly visualize information. The **RadAutoCompleteView** component supports data binding in the form of path properties.

- **TextSearchPath** (string): Defines the name of the property the search function will be executed against.
- **ImagePath** (string): Defines the name of the property holding a path to an image. This property is optional.

>The **TextSearchPath** property is required in data-binding scenarios.

The RadAutoCompleteView component provides a default template for suggestion items that cannot be modified. You can use a [custom template]({%slug autocompleteview-suggestion-item-template %}) if you need to customize the suggestion items.

## Example

Here is an example how the RadAutoCompleteView Data Binding works:

First, create the needed business objects, for example type Client with the following properties:

<snippet id='autocompleteview-features-businessobject'/>

Then create a ViewModel with a collection of Client objects:

<snippet id='autocompleteview-features-viewmodel'/>

Finally, use the following snippet to declare a RadAutoCompleteView in XAML:

<snippet id='autocompleteview-features-data-binding'/>

Where the **telerikInput** namespace is the following:

<snippet id='xmlns-telerikinput'/>

>important A sample Data Binding example can be found in the AutoCompleteView/Features folder of the [SDK Samples Browser application]({%slug developer-focused-examples%}).

# See Also

- [Tokens Support]({% slug autocompleteview-tokens-support%})
- [SuggestionItemTemplate]({% slug autocompleteview-suggestion-item-template%})