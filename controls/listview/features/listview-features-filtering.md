---
title: Filtering
page_title: Filtering
position: 
slug: listview-features-filtering
description: Describing RadListView filtering feature
tags: filter, radlistview, filterdescriptor
---

# Filtering

**RadListView** provides you with the functionality to programmatically filter its data at runtime. This can be achieved through adding FilterDescriptors to the **RadListView.FilterDescriptors** collection. Here are the available filter descriptors shipped with our code.

## TextFilterDescriptor 

- **PropertyName**: Gets or sets the property used to retrieve the value to filter by.
- **Operator**:  Gets or sets the TextOperator value which defines how the Value member is compared with each value from the **RadListView.ItemsSource**.
- **Value**: Gets or sets the string value used in the comparisons. This is the right operand of the comparison.
- **IsCaseSensitive**: Gets or sets a boolean value determining whether the text comparisons will be case-sensitive. Default value is true.

## BooleanFilterDescriptor 

- **PropertyName**: Gets or sets the property used to retrieve the value to filter by.
- **Value**: Gets or sets the boolean value used in the comparisons. This is the right operand of the comparison.

## NumericalFilterDescriptor 

- **PropertyName**: Gets or sets the property used to retrieve the value to filter by.
- **Value**: Gets or sets the numerical value used in the comparisons. This is the right operand of the comparison.
- **Operator**: Gets or sets the NumericalOperator value which defines the logic behind the left and right operand comparison.

## DateTimeFilterDescriptor 

- **PropertyName**: Gets or sets the property used to retrieve the value to filter by.
- **Value**: Gets or sets the DateTimeOperator value which defines the logic behind the left and right operand comparison.
- **Operator**: Gets or sets the DateTime value used in the comparisons. This is the right operand of the comparison.

## DelegateFilterDescriptor 

- **Filter**: Gets or sets the **IFilter** interface implementation used to check whether a data item passes the filter or not.

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
		
		  <Label Grid.Row="1" Style="{StaticResource LabelStyle}" Text="filter by age (25 - 35)"/>
		  <Switch x:Name="filterSwitch" Grid.Row="1" Grid.Column="1" HorizontalOptions="End"/>
		  
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
	    filterSwitch.Toggled += this.FilterSwitchToggled;
	}
	
	private void FilterSwitchToggled(object sender, ToggledEventArgs e)
	{
	    if (e.Value)
	    {
	        listView.FilterDescriptors.Add(new DelegateFilterDescriptor { Filter = this.Filter });
	    }
	    else
	    {
	        listView.FilterDescriptors.Clear();
	    }
	}
	
	private bool Filter(object arg)
	{
	    var age = ((Item)arg).Age;
	    return age >= 25 && age <= 35;
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

## See Also

[Grouping]({%slug listview-features-grouping%})

[Sorting]({%slug listview-features-sorting%})