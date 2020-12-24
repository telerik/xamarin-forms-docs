---
title: How to show multi grouped grid's inner child items count in main parent group header on rad data grid
description: show multi grouped grid's inner child items count in main parent group header, nested grouping scenario
type: troubleshooting
page_title: 
slug: datagrid-grouping-inner-items-count-in-outer-group
position: 
tags: datagrid, grouping, xamarin, xamarin.forms, nested grouping
ticketid: 1498942
res_type: kb
---

## Environment
<table>
	<tbody>
		<tr>
			<td>Product Version</td>
			<td>2020.3.1207.1</td>
		</tr>
		<tr>
			<td>Product</td>
			<td>DataGrid for Xamarin.Forms</td>
		</tr>
	</tbody>
</table>


## Description

The following how-to article will show you how to visualize the children's items count of the inner group inside the outer group. For this purpose, we will use the DataGrid GroupHeaderTemplate. 

## Solution

We will need to implement a converter to get the inner group children's items count. Create a class for example MyConverter:

```C#
public class MyConverter : IValueConverter
{
    public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
    {

        var groupHeaderContext = value as GroupHeaderContext;
        if (groupHeaderContext != null)
        {
            var group = groupHeaderContext.Group;
            if (group != null)
            {
                var totalItemsCount = this.GetTotalChildrenCount(group);
                return "Total child items count: " + totalItemsCount;
            }
        }

        return string.Empty;
    }

    public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
    {
        throw new NotImplementedException();
    }
    private int GetTotalChildrenCount(IDataGroup group)
    {
        int count = 0;
        foreach (var item in group.ChildItems)
        {
            var childGroup = item as IDataGroup;
            if (childGroup != null)
            {
                count += this.GetTotalChildrenCount(childGroup);
            }
            else
            {
                count++;
            }
        }

        return count;
    }
}
```

you will need the following namespace for the GroupHHeaderContext:

```C#
using Telerik.XamarinForms.Common.Data;
using Telerik.XamarinForms.DataGrid;
```

Here is the used business model and ViewModel:

```C#
public class Country
{
    public string Name { get; set; }
    public string Region { get; set; }
    public string SalesName { get; set; }
}
public class ViewModel
{
    public ViewModel()
    {
        this.Items = new ObservableCollection<Country>
        {
            new Country{Name ="Australia", Region="East", SalesName="Camra" },
            new Country{Name ="Australia", Region="East", SalesName="Camba" },
            new Country{Name ="Australia", Region="West", SalesName="bera" },
            new Country{Name ="Australia", Region="South", SalesName="C" },
            new Country{Name ="Australia", Region="Center", SalesName="C" },
            new Country{Name ="UK", Region="East", SalesName = "Cate" },
            new Country{Name ="UK", Region="West", SalesName = "Jack" },
            new Country{Name ="UK", Region="Center", SalesName="James" },
            new Country{Name ="USA", Region="East", SalesName="John" },
            new Country{Name ="USA", Region="East", SalesName="Doe" },
            new Country{Name ="USA", Region="East", SalesName="Katelin" },
            new Country{Name ="USA", Region="West", SalesName="Joan" },
            new Country{Name ="USA", Region="South", SalesName="Amanda" },
            new Country{Name ="USA", Region="North", SalesName="Daniel" },
            new Country{Name ="USA", Region="South", SalesName="Amanda" },
        };
    }

    public ObservableCollection<Country> Items { get; set; }
}
```

And finaly this is the DataGrid definition and how the GroupHeaderTemplate is defined:

```XAML
<telerikDataGrid:RadDataGrid x:Name="dataGrid"
                                ItemsSource="{Binding Items}"
                                AutoGenerateColumns="false"
                                DataOperationIndicationMode="Universal"
                                GridLinesColor="#DDE0E3"
                                GridLinesVisibility="Both">
    <telerikDataGrid:RadDataGrid.GroupHeaderTemplate>
        <DataTemplate>
            <StackLayout Orientation="Horizontal" 
                        Margin="5,0,0,0" 
                        VerticalOptions="Center" >
                <Label Text="{Binding Group.Key}" 
                    FontAttributes="Bold" 
                    TextColor="DarkCyan" 
                    FontSize="Small" />
                <Label Text="{Binding Group.Items.Count}" 
                    FontAttributes="Bold" 
                    TextColor="DarkCyan" 
                    FontSize="Small" />
                <Label Text="{Binding ., Converter={StaticResource myConverter}}" 
                    FontAttributes="Bold" 
                    TextColor="Red" 
                    FontSize="16" />
            </StackLayout>
        </DataTemplate>
    </telerikDataGrid:RadDataGrid.GroupHeaderTemplate>
    <telerikDataGrid:RadDataGrid.GroupDescriptors>
        <common:PropertyGroupDescriptor PropertyName="Name"/>
        <common:PropertyGroupDescriptor PropertyName="Region"/>
    </telerikDataGrid:RadDataGrid.GroupDescriptors>

    <telerikDataGrid:RadDataGrid.Columns>
        <telerikDataGrid:DataGridTextColumn PropertyName="SalesName" HeaderText="Sales">
        </telerikDataGrid:DataGridTextColumn>
    </telerikDataGrid:RadDataGrid.Columns>
</telerikDataGrid:RadDataGrid>
```

Register the converter inside the Page's Resources:

```XAML
<ContentPage.Resources>
    <ResourceDictionary>
        <local:MyConverter x:Key="myConverter"/>
    </ResourceDictionary>
</ContentPage.Resources>
```

also you will need the following namespaces:

```XAML
xmlns:telerikDataGrid="clr-namespace:Telerik.XamarinForms.DataGrid;assembly=Telerik.XamarinForms.DataGrid" 
xmlns:common="clr-namespace:Telerik.XamarinForms.Common.Data;assembly=Telerik.XamarinForms.Common"
```