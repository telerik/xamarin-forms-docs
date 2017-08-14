---
title: Data Shaping Operations
page_title: DataSource Data Shaping Operations
position: 4
---

# DataSource: Data Shaping Operations

<code>TKDataSource</code> supports a full range of data shaping operations with APIs specific for your scenario. 

The simplest way to shape your data is to use the block API. Just specify the block function responsible for the data operation:

<snippet id='datasource-data-shaping'/>

<snippet id='datasource-data-shaping-swift'/>

```C#
// filter all values less or equal to 5
dataSource.Filter ((NSObject item) => {
    return ((NSNumber)item).NIntValue > 5;
});

// sort ascending
dataSource.Sort ((NSObject obj1, NSObject obj2) => {
    nint a = ((NSNumber)obj1).NIntValue;
    nint b = ((NSNumber)obj2).NIntValue;
    if (a<b) return NSComparisonResult.Descending; 
    else if (a>b) return NSComparisonResult.Ascending;
    return NSComparisonResult.Same;
});

// group odd/even values
dataSource.Group ((NSObject item) => {
    return NSObject.FromObject(((NSNumber)item).NIntValue % 2 == 0);
});

// multiply every value * 10
dataSource.Map ((NSObject item) => {
    return NSObject.FromObject(((NSNumber)item).NIntValue * 10);
});

// find the max value
NSObject maxValue = dataSource.Reduce (NSObject.FromObject(0), (NSObject item, NSObject value) => {
    if (((NSNumber)item).NIntValue > ((NSNumber)value).NIntValue) 
        return item;
    return value;
});
```

<code>TKDataSource</code> supports also <code>NSPredicate</code> style queries. The following methods use queries and property names instead of block methods:

<snippet id='datasource-predicate-style'/>

<snippet id='datasource-predicate-style-swift'/>

```C#
public class DataSourceDocsQueries : XamarinExampleViewController
{
    TKDataSource dataSource;

    public DataSourceDocsQueries ()
    {
    }

    public override void ViewDidLoad ()
    {
        base.ViewDidLoad ();

        NSMutableArray items = new NSMutableArray();
        items.Add (new DSItem () { Name = "John", Value = 50, Group = "A" });
        items.Add (new DSItem () { Name = "Abby", Value = 33, Group = "A" });
        items.Add (new DSItem () { Name = "Smith", Value = 42, Group = "B" });
        items.Add (new DSItem () { Name = "Peter", Value = 28, Group = "B" });
        items.Add (new DSItem () { Name = "Paula", Value = 25, Group = "B" });

        this.dataSource = new TKDataSource ();
        this.dataSource.ItemSource = items;
        this.dataSource.DisplayKey = "Name";

        this.dataSource.FilterWithQuery ("Value > 30");
        this.dataSource.SortWithKey ("Value", true);
        this.dataSource.GroupWithKey ("Group");


        UITableView tableView = new UITableView (this.View.Bounds);
        tableView.DataSource = this.dataSource;
        this.View.AddSubview (tableView);
    }
}
```

All the methods mentioned above execute immediately when called. They operate directly on the current <code>items</code> view in <code>TKDataSource</code>. <code>TKDataSource</code> extends its API by supporting three collections with sorting, filtering and group descriptors. 

The descriptors API supports both code blocks and queries with property names. This allows for specifying the data shaping operations before loading the data. In this scenario all descriptors are applied after the data is actually loaded in <code>TKDataSource</code>. This data-loading operation can happen on setting the <code>itemSource</code> property. The following code demonstrates this API:

<snippet id='datasource-descriptor'/>

<snippet id='datasource-descriptor-swift'/>

```C#
public class DataSourceDescriptorsAPI: XamarinExampleViewController
{
    TKDataSource dataSource;

    public override void ViewDidLoad ()
    {
        base.ViewDidLoad ();

        dataSource = new TKDataSource ();

        dataSource.AddFilterDescriptor (new TKDataSourceFilterDescriptor ("NOT (Name like 'John')"));
        dataSource.AddSortDescriptor (new TKDataSourceSortDescriptor ("Name", true));
        dataSource.AddGroupDescriptor (new TKDataSourceGroupDescriptor ("Group"));

        var array = new NSMutableArray ();
        array.Add (new DSItem () { Name = "John", Value = 22.0f, Group = "one" });
        array.Add (new DSItem () { Name = "Peter", Value = 15.0f, Group = "one" });
        array.Add (new DSItem () { Name = "Abby", Value = 47.0f, Group = "one" });
        array.Add (new DSItem () { Name = "Robert", Value = 45.0f, Group = "two" });
        array.Add (new DSItem () { Name = "Alan", Value = 17.0f, Group = "two" });
        array.Add (new DSItem () { Name = "Saly", Value = 33.0f, Group = "two" });

        dataSource.DisplayKey = "Name";
        dataSource.ValueKey = "Value";
        dataSource.ItemSource = array;

        dataSource.FormatText ((NSObject item, TKDataSourceGroup group) => {
            DSItem dsItem = (DSItem)item;
            return new NSString(string.Format("{0} has {1} points", dsItem.Name, dsItem.Value));
        });

        var tableView = new UITableView (this.View.Bounds);
        tableView.DataSource = dataSource;
        this.View.AddSubview (tableView);
    }
}
```

You can modify descriptor collections by using the corresponding add and remove methods. You can reaplly all descriptors when data has changed by calling the <code>reloadData</code> method.