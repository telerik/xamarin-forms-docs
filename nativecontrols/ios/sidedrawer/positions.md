---
title: Appearance Positions
page_title: TKSideDrawer Appearance Positions
slug: ios-sidedrawer-positions
position: 3
---

# TKSideDrawer for Xamarin.iOS: Appearance Positions

<code>TKSideDrawer</code> can be shown from all four sides of the screen.

<img src="../images/sidedrawer-positions001.png"/>

In order to change the postion of <code>TKSideDrawer</code>, you should set its <code>Position</code> property of type `TKSideDrawerPosition`. The available options are: `Left`, `Right`, `Top` and `Bottom`.

> Default position is Left

```C#
sideDrawer.Position = TKSideDrawerPosition.Left;
```

> SideDrawer Positions example can be found in our [Native Xamarin.iOS examples]({%slug developer-focused-examples%}#native-only-examples).
