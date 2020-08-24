---
title: Tabs position
page_title: RadTabView Tabs Position | Telerik UI for Xamarin.Android Documentation
description: This article shows how to customize the location of the tab strip.
slug: tabview-tabs-position
tags: radtabview, init, tabs
position: 4
publish: true
---

## TabView for Xamarin.Android: Tabs Position

RadTabView can position its tabs on its four edges: Top, Left, Right and Bottom. To set the tabs position simply set the <code>TabsPosition</code> property:

```C#
tabView.TabsPosition = TabsPosition.Top;
```

Furthermore if the <code>TabWidth</code> property is set, and the total width of the available tabs is less than the available screen area, developers can set <code>TabAlignment</code>. The alignment can be Left, Right, Top, Bottom, Center and Stretch. For example:

```C#
tabView.TabStrip.TabsAlignment = TabsAlignment.Center;
```

## Max visible tabs

The used inside the TabView TabStrip provides a **MaxVisibleTabs** property. It determines how many tabs will be shown on screen. If there are more tabs they will be shown in a scrollview;

```C#
tabView.TabStrip.Layout.MaxVisibleTabs = 5;
```