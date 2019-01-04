---
title: Header and Footer
page_title: Header and Footer
position: 7
slug: listview-features-header-footer
---

# Header and Footer

With R1 2019 Official Release RadListView exposes two new scrollable templates - **Header** and **Footer**:

* **HeaderTemplate**(DataTemplate): Defines the Header of the ListView before all items.
* **FooterTemplate**(DataTemplate): Defines the Footer of the ListView after all items.

## Example

Here is an example how add Header and Footer to the RadListView control.

First, create a ViewModel:

<snippet id='listview-features-header-and-footer-viewmodel'/>

Use the following snippet to declare the RadListView in XAML:

<snippet id='listview-features-header-and-footer-xaml'/>

Set the HeaderTemplate as a static resource from type HeaderTemplate:

<snippet id='listview-features-header-template-xaml'/>

Set the FooterTemplate as a static resource from type FooterTemplate:

<snippet id='listview-features-footer-template-xaml'/>

ListView Header:

![RadListView Footer Template](images/listview-features-header-template.png "[RadListView Footer Template")

ListView Footer:

![RadListView Footer Template](images/listview-features-footer-template.png "[RadListView Footer Template")

>important A sample Header and Footer example can be found in the ListView/Features folder of the [SDK Samples Browser application]({%slug developer-focused-examples%}).

## See Also

- [Events]({%slug listview-features-events%})
- [Selection]({%slug listview-features-selection%})
- [Reordering]({%slug listview-features-reorder-items%})
