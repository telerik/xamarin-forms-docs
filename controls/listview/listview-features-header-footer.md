---
title: Header and Footer
page_title: Xamarin ListView Documentation | Header and Footer
description: Check our &quot;Header and Footer&quot; documentation article for Telerik ListView for Xamarin control.
position: 7
slug: listview-features-header-footer
---

# Header and Footer

With R1 2019 release of Telerik UI for Xamarin RadListView exposes two new templates - **Header** and **Footer**, which will allow you to add content of your choice above and below the list with the items. Both header and footer templates are scrolled along with the ListView items. 

* **HeaderTemplate**(DataTemplate): Defines the Header of the ListView before all items.
* **FooterTemplate**(DataTemplate): Defines the Footer of the ListView after all items.

## Example

Here is an example how to add Header and Footer to the RadListView control.

First, create a ViewModel:

<snippet id='listview-features-header-and-footer-viewmodel'/>

Add the following sample DataTemplates to the resources of the page that will be used as:

**HeaderTemplate**:

<snippet id='listview-features-header-template-xaml'/>

**FooterTemplate**:

<snippet id='listview-features-footer-template-xaml'/>

Use the following snippet to declare the RadListView in XAML:

<snippet id='listview-features-header-and-footer-xaml'/>

Here is how the ListView Header looks:

![RadListView Footer Template](images/listview-features-header-template.png "[RadListView Footer Template")

and the ListView Footer:

![RadListView Footer Template](images/listview-features-footer-template.png "[RadListView Footer Template")

>important A sample Header and Footer example can be found in our [SDK Samples Browser application]({%slug developer-focused-examples%}) and [QSF App]({%slug developer-focused-examples%}).

## See Also

- [Events]({%slug listview-features-events%})
- [Selection]({%slug listview-features-selection%})
- [Reordering]({%slug listview-features-reorder-items%})
