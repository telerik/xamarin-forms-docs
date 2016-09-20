---
title: Groups Styling
page_title: Groups Styling
slug: dataform-styling-groups
position: 1
---

# Groups Styling


The RadDataForm group headers appearance can be customized with the **GroupHeaderStyle** property of type DataFormGroupHeaderStyle.

The **DataFormGroupHeaderStyle** class exposes the following properties:  

- **Background** (Color): Gets or sets the background of the group header.
- **BackgroundImageSource** (ImageSource): Gets or sets a background image for the group header.
- **Foreground** (Color): Gets or sets the group header text color.
- **Height** (double): Gets or sets the group header height.
- **IsCollapsible** (bool): Gets or sets a value that indicates whether the group will be collapsible.
- **Padding** (Thickness): Gets or sets the group header content padding.
- **TextAlignment** (TextAlignment): Gets or sets the group header text alignment.

## Example

Here is an example that demonstrates how to style the data form group headers.

<snippet id='dataform-styling-groups-xaml'/>
<snippet id='dataform-styling-groups-csharp'/>

Don't forget to add the following namespaces:

<snippet id='xmlns-telerikdataform'/>
<snippet id='ns-telerikdataform'/>

Here is the source item class:

<snippet id='dataform-styling-groups-dataitem'/>

![](images/dataform-styling-groups.png)