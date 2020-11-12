---
title: Layouts
page_title: ListView Layouts
position: 6
---

# ListView for Xamarin.iOS: Layouts

TKListView provides the same layout mechanism as UICollectionView. There are three additionally implemented layouts and you can also create your own by inheriting from UICollectionViewLayout class. However, all list view features will be available only when using a layout which inherits from TKListViewLinearLayout.

By default TKListView uses `TKListViewLinearLayout` but you can easily change that with the layout property. The layouts that are implemented are:

- Linear - the default layout which orders items in a simple list.
- Grid - lays out items in a grid.
- Staggered - lays out items in a staggered grid formation.

> Each of these layouts can layout items in either horizontal or vertical direction.

## Linear layout

In linear layout cells are distributed in a simple list horizontally or vertically depending on the selected scroll direction.

<img src="../images/listview-layouts001.png"/>

```C#
TKListViewLinearLayout layout = new TKListViewLinearLayout ();
layout.ItemSize = new CGSize(200, 200);
layout.HeaderReferenceSize = new CGSize(100, 30);
layout.ItemSpacing = 1;
layout.ScrollDirection = this.scrollDirection;
this.listView.Layout = layout;
this.SetSelectedOption (1, 1);
```

Cells can be aligned (left, right, center, stretch) by setting the itemAlignment property:

```C#
layout.ItemAlignment = TKListViewItemAlignment.Center;
```

## Grid layout

The grid layout allows for distributing cells in a fixed number of columns/rows. The grid layout inherits from TKListViewLinearLayout, therefore all properties of TKListViewLinearLayout are also available in TKListViewGridLayout.

<img src="../images/listview-layouts002.png"/>

```C#
TKListViewGridLayout layout = new TKListViewGridLayout ();
layout.ItemSize = new CGSize(200, 100);
layout.HeaderReferenceSize = new CGSize(100, 30);
layout.SpanCount = 2;
layout.ItemSpacing = 1;
layout.LineSpacing = 1;
layout.ScrollDirection = this.scrollDirection;
this.listView.Layout = layout;
```

## Staggered layout

The staggered layout lays out items in a staggered grid formation. It supports horizontal & vertical layout as well as an ability to align cells. It inherits from TKListViewGridLayout. 

<img src="../images/listview-layouts003.png"/>

Staggered layout lays its items based on their size. The item size is determined by using the `SizeForItem` method of `TKListViewLinearLayoutDelegate` protocol:

```C#
public override CGSize SizeForItem (TKListView listView, TKListViewLinearLayout layout, NSIndexPath indexPath)
{
    if (layout.ScrollDirection == TKListViewScrollDirection.Vertical) {
        return new CGSize(100, sizes[indexPath.Row]);
    }
    else {
        return new CGSize(sizes[indexPath.Row], 100);
    }
}
```

Staggered grids are likely to have gaps at the edges of the layout. To avoid these gaps, set the `AlignLastLine` property to `true`.

```C#
TKListViewStaggeredLayout layout = new TKListViewStaggeredLayout ();
layout.Delegate = this.staggeredLayoutDelegate;
layout.ItemSize = new CGSize(200, 100);
layout.HeaderReferenceSize = new CGSize(100, 30);
layout.SpanCount = 2;
layout.ItemSpacing = 1;
layout.LineSpacing = 1;
layout.ScrollDirection = this.scrollDirection;
layout.AlignLastLine = true;
this.listView.Layout = layout;
```

> LiatView Layout example can be found in our [Native Xamarin.iOS examples]({%slug sdk-browser-overview%}#native-only-examples).
