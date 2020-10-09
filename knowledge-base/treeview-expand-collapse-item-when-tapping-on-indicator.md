---
title: Expand Collapse TreeView item when tapping on the indicator
description: how to expand collapse treeview item when only tapping on indicator, not to the whole item.
type: how-to
page_title: Expand Collapse TreeView item when tapping on the indicator
slug: treeview-expand-collapse-item-when-tapping-on-indicator
position: 
tags: treeview, expand, collapse, indicator, item, treeviewitem
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

The purpose of this help article is to show you how to expand/collapse treeview item when tapping only on the arrow (expand/collapse indicator)


## Solution

The solution is to suppress the default TreeView ItemTap Command, then add a TapGestureRecognized to the Expand Collapse Indicator and triher the expand/collapse state. 

Her eis the implementation:

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
            <telerikDataControls:RadTreeView.Commands>
                <commands:TreeViewUserCommand Id="ItemTap" SuppressDefaultCommand="True"/>
            </telerikDataControls:RadTreeView.Commands>
            <telerikDataControls:TreeViewDescriptor DisplayMemberPath="Name"
                                            ItemsSourcePath="Cities"
                                            TargetType="{x:Type local:Country}">
                <telerikDataControls:TreeViewDescriptor.ItemTemplate>
                    <DataTemplate>
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
                                <treeView:ExpandCollapseIndicator.GestureRecognizers>
                                    <TapGestureRecognizer Tapped="TapGestureRecognizer_Tapped" NumberOfTapsRequired="1"/>
                                </treeView:ExpandCollapseIndicator.GestureRecognizers>
                            </treeView:ExpandCollapseIndicator>

                            <treeView:ItemText Grid.Column="1"
                                                   VerticalOptions="Center"
                                                   Text="{Binding Item.Name}" />
                        </Grid>
                    </DataTemplate>
                </telerikDataControls:TreeViewDescriptor.ItemTemplate>
            </telerikDataControls:TreeViewDescriptor>
            <telerikDataControls:TreeViewDescriptor DisplayMemberPath="Name" 
                                            TargetType="{x:Type local:City}">
                <telerikDataControls:TreeViewDescriptor.ItemTemplate>
                    <DataTemplate>
                        <Grid Margin="{Binding Path=Level, Converter={StaticResource levelToMarginConverter}}" HeightRequest="40">
                            <treeView:ItemText Margin="8,0,0,0"
                                                   VerticalOptions="Center"
                                                   Text="{Binding Item.Name}" />
                        </Grid>
                    </DataTemplate>
                </telerikDataControls:TreeViewDescriptor.ItemTemplate>
            </telerikDataControls:TreeViewDescriptor>
        </telerikDataControls:RadTreeView>
    </Grid>

</ContentPage>
```

You will need to add the following namespaces

```
xmlns:telerikDataControls="clr-namespace:Telerik.XamarinForms.DataControls;assembly=Telerik.XamarinForms.DataControls" 
xmlns:treeView="clr-namespace:Telerik.XamarinForms.DataControls.TreeView;assembly=Telerik.XamarinForms.DataControls" 
xmlns:commands="clr-namespace:Telerik.XamarinForms.DataControls.TreeView.Commands;assembly=Telerik.XamarinForms.DataControls"            
```

from the above TreeView definition, please notice how the ItemTap Commans is suppressed:

```XAML
<telerikDataControls:RadTreeView.Commands>
    <commands:TreeViewUserCommand Id="ItemTap" SuppressDefaultCommand="True"/>
</telerikDataControls:RadTreeView.Commands>
```

### TapGestureRecognizer event:

```C#
private void TapGestureRecognizer_Tapped(object sender, EventArgs e)
{
    var btn = (ExpandCollapseIndicator)sender;
    var treeViewDataItem = (TreeViewDataItem)btn.BindingContext;
    if (treeViewDataItem.IsExpanded)
    {
        treeView.Collapse(treeViewDataItem.Item);
    }
    else
    {
        treeView.Expand(treeViewDataItem.Item);
    }
}
```

### The used ViewModel

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
                Cities = new ObservableCollection<City> 
				{
					new City {Name = "Rome"},
					new City {Name = "Milano"}
			    }
            },
            new Country
            {
                Name = "Germany",
                Cities = new ObservableCollection<City> {new City {Name = "Berlin"}, new City {Name = "Frankfurt"}}
            },
            new Country
            {
                Name = "India", 
                Cities = new ObservableCollection<City> {new City {Name = "Mumbai"}}
            },
            new Country
            {
                Name = "Argentina",
			    Cities = new ObservableCollection<City> {new City {Name = "Buenos Aires"}}
            },
            new Country
            {
                Name = "USA",
                Cities = new ObservableCollection<City>
                {
                    new City {Name = "Miami"},
                    new City {Name = "New York"},
                    new City {Name = "Los Angeles"}
                }
            }
        };
    }
}
```

### The Business Model Used:

```C#
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