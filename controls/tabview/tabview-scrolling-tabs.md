---
title: Scrolling Tabs
page_title: Xamarin TabView Documentation | Key Features
description: Check our &quot;Scrolling Tabs&quot; documentation article for Telerik TabView for Xamarin control.
description: Key Features
slug: tabview-scrolling-tabs
tags: tabview, scrolling, headeritem, header, tabs
position: 2
---

# Scrolling Tabs

With R1 2021 Official release the **RadTabView** control allows you to scroll through the tabs inside the TabView Header.

* **IsHeaderScrollable**(*bool*): Specifies whether the header will allow scrolling. The default value is false. 

## Scrolling in the header using the TabView IsHeaderScrollable property and the default TabView Header

>important The IsHeaderScrollable is working when the default TabView Header is used.

### Example

Here is the TabView definition with default header and `IsHeaderScrollable` set to `True`:

<snippet id='tabview-features-isheaderscrollable-xaml'/>

This is the result:

![TabView Scrolling Tabs](images/tabview-scrolling-in-the-header.gif "TabView Scrolling in the header")

>important A sample TabView Header example can be found in the TabView/Features folder of the [SDK Samples Browser application]({%slug developer-focused-examples%}).

## Scrolling in the header with custom TabView Header

In order to customize the TabView Header you will need to use the RadTabView `Header` property of type `TabViewHeader` . If you want to apply scrolling in the custom header then you should use the `IsScrolling` property. 

>important `IsScrolling` property is a property of the `RadToolbarBase` class. The property can be applied to the TabViewHeader.

### Example:

Here is the TabView definition with custom header and `IsScrollable` set to `True`:

<snippet id='tabview-features-tabviewheader-xaml'/>

This is the result:

![TabView Scrolling Tabs](images/tabview-scrolling-in-the-custom-header.gif "TabView Scrolling in the custom header")

>important A sample TabView Header example can be found in the TabView/Features folder of the [SDK Samples Browser application]({%slug developer-focused-examples%}).

## See Also

- [TabViewItem]({%slug tabview-item%})
- [TabView HeaderItem]({%slug tabview-header-item%})
