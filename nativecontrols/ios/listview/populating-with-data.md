---
title: Populating with data
page_title: ListView populating with data
position: 3
---

# ListView: Populating with data

There are two ways to feed TKListView data you need to display. You can do that by implementing several methods from the TKListViewDataSource protocol or you could let the TLKDataSource component do the dirty work for you. 

## Populating with data using TKDataSource ##
TKDataSource contains implementation of the TKListViewDataSource protocol that you may use out-of-the box. In addition TLKDataSource provides handy data shaping capabilities such as sorting and filtering.

The following example shows how to initialise TKDataSource with data and feed that data to TKListView.

```C#
public class ListViewBasicSetup : XamarinExampleViewController
{
    NSMutableArray simpleArrayOfStrings;
    TLKDataSource dataSource = new TLKDataSource();

    public ListViewBasicSetup ()
    {
    }

    public override void ViewDidLoad()
    {
        base.ViewDidLoad();
        simpleArrayOfStrings = new NSMutableArray();
        simpleArrayOfStrings.Add (new NSString ("Kristina Wolfe"));
        simpleArrayOfStrings.Add (new NSString ("Freda Curtis"));
        simpleArrayOfStrings.Add (new NSString ("Eva Lawson"));
        simpleArrayOfStrings.Add (new NSString ("Emmett Santos"));
        simpleArrayOfStrings.Add (new NSString ("Theresa Bryan"));
        simpleArrayOfStrings.Add (new NSString ("Jenny Fuller"));
        simpleArrayOfStrings.Add (new NSString ("Terrell Norris"));
        simpleArrayOfStrings.Add (new NSString ("Eric Wheeler"));
        simpleArrayOfStrings.Add (new NSString ("Julius Clayton"));
        simpleArrayOfStrings.Add (new NSString ("Harry Douglas"));
        simpleArrayOfStrings.Add (new NSString ("Eduardo Thomas"));
        simpleArrayOfStrings.Add (new NSString ("Orlando Mathis"));
        simpleArrayOfStrings.Add (new NSString ("Alfredo Thornton"));


        dataSource.ItemSource = simpleArrayOfStrings;

        TKListView listView = new TKListView ();
        listView.Frame = new CGRect (0, 0, this.View.Bounds.Size.Width,this.View.Bounds.Size.Height-20);
        listView.AutoresizingMask = UIViewAutoresizing.FlexibleWidth | UIViewAutoresizing.FlexibleHeight;
        listView.WeakDataSource = dataSource;
        this.View.AddSubview(listView);

        listView.AllowsMultipleSelection = true;

        listView.AllowsCellReorder = true;
    }
            
}
```

## Populating with data using TKListViewDataSource protocol##

Alternatively TKListView may be populated with data by manually implementing several methods from the TKListViewDataSource protocol. This way requires a bit more code but gives more flexibility.
First we need to set the datasource property of TKListView to a class adopting the TKListViewDatasource protocol. In the sample code bellow it is our view controller.

```C#
public class ListViewDocsSetupDataSource : XamarinExampleViewController
{
    public NSArray sampleArrayOfStrings;

    public ListViewDocsSetupDataSource ()
    {
    }

    public override void ViewDidLoad ()
    {
        base.ViewDidLoad ();
        this.sampleArrayOfStrings = NSArray.FromStrings (new String [] { 
            "Kristina Wolfe",
            "Freda Curtis",
            "Jeffery Francis",
            "Eva Lawson",
            "Emmett Santos",
            "Theresa Bryan",
            "Jenny Fuller",
            "Terrell Norris",
            "Eric Wheeler",
            "Julius Clayton",
            "Alfredo Thornton",
            "Roberto Romero",
            "Orlando Mathis",
            "Eduardo Thomas",
            "Harry Douglas"
        });

        TKListView listView = new TKListView (this.View.Bounds);
        listView.RegisterClassForCell (new Class (typeof(TKListViewCell)), "cell");
        listView.DataSource = new ListViewDataSource (this);

        this.View.AddSubview (listView);

    }

    class ListViewDataSource: TKListViewDataSource
    {
        ListViewDocsSetupDataSource owner;

        public ListViewDataSource(ListViewDocsSetupDataSource owner)
        {
            this.owner = owner;
        }

        public override int NumberOfItemsInSection (TKListView listView, int section)    {
            return (int)this.owner.sampleArrayOfStrings.Count;
        }

        public override int NumberOfSectionsInListView (TKListView listView)
        {
            return 1;
        }

        public override TKListViewCell CellForItem (TKListView listView, NSIndexPath indexPath)
        {
            TKListViewCell cell = listView.DequeueReusableCell ("cell", indexPath) as TKListViewCell;
            cell.TextLabel.Text = this.owner.sampleArrayOfStrings.GetItem<NSString> ((uint)indexPath.Row);
            return cell;
        }
    }
}
```