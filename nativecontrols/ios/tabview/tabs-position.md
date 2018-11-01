---
title: Tabs Position
page_title: TKTabview Tabs Position
position: 4
slug: tabview-tabs-position
published: False
---

TKTabView's layouts can position its tabs on the four edges of the view's bounds: top, left, right and bottom. To set the tabs position simply set the
<code>tabsPosition</code> property:

```Java
this.tabView.setTabsPosition(TabsPosition.TOP);
```

Furthermore if the <code>tabWidth</code> property is set, and the total width of the available tabs is less than the available screen area, developers can set <code>tabAlignment</code>. The alignment
can be left, right, top, bottom, center and stretch. For example:

```Java
this.tabView.getTabStrip().setTabsAlignment(TabsAlignment.CENTER);
```
