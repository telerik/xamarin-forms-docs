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

#### XAML

	<Grid BackgroundColor="#33888888">
		<Grid.RowDefinitions>
		  <RowDefinition Height="Auto"/>
		  <RowDefinition/>
		</Grid.RowDefinitions>
		
		<Grid Padding="10">
		  <Grid.RowDefinitions>
		    <RowDefinition Height="Auto"/>
		    <RowDefinition Height="Auto"/>
		    <RowDefinition Height="Auto"/>
		  </Grid.RowDefinitions>
		  <Grid.ColumnDefinitions>
		    <ColumnDefinition Width="Auto"/>
		    <ColumnDefinition/>
		  </Grid.ColumnDefinitions>
		  <Grid Grid.Row="2" Grid.ColumnSpan="2">
		    <Grid.ColumnDefinitions>
		      <ColumnDefinition Width="Auto"/>
		      <ColumnDefinition/>
		    </Grid.ColumnDefinitions>
		    <Label Text="sort direction:" />
		    <Picker x:Name="sortDirectionPicker" Grid.Column="1"/>
		  </Grid>
		</Grid>
		
		<telerikDataControls:RadListView BackgroundColor="White" Grid.Row="1" x:Name="listView" ItemsSource="{Binding Items}">
		  <telerikDataControls:RadListView.ItemTemplate>
		    <DataTemplate>
		      <telerikListView:ListViewTemplateCell>
		        <telerikListView:ListViewTemplateCell.View>
		          <StackLayout Padding="10">
		            <StackLayout Orientation="Horizontal">
		              <Label Text="Name:" TextColor="Black"/>
		              <Label Text="{Binding Name}" TextColor="Red"/>
		            </StackLayout>
		            <StackLayout Orientation="Horizontal" Grid.Row="1">
		              <Label Text="Age:" TextColor="Black"/>
		              <Label Text="{Binding Age}" TextColor="Red"/>
		            </StackLayout>
		          </StackLayout>
		        </telerikListView:ListViewTemplateCell.View>
		      </telerikListView:ListViewTemplateCell>
		    </DataTemplate>
		  </telerikDataControls:RadListView.ItemTemplate>
		  <telerikDataControls:RadListView.LayoutDefinition>
		    <telerikListView:ListViewLinearLayout Orientation="Vertical" ItemLength="70"/>
		  </telerikDataControls:RadListView.LayoutDefinition>
		</telerikDataControls:RadListView>
	</Grid>

#### C# 

    public DataOperations()
    {
        InitializeComponent();
        this.BindingContext = new DataOperationsViewModel();

        sortDirectionPicker.Items.Add("no sort");
        sortDirectionPicker.Items.Add("sort by age ascending");
        sortDirectionPicker.Items.Add("sort by age descending");
        sortDirectionPicker.SelectedIndex = 0;
        sortDirectionPicker.SelectedIndexChanged += this.SortDirectionPickerSelectedIndexChanged;
    }

    private void SortDirectionPickerSelectedIndexChanged(object sender, EventArgs e)
    {
        var descriptor = listView.SortDescriptors.FirstOrDefault();

        switch (sortDirectionPicker.SelectedIndex)
        {
            case 0:
                listView.SortDescriptors.Clear();
                break;
            case 1:
                if (descriptor == null)
                {
                    descriptor = new PropertySortDescriptor { PropertyName = "Age", SortOrder = SortOrder.Ascending };
                    listView.SortDescriptors.Add(descriptor);
                }
                else
                {
                    (descriptor as PropertySortDescriptor).SortOrder = SortOrder.Ascending;
                }
                break;
            case 2:
                if (descriptor == null)
                {
                    descriptor = new PropertySortDescriptor { PropertyName = "Age", SortOrder = SortOrder.Descending };
                    listView.SortDescriptors.Add(descriptor);
                }
                else
                {
                    (descriptor as PropertySortDescriptor).SortOrder = SortOrder.Descending;
                }

                break;
        }
    }

    public class DataOperationsViewModel
    {
        private static Random rand = new Random();

        public DataOperationsViewModel()
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