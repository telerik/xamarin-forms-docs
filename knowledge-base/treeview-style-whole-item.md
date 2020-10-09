---
title: Expand Collapse TreeView item when tapping on the indicator
description: How to style the whole treeview item, with the child nodes
type: how-to
page_title: Expand Collapse TreeView item when tapping on the indicator
slug: treeview-style-whole-item-when
position: 
tags: treeview, expand, collapse, indicator, item, treeviewitem, style, expanded, item, child, node
ticketid: 1488828
res_type: kb
---

## Environment
<table>
	<tbody>
		<tr>
			<td>Product Version</td>
			<td></td>
		</tr>
		<tr>
			<td>Product</td>
			<td>TreeView for Xamarin</td>
		</tr>
	</tbody>
</table>


## Description

The purpose of this help article is to show you how to style the treeview item when tapping on it.


## Solution

The solution is using the TreeView ItemExpand and ItemCollapsed events, iterating over all the children of a node and set the color for the childe node and expanded item.

Here is the implementation:

### RadTreeView definition

```XAML
<ContentPage.Resources>
    <treeView:LevelToMarginConverter x:Key="levelToMarginConverter" />
</ContentPage.Resources>
<Grid>
    <telerikDataControls:RadTreeView  x:Name="treeView"
                                ItemsSource="{Binding Source}"                                  
                                ItemCollapsed="TreeView_OnItemCollapsed" 
                                ItemExpanded="TreeView_OnItemExpanded"
                                NativeControlLoaded="TreeView_OnNativeControlLoaded">
        <telerikDataControls:TreeViewDescriptor DisplayMemberPath="Name"
                                        ItemsSourcePath="Cities"
                                        TargetType="{x:Type local:Country}">
            <telerikDataControls:TreeViewDescriptor.ItemTemplate>
                <DataTemplate>
                    <Grid  BackgroundColor="{Binding Item.HighlightColor}">
                        <Grid Margin="{Binding Path=Level, Converter={StaticResource levelToMarginConverter}}"
                                HeightRequest="40">
                            <Grid.ColumnDefinitions>
                                <ColumnDefinition Width="10"/>
                                <ColumnDefinition  />
                            </Grid.ColumnDefinitions>
                            <treeView:ExpandCollapseIndicator FontSize="Medium"
                                                                WidthRequest="10"
                                                                VerticalTextAlignment="Center"
                                                                IsLoading="{Binding Path=IsLoading}"
                                                                IsLoadOnDemandEnabled="{Binding Path=IsLoadOnDemandEnabled}"
                                                                IsExpanded="{Binding Path=IsExpanded}"
                                                                IsLeaf="{Binding Path=IsLeaf}">
                            </treeView:ExpandCollapseIndicator>

                            <treeView:ItemText Grid.Column="1"
                                                VerticalOptions="Center"
                                                Text="{Binding Item.Name}" />
                        </Grid>
                    </Grid>
                </DataTemplate>
            </telerikDataControls:TreeViewDescriptor.ItemTemplate>
        </telerikDataControls:TreeViewDescriptor>
        <telerikDataControls:TreeViewDescriptor DisplayMemberPath="Name" 
                                        TargetType="{x:Type local:City}">
            <telerikDataControls:TreeViewDescriptor.ItemTemplate>
                <DataTemplate>
                    <Grid BackgroundColor="{Binding Item.HighlightColor}">
                        <Grid Margin="{Binding Path=Level, Converter={StaticResource levelToMarginConverter}}" HeightRequest="40">
                            <treeView:ItemText Margin="8,0,0,0"
                                                VerticalOptions="Center"
                                                Text="{Binding Item.Name}" />
                        </Grid>
                    </Grid>
                </DataTemplate>
            </telerikDataControls:TreeViewDescriptor.ItemTemplate>
        </telerikDataControls:TreeViewDescriptor>
    </telerikDataControls:RadTreeView>
</Grid>

```

You will need to add the following namespaces

```
xmlns:telerikDataControls="clr-namespace:Telerik.XamarinForms.DataControls;assembly=Telerik.XamarinForms.DataControls" 
xmlns:treeView="clr-namespace:Telerik.XamarinForms.DataControls.TreeView;assembly=Telerik.XamarinForms.DataControls"        
```

The native control loaded event:

```C#
private async void TreeView_OnNativeControlLoaded(object sender, EventArgs e)
{
    await Task.Delay(300);

    treeView.CollapseAll();

    isTreeViewReady = true;
}
```

### ItemCollapsed and ItemExpanded events implementation:

```C#
private void TreeView_OnItemExpanded(object sender, TreeViewItemEventArgs e)
{
    if (!isTreeViewReady)
        return;

    if (e.Item is HighlightableTreeViewItemBase item)
    {
        item.HighlightColor = Color.Yellow;

        // NOTE: You will need a recursive helper if this goes any deeper than Country -> City
        if (item is Country country)
        {
            foreach (var child in country.Cities)
            {
                child.HighlightColor = Color.Yellow;
            }
        }
    }
}

private void TreeView_OnItemCollapsed(object sender, TreeViewItemEventArgs e)
{
    if (!isTreeViewReady)
        return;

    if (e.Item is HighlightableTreeViewItemBase item)
    {
        item.HighlightColor = Color.Transparent;

        // NOTE: You will need a recursive helper if this goes any deeper than Country -> City
        if (item is Country country)
        {
            foreach (var child in country.Cities)
            {
                child.HighlightColor = Color.Transparent;
            }
        }
    }
}
```

### The ViewModel

```C#
public class ViewModel
{
    public ObservableCollection<Country> Source { get; set; }

    public ViewModel()
    {
        this.Source = new ObservableCollection<Country>
        {
            new Country
            {
                Name = "Italy",
                HighlightColor = Color.Transparent,
                Cities = new ObservableCollection<City> {new City {Name = "Rome", HighlightColor = Color.Transparent}, new City {Name = "Milano", HighlightColor = Color.Transparent}}
            },
            new Country
            {
                Name = "Germany",
                HighlightColor = Color.Transparent,
                Cities = new ObservableCollection<City> {new City {Name = "Berlin", HighlightColor = Color.Transparent}, new City {Name = "Frankfurt", HighlightColor = Color.Transparent}}
            },
            new Country
            {
                Name = "India", HighlightColor = Color.Transparent,
                Cities = new ObservableCollection<City> {new City {Name = "Mumbai", HighlightColor = Color.Transparent}}
            },
            new Country
            {
                Name = "Argentina", HighlightColor = Color.Transparent, Cities = new ObservableCollection<City> {new City {Name = "Buenos Aires", HighlightColor = Color.Transparent}}
            },
            new Country
            {
                Name = "USA",
                HighlightColor = Color.Transparent,
                Cities = new ObservableCollection<City>
                {
                    new City {Name = "Miami", HighlightColor = Color.Transparent},
                    new City {Name = "New York", HighlightColor = Color.Transparent},
                    new City {Name = "Los Angeles", HighlightColor = Color.Transparent}
                }
            }
        };
    }
}
```

### The Business Model Used:

```C#
public class HighlightableTreeViewItemBase : NotifyPropertyChangedBase
{
    private Color highlightColor;
    public Color HighlightColor
    {
        get => highlightColor;
        set => UpdateValue(ref highlightColor, value);
    }
}

public class Country : HighlightableTreeViewItemBase
{
    public string Name { get; set; }
    public ObservableCollection<City> Cities { get; set; }
}

public class City : HighlightableTreeViewItemBase
{
    public string Name { get; set; }
}
```