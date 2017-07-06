---
title: Cell Swipe Gesture
page_title: ListView cell swipe gesture
position: 9
---

# ListView: Cell Swipe Gesture


The swipe gesture feature allows end-users to use swipe gesture on cells. When the user swipes, the content view moves revealing a designated swipe background view where you can place custom views ready for interaction e.g. buttons images etc.

<img src="../images/listview-cell-swipe001.png" />

## Enabling cell swipe gesture ##

Use the <code>allowsCellSwipe</code> property to allow the user to perform swipe gesture on cells.

<snippet id='listview-swipe'/>

<snippet id='listview-swipe-swift'/>

```C#
this.listView.AllowsCellSwipe = true;
```

## Configuring cell swipe gesture ##

Use the <code>cellSwipeLimits</code>  property to set how far the cell may be swiped.

<snippet id='listview-swipe-limits'/>

<snippet id='listview-swipe-limits-swift'/>

```C#
this.listView.CellSwipeLimits = new UIEdgeInsets (0, 60, 0, 180);
```

Use the <code>cellSwipeTreshold</code> property to set the minimum distance the user needs to swipe before the gesture is considered effective. If the user swipes below the treshold, the cell will auto-revert to its original state.

<snippet id='listview-swipe-treshold'/>

<snippet id='listview-swipe-treshold-swift'/>

```C#
this.listView.CellSwipeTreshold = 30;
```

Use the <code>cellSwipeAnimationDuration</code> property to set the cell swipe animation duration 

Add the content that should be visible when swipe is applied to the backgroundView of TKListViewCell:

<snippet id='listview-swipe-view'/>

<snippet id='listview-swipe-view-swift'/>

```C#
if (cell.SwipeBackgroundView.Subviews.Length == 0) {
    CGSize size = cell.Frame.Size;
    UIFont font = UIFont.SystemFontOfSize(14);
    UIButton bMore = new UIButton(new CGRect(size.Width - 180, 0, 60, size.Height));
    bMore.SetTitle("More", UIControlState.Normal);
    bMore.BackgroundColor = UIColor.LightGray;
    bMore.TitleLabel.Font = font;
    bMore.AddTarget(ButtonTouched, UIControlEvent.TouchUpInside);
    cell.SwipeBackgroundView.AddSubview(bMore);

    UIButton bFlag = new UIButton(new CGRect(size.Width - 120, 0, 60, size.Height));
    bFlag.SetTitle("Flag", UIControlState.Normal);
    bFlag.BackgroundColor = UIColor.Orange;
    bFlag.TitleLabel.Font = font;
    bFlag.AddTarget(ButtonTouched, UIControlEvent.TouchUpInside);
    cell.SwipeBackgroundView.AddSubview(bFlag);

    UIButton bTrash = new UIButton(new CGRect(size.Width - 60, 0, 60, size.Height));
    bTrash.SetTitle("Trash", UIControlState.Normal);
    bTrash.BackgroundColor = UIColor.Red;
    bTrash.TitleLabel.Font = font;
    bTrash.AddTarget(ButtonTouched, UIControlEvent.TouchUpInside);
    cell.SwipeBackgroundView.AddSubview(bTrash);

    UIButton bUnread = new UIButton(new CGRect(0, 0, 60, size.Height));
    bUnread.SetTitle("Mark as Unread", UIControlState.Normal);
    bUnread.BackgroundColor = UIColor.Blue;
    bUnread.TitleLabel.Font = font;
    bUnread.TitleLabel.LineBreakMode = UILineBreakMode.WordWrap;
    bUnread.TitleLabel.TextAlignment = UITextAlignment.Center;
    bUnread.AddTarget(ButtonTouched, UIControlEvent.TouchUpInside);
    cell.SwipeBackgroundView.AddSubview(bUnread);
}
```

## Responding to swipe interactions##
In order to respond programmatically to a swipe gesture performed by user, you will need to implement one or more of the following methods from the TKListViewDelegate protocol.
- listView:shouldSwipeCell:atIndexPath:
- listView:didSwipeCell:atIndexPath:withOffset:
- listView:didFinishSwipeCell:atIndexPath:withOffset:

<snippet id='listview-delegate'/>

<snippet id='listview-delegate-swift'/>

```C#
class ListViewDelegate: TKListViewDelegate 
{
    ListViewSwipe owner;

    public ListViewDelegate(ListViewSwipe owner) 
    {
        this.owner = owner;
    }

    public override void DidSwipeCell (TKListView listView, TKListViewCell cell, NSIndexPath indexPath, CGPoint offset)
    {
        this.owner.AnimateButtonInCell (cell, offset);
    }

    public override void DidFinishSwipeCell (TKListView listView, TKListViewCell cell, NSIndexPath indexPath, CGPoint offset)
    {
        Console.WriteLine ("Did swipe cell at index: {0}", indexPath.Row);
    }
}
```