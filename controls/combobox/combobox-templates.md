---
title: Templates
page_title: Xamarin ComboBox Documentation | Templates
description: Check our &quot;Styling&quot; documentation article for Telerik ComboBox for Xamarin control.
position: 9
slug: combobox-templates
---

# Templates

If the default templates of the control do not suit your needs, you can easily define custom ones. The available templates for customizing are:

* **ItemTemplate**(*DataTemplate*): Defines the template of the items that are visualized in the drop-down list.

> When the selection mode is single and the control is not editable if there is ItemTemplate set the same template will be visualized in the box part of the control when item is selected.

* **SelectedItemTemplate**(*DataTemplate*): Defines the template of the selected items that are visualized in the drop-down list.
* **TokenTemplate**(*DataTemplate*):  Defines the template of the tokens that are visualized when multiple selection is performed.
* **ShowMoreTemplate**(*DataTemplate*): Defines the Template of the show more UI that gets visualized when the control is not focused and there is not enough space for all Tokens to be visualized when the selection mode is multiple.

## Example with ItemTemplate and SelectedItemTemplate

Here is the ComboBox definition in XAML:

<snippet id='combobox-item-selecteditem-templates'/>

you need to add the following namespace:

<snippet id='xmlns-telerikinput'/>

the sample business model

<snippet id='combobox-store-businessmodel'/>

and the ViewModel used:

<snippet id='combobox-searching-mode-viewmodel'/>

The final result: 

![ComboBox Item and selectedItem Templates](images/combobox-item-selecteditem-templates.png)

>important The Item and SelectedItem Template example can be found in our [SDK Browser Application]({%slug developer-focused-examples%}). You can find the applications in the **Examples** folder of your local **Telerik UI for Xamarin** installation or in the following [GitHub repo](https://github.com/telerik/xamarin-forms-sdk).

## Example with TokenTemplate and ShowMoreTemplate

Here is the ComboBox definition in XAML:

<snippet id='combobox-tokentemplate'/>

add the following namespace:

<snippet id='xmlns-telerikinput'/>

the sample business model

<snippet id='combobox-city-businessmodel'/>

and the ViewModel used:

<snippet id='comobobox-editing-viewmodel'/>

> when the default TokenTemplate is overriden, you will need to implement custom logic for removing the tokens from the ComboBox:

here is a sample logic removing the token when adding TapGestureRecognizer to the Label:

<snippet id='remove-the-selecteditem'/>

Here is the how the Token and ShowMore Templates look:

![ComboBox Token and Show More Templates](images/combobox-token-showmore-templates.png)

>important The Token and ShowMore Template example can be found in our [SDK Browser Application]({%slug developer-focused-examples%}). You can find the applications in the **Examples** folder of your local **Telerik UI for Xamarin** installation or in the following [GitHub repo](https://github.com/telerik/xamarin-forms-sdk).

## Default Templates

Default ItemTemplate and SelectedItemTemplate of RadComboBox provide highlighting of the matching text while searching - this is implemented through a small auxiliary control in the templates, named **RadHighlightLabel**. RadHighlightLabel exposes <code>UnformattedText</code> property that should be set to the complete text shown in the label and <code>HighlightText</code> that should be set to the highlighted part of that text.

The example below shows the default ItemTemplate and SelectedItemTemplate with the RadHighlightLabel properly setup to highlight the search text coming from the RadComboBox input field.

First, add the required DataTemplates inside the Resources of your page:

<snippet id='combobox-default-templates-resources' />

Add the required namespace:

```C#
xmlns:telerikPrimitives="clr-namespace:Telerik.XamarinForms.Primitives;assembly=Telerik.XamarinForms.Primitives"
xmlns:telerikInput="clr-namespace:Telerik.XamarinForms.Input;assembly=Telerik.XamarinForms.Input"
```

And here is the RadComboBox definition with the defined templates referenced:

<snippet id='combobox-default-templates-xaml' />

Check the result in the screenshot below:

![](images/combobox-default-templates.png)

## See Also

- [Key Features]({%slug combobox-key-features%})
- [Header and Footer]({%slug combobox-header-footer%})
- [Searching]({%slug combobox-searching%})
- [Single and Multiple Selection]({%slug combobox-selection%})
- [Styling]({%slug combobox-styling%})
