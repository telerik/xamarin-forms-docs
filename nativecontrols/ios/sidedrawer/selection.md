---
title: Selection
page_title: TKSideDrawer Selection
position: 5
---

# TKSideDrawer: Selection

Handling item selection in <code>TKSideDrawer</code> is as simple as adopting <code>TKSideDrawerDelegate</code> and implementing its <code>sideDrawer:didSelectItemAtIndexPath:</code> method. Use the passed <code>NSIndexPath</code> to determine which item was selected and take the appropriate action:

<snippet id='drawer-did-select'/>

<snippet id='drawer-did-select-swift'/>

```C#
public override void DidSelectItem (TKSideDrawer sideDrawer, NSIndexPath indexPath)
{
    Console.WriteLine ("Selected item in section: {0} at index: {1}", indexPath.Section, indexPath.Row);
}
```
