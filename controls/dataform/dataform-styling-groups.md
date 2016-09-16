---
title: Groups Styling
page_title: Groups Styling
slug: dataform-styling-groups
position: 7
---

# Groups Styling

The RadDataForm group headers can be styled with the GroupHeaderStyle property.
 
**DataFormGroupHeaderStyle** class exposes the following properties: 

- **Background** (Color): Gets or sets the background of the group header.
- **BackgroundImageSource** (ImageSource): Gets or sets a background image for the group header.
- **Foreground** (Color): Gets or sets the group header text color.
- **Height** (double): Gets or sets the group header height.
- **IsCollapsible** (bool): Gets or sets a value that indicates whether the group will be collapsible.
- **Padding** (Thickness): Gets or sets the group header content padding.
- **TextAlignment** (TextAlignment): Gets or sets the group header text alignment.

## Example

Here is an example that demonstrates how the data form group headers can be styled.

<snippet id='dataform-styling-groups-xaml'/>
<snippet id='dataform-styling-groups-csharp'/>

Don't forget to add the following namespaces:

<snippet id='xmlns-telerikdataform'/>
<snippet id='ns-telerikdataform'/>

Here is the source item class:

<snippet id='dataform-styling-groups-dataitem'/>

![](images/)