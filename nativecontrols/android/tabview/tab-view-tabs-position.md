---
title: Tabs position
page_title: RadTabView Tabs Position | Telerik UI for Android Documentation
description: This article shows how to customize the location of the tab strip.
slug: tabview-tabs-position
tags: radtabview, init, tabs
position: 4
publish: true
---

# Tabs Position

RadTabView can position its tabs on its four edges: top, left, right and bottom. To set the tabs position simply set the
<code>TabsPosition</code> property:

```Java
this.tabView.setTabsPosition(TabsPosition.TOP);
```

Furthermore if the <code>TabWidth</code> property is set, and the total width of the available tabs is less than the available screen area, developers can set <code>TabAlignment</code>. The alignment
can be left, right, top, bottom, center and stretch. For example:

```Java
this.tabView.getTabStrip().setTabsAlignment(TabsAlignment.CENTER);
```