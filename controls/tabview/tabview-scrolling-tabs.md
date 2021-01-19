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

To enable the scrolling you would need to use the RadTabView `Header` property of type `TabViewHeader` - just set its `IsScrollable` property of type `bool` to **True**. 

### Example:

Here is the TabView definition with `Header` and `IsScrollable` set to `True`:

<snippet id='tabview-features-tabviewheader-xaml'/>

This is the result:

![TabView Scrolling Tabs](images/tabview-scrolling-in-the-custom-header.gif "TabView Scrolling in the custom header")

>important A sample TabView Header example can be found in the TabView/Features folder of the [SDK Samples Browser application]({%slug developer-focused-examples%}).

## See Also

- [TabViewItem]({%slug tabview-item%})
- [TabView HeaderItem]({%slug tabview-header-item%})
