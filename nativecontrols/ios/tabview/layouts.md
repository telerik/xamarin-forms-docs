---
title: Layouts
page_title: TKTabview Layouts
position: 3
slug: tabview-layouts
published: False
---

# Layouts

TKTabView provides two layouts out of the box. These are **TKTabOverflowLayout** and **TKTabScrollLayout**.
The default layout is the scroll layout. The tab view layouts share a common base class called **TKTabLayoutBase** which in turn implements the **TKTabLayout** protocol.

## TKTabScrollLayout

TKTabScrollLayout arranges tabs in a scroll view. If the maximum number of visible tabs is exceeded, the user can scroll to see the remaining tabs.
Using TKTabScrollLayout is as easy as creating an instance:

```Java
this.tabView.getTabStrip().setTabStripLayout(new TabStripScrollLayout());
```

## TKTabOverflowLayout

TKTabOverflowLayout puts tabs in a popup after the number of tabs exceeds max tabs. The popup is closed when a tab from the popup is selected or
when the user taps outside the popup. To use TKTabOverflowLayout simply create an instance:

```Java
this.tabView.getTabStrip().setTabStripLayout(new TabStripOverflowLayout());
```

## Max visible tabs

All layouts have a **maxVisibleTabs** property. It determines how many tabs will be shown on screen. If there are more tabs they will be
shown in a scroll view for TKTabScrollLayout or in a popup for TKTabOverflowLayout;

```Java
tabView.getTabStrip().getLayout().setMaxVisibleTabs(5);
```