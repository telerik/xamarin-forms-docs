---
title: Layouts
page_title: RadTabView Layouts | Telerik UI for Xamarin.Android Documentation
description: This article shows how to modify the layout of the tabs in the tab strip.
slug: tabview-layouts
tags: radtabview, layout, tabs
position: 3
publish: true
---

# Layouts

RadTabView Beta provides two layouts out of the box. These are **TabStripOverflowLayout** and **TabStripScrollLayout**.
The default layout is the scroll layout. The tab view layouts share a common base class called **TabStripLayoutBase** which in turn implements the **TabStripLayout** interface.

## TabStripScrollLayout

TabStripScrollLayout arranges tabs in a scroll view. If the maximum number of visible tabs is exceeded, the user can scroll to see the remaining tabs.
Using TabStripScrollLayout is as easy as creating an instance:

```Java
this.tabView.getTabStrip().setTabStripLayout(new TabStripScrollLayout());
```

## TabStripOverflowLayout

TabStripOverflowLayout puts tabs in a popup after the number of tabs exceeds max tabs. The popup is closed when a tab from the popup is selected or
when the user taps outside the popup. To use TabStripOverflowLayout simply create an instance:

```Java
this.tabView.getTabStrip().setTabStripLayout(new TabStripOverflowLayout());
```

## Max visible tabs

All layouts have a **maxVisibleTabs** property. It determines how many tabs will be shown on screen. If there are more tabs they will be
shown in a scroll view for TabStripScrollLayout or in a popup for TabStripOverflowLayout;

```Java
tabView.getTabStrip().getLayout().setMaxVisibleTabs(5);
```