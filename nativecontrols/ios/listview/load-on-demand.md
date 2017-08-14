---
title: Load-on-demand
page_title: ListView Load-on-demand
position: 11
---

# ListView: Load-on-demand

There are certain scenarios typically with remote data over the wire where data needs to be loaded continuously on small portions. TKListView can load data on demand.

## Enabling the load-on-demand  ##

To enable the load on demand feature, you shoud set the <code>loadOnDemandMode</code> property to one of the two supported modes <code>TKListViewLoadOnDemandModeAuto</code> or <code>TKListViewLoadOnDemandModeManual</code>.

<snippet id='listview-load-on-demand'/>

<snippet id='listview-load-on-demand-swift'/>

```C#
listView.LoadOnDemandMode = TKListViewLoadOnDemandMode.Manual;
```

When using the auto mode the <code>loadOnDemandBufferSize</code> property defines the number of cells from the bottom of the list view up at which to start requesting data. 

<snippet id='listview-buffer'/>

<snippet id='listview-buffer-swift'/>

```C#
listView.LoadOnDemandBufferSize = 5;
```

After setting the desired <code>loadOnDemandMode</code> you should implement the <code>TKListViewDelgate</code> method <code>listView:shouldLoadMoreDataAtIndexPath:</code> to determine if more data should be loaded. After the data is loaded you should notify the ListView by calling its <code>didLoadDataOnDemand</code> method:

<snippet id='listview-should-load'/>

<snippet id='listview-should-load-swift'/>

```C#
class ListViewDelegate: TKListViewDelegate
{
    ListViewLoadOnDemand owner;

    public ListViewDelegate(ListViewLoadOnDemand owner)
    {
        this.owner = owner;
    }

    public override bool ShouldLoadMoreDataAtIndexPath (TKListView listView, NSIndexPath indexPath)
    {
        DispatchQueue.DefaultGlobalQueue.DispatchAsync (() => {
            this.owner.lastRetrievedDataIndex = Math.Min(this.owner.names.Items.Length, this.owner.lastRetrievedDataIndex + 10);
            DispatchQueue.MainQueue.DispatchAfter(new DispatchTime(DispatchTime.Now, 2 * 400000000), new Action(delegate {
                if (this.owner.names.Items.Length == this.owner.lastRetrievedDataIndex) {
                    listView.LoadOnDemandMode = TKListViewLoadOnDemandMode.None;
                }
                listView.DidLoadDataOnDemand();                
            }));
        });

        return true;
    }
}
```

When using manual mode, TKListView appends a special cell at the end of the list. Touching this cell starts the process of loading more data. In this scenario you should process listView:cellForItemAtIndexPath: method of TKListViewDataSource and check whether this is a "load on demand cell":

<snippet id='listview-load-on-demand-deque'/>

<snippet id='listview-load-on-demand-deque-swift'/>

```C#
public override TKListViewCell CellForItem (TKListView listView, NSIndexPath indexPath)
{
    TKListViewCell cell = listView.DequeueLoadOnDemandCell (indexPath);

    if (cell == null) {
        cell = listView.DequeueReusableCell ("cell", indexPath) as TKListViewCell;
        cell.ImageView.Image = UIImage.FromBundle (this.owner.photos.Items [indexPath.Row] as NSString);
        cell.TextLabel.Text = this.owner.names.Items [indexPath.Row] as NSString;
        Random r = new Random ();
        cell.DetailTextLabel.Text = this.owner.loremIpsum.RandomString (10 + r.Next (0, 16), indexPath);
        cell.DetailTextLabel.TextColor = UIColor.White;
    }

    cell.BackgroundView.BackgroundColor = UIColor.FromWhiteAlpha (0.3f, 0.5f);
    ((TKView)cell.BackgroundView).Stroke = null;

    return cell;
}
```