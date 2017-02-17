---
title: Data Binding
page_title: Data Binding
position: 0
slug: autocomplete-data-binding
---

# Data Binding

For all cases where the business items are not simple strings data-binding is necessary in order to correctly visualize information. The **RadAutoComplete** component supports data binding in the form of path properties.

- **TextSearchPath** (string): Gets or sets the name of the property the search function will be executed against.
- **ImagePath** (string): Gets or sets the name of the property holding a path to an image. This property is optional.

>The **TextSearchPath** property is required in data-binding scenarios.

The RadAutoComplete component provides a default template for suggestion items that cannot be modified. You can use a [custom template]({% slug autocomplete-suggestion-item-template %}) if you need to customize the suggestion items.

## Example

Here is a simple view model that will be used as data source for the RadAutoComplete suggestions.

<snippet id='autocomplete-features-data-binding-viewmodel'/>

Here is how to setup the RadAutoComplete:

<snippet id='autocomplete-features-data-binding'/>

Where:

<snippet id='xmlns-telerikinput'/>

# See Also

- [AutoComplete Getting Started]({% slug autocomplete-getting-started%})
- [SuggestionItemTemplate]({% slug autocomplete-suggestion-item-template %})