---
title: Selection
page_title: TKSideDrawer Selection
slug: ios-sidedrawer-selection
position: 5
---

# TKSideDrawer for Xamarin.iOS: Selection

Handling item selection in <code>TKSideDrawer</code> is as simple as adopting <code>TKSideDrawerDelegate</code> and implementing its <code>DidSelectItem</code> method. Use the passed <code>NSIndexPath</code> to determine which item was selected and take the appropriate action:

```C#
public override void DidSelectItem (TKSideDrawer sideDrawer, NSIndexPath indexPath)
{
    Console.WriteLine ("Selected item in section: {0} at index: {1}", indexPath.Section, indexPath.Row);
}
```
