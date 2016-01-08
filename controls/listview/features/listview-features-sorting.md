---
title: Sorting
page_title: Sorting
position: 
slug: listview-features-sorting
description: Describing RadListView sorting feature
tags: sort, radlistview, sorting, sortdescriptor
---

# Sorting

**RadListView** can be used to sort the visualized data. This can be achieved by adding different SortDescriptors to its **SortDescriptors** collection. There are two types of descriptors shipped with our code.

## PropertySortDescriptor 

You can sort the data by a property value from the class that defines your business items. This descriptor exposes the following properties:

- **PropertyName**: Gets or sets the string name of the property that is used to retrieve the key to sort by.
- **SortOrder**: Gets or sets the sort order to Ascending or Descending.

## DelegateSortDescriptor 

This descriptor enables you to sort by a custom key (e.g. some complex expression combining two or more properties) instead of being limited by the value of a single property. This descriptor exposes the following properties:

- **SortOrder**: Gets or sets the sort order to Ascending or Descending.
- **KeyLookup**: Gets or sets the IKeyLookup instance used to retrieve the sort key for each data item.

## See Also

[Grouping]({%slug listview-features-grouping%})

[Filtering]({%slug listview-features-filtering%})

## Example

### Adding sort descriptors in code:

#### XAML

	<telerikDataControls:RadListView x:Name="listView" ItemsSource="{Binding Items}">
	  <telerikDataControls:RadListView.ItemTemplate>
	    <DataTemplate>
	      <telerikListView:ListViewTemplateCell>
	        <telerikListView:ListViewTemplateCell.View>
	          <StackLayout Orientation="Horizontal">
	            <Label Text="Name:"/>
	            <Label Text="{Binding Name}"/>
	            <Label Text=", Age:"/>
	            <Label Text="{Binding Age}"/>
	          </StackLayout>
	        </telerikListView:ListViewTemplateCell.View>
	      </telerikListView:ListViewTemplateCell>
	    </DataTemplate>
	  </telerikDataControls:RadListView.ItemTemplate>
	</telerikDataControls:RadListView>

#### C# 

Add the following code to the Page class:

    public Page()
    {
        InitializeComponent();
        this.BindingContext = new ViewModel();
		listView.SortDescriptors.Add(new PropertySortDescriptor { PropertyName = "Age", SortOrder = SortOrder.Ascending });
    }

Here is the ViewModel class:    

    public class ViewModel
    {
        private static Random rand = new Random();

        public ViewModel()
        {
            this.Items = GetData(100);
        }

        public ObservableCollection<Item> Items { get; set; }

        private static ObservableCollection<Item> GetData(int count)
        {
            var items = new ObservableCollection<Item>();

            for (var i = 0; i < count; i++)
            {
                items.Add(new Item { Name = string.Format("Customer {0}", i), Age = rand.Next(20, 41) });
            }

            return items;
        }
    }

And the data class:

	public class Item
	{
		public string Name { get; set; }
		public int Age { get; set; }
	}

### Adding sort descriptors in XAML:

#### XAML

    <telerikDataControls:RadListView>
      <telerikDataControls:RadListView.SortDescriptors>
        <telerikListView:PropertySortDescriptor PropertyName="Age" SortOrder = "Ascending"/>
      </telerikDataControls:RadListView.SortDescriptors>
    </telerikDataControls:RadListView>

## See Also

[Grouping]({%slug listview-features-grouping%})

[Filtering]({%slug listview-features-filtering%}