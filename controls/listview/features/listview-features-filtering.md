---
title: Filtering
page_title: Filtering
position: 3
slug: listview-features-filtering
description: Describing RadListView filtering feature
tags: filter, radlistview, filterdescriptor
---

# Filtering

**RadListView** provides you with the functionality to programmatically filter its data at runtime. This can be achieved through adding filter descriptors that implement the IFilter interface to the **RadListView.FilterDescriptors** collection. You can use our **DelegateFilterDescriptor** implementation.

## DelegateFilterDescriptor 

- **Filter**: Gets or sets the function used to check whether a data item passes the filter or not.

## Example

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
		listView.FilterDescriptors.Add(new Telerik.XamarinForms.DataControls.ListView.DelegateFilterDescriptor { Filter = this.AgeFilter });
	}
	
	private bool AgeFilter(object arg)
	{
	    var age = ((Item)arg).Age;
	    return age >= 25 && age <= 35;
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

And here is the data class:

	public class Item
	{
		public string Name { get; set; }
		public int Age { get; set; }
	}

## See Also

[Grouping]({%slug listview-features-grouping%})

[Sorting]({%slug listview-features-sorting%})
