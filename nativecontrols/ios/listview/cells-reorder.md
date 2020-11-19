---
title: Reordering
page_title: ListView Reordering Cells
slug: ios-listview-reordering
position: 8
---

# ListView for Xamarin.iOS: Reordering Cells

TKListView supports reordering cells. When reordering is enabled a drag handle appears in each cell. Using this handle cells can be dragged thus changing the order of items.

<img src="../images/listview-reorder001.png"/>

## Enable cell reorder

Use the <code>AllowsCellReorder</code> property to enable user to reorder cells. When reordering is allowed cells will display a draggable reorder handle as a visual hint.

```C#
this.listView.AllowsCellReorder = true;
```

## Responding to cell reorder interaction

After the user performs a reorder gesture the following delegate method from the TKListViewDelegate will be called - `DidReorderItemFromIndexPath`

This is the place where you get information about which item was reordered and from what position and to what position. There you need to reorder your source data. 

```C#
class ListViewDelegate: TKListViewDelegate
{
	ListViewReorder owner;

	public ListViewDelegate(ListViewReorder owner) 
	{
		this.owner = owner;
	}

	public override void WillReorderItemAtIndexPath (TKListView listView, NSIndexPath indexPath)
	{
		TKListViewCell cell = listView.CellForItem(indexPath);
		cell.BackgroundView.BackgroundColor = UIColor.Yellow;
	}

	public override void DidReorderItemFromIndexPath (TKListView listView, NSIndexPath originalIndexPath, NSIndexPath targetIndexPath)
	{
		TKListViewCell cell = listView.CellForItem(originalIndexPath);
		cell.BackgroundView.BackgroundColor = UIColor.White;
		this.owner.dataSource.DidReorderItemFromTo (listView, originalIndexPath, targetIndexPath);
	}
}
```

In case you are using TLKDataSource you may set it as a delegate for TKListView. With such a setup you will not need to reorder your data manually. TLKDataSource will handle that for you.

```C#
TKListView listView = new TKListView();
TLKDataSource dataSource = new TLKDataSource();
this.listView.WeakDataSource = this.dataSource;
this.dataSource.AllowItemsReorder = true;
```

> A sample ListView Reorder example can be found in our [Native Xamarin.iOS examples]({%slug developer-focused-examples%}#native-only-examples).
