---
title: Customizations
page_title: TKSideDrawer Customizations
slug: ios-sidedrawer-customization
position: 4
---

# TKSideDrawer for Xamarin.iOS: Customizations 

<img src="../images/sidedrawer-customizations001.png"/>

<code>TKSideDrawer</code> allows customizing almost every aspect of its visual appearance. This article demonstrates some of the customization techniques that can be used with it.

The most useful settings for changing the visual appearance of <code>TKSideDrawer</code> are grouped in its <code>Style</code> property of type `TelerikUI.TKSideDrawerStyle`.

## Styling

Here are the SideDrawer styling options:

### Blur

- **BlurEffect**(*UIKit.UIBlurEffectStyle*)
- **BlurTintColor**(*UIKit.UIColor*)
- **BlurType**(*TelerikUI.TKSideDrawerBlurType*)

Note that the default transition set to <code>TKSideDrawer</code> is `SlideInOnTop` with blur enabled. If you prefer a solid color instead, you should set the <code>BlurType</code> property to <code>TKSideDrawerBlurType.None</code> before setting the desired <code>Fill</code>:

#### Example

```C#
sideDrawer.Fill = new TKSolidFill (UIColor.Gray);
sideDrawer.Style.BlurType = TKSideDrawerBlurType.None;
```

### Height

- **FooterHeight**(*nfloat*): Defines the height of the FooterView
- **HeaderHeight**(*nfloat*): Defines the height of the HeaderView
- **ItemHeight**(*nfloat*): Defienes the height of the item
- **SectionHeaderHeight**(*nfloat*): Defines the height of the header when it is selected.

#### Example

```C#
sideDrawer.Style.HeaderHeight = 44;
```

### Shadow

- **ShadowMode**(*TelerikUI.TKSideDrawerShadowMode*). Defins the mode of the shadow. There are three options: `None`, `HostView` and `SideDrawer`.
- **ShadowOffset**(*CGSize*)
- **ShadowOpacity**(*nfloat*)
- **ShadowRadius**(*nfloat*)

#### Example

```C#
sideDrawer.Style.ShadowMode = TKSideDrawerShadowMode.Hostview;
sideDrawer.Style.ShadowOffset = new CGSize (-2f, -0.5f);
sideDrawer.Style.ShadowRadius = 5;
```

There are cases when you may need to update the styles of specific TKSideDrawer items like the text color. Or, you may need to show a separator. This can be done by adopting the <code>TKSideDrawerDelegate</code> protocol and implementing its <code>sideDrawer:updateVisualsForItem:inSection:</code> method.

```C#
public override void UpdateVisualsForItem (TKSideDrawer sideDrawer, NSIndexPath indexPath)
{
    TKSideDrawerItem item = sideDrawer.Sections[indexPath.Section].Items[indexPath.Item];
    item.Style.ContentInsets = new UIEdgeInsets (0, -5, 0, 0);
    item.Style.SeparatorColor = new TKSolidFill (UIColor.Clear);
}
```

If needed you can easily update the visual styles of the sections. This is done by implementing <code>TKSideDrawerDelegate</code> method <code>UpdateVisualsForSection</code>:

```C#
public override void UpdateVisualsForSection (TKSideDrawer sideDrawer, int sectionIndex)
{
    TKSideDrawerSection section = sideDrawer.Sections[sectionIndex];
    section.Style.ContentInsets = new UIEdgeInsets (0, -15, 0, 0);
}
```

## Custom content

In some scenarios you may need to use custom views for <code>TKSideDrawer</code> header or footer. The <code>TKSideDrawer</code> properties <code>headerView</code> and <code>footerView</code> inherit from <code>UIView</code> allowing you to use the view that best suit your needs.

Setting the <code>Content</code> property of <code>TKSideDrawer</code> you can easily change the content of the side drawer. It also inherits from <code>UIView</code>. By default the content is <code>TKSideDrawerTableView</code>.

<img src= "../images/sidedrawer-customizations002.png"/>

> SideDrawer CustomContent example can be found in our [Native Xamarin.iOS examples]({%slug developer-focused-examples%}#native-only-examples).