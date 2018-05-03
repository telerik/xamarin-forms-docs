---
title: Grouping
page_title: Grouping
position: 1
slug: listview-features-grouping
description: Describing RadListView grouping feature
tags: group, radlistview, groupdescriptor
---

# Grouping

**RadListView** provides you with the functionality to programmatically group its data at runtime. This can be achieved through adding groupdescriptors to the **RadListView.GroupDescriptors** collection.

## PropertyGroupDescriptor 

You can group the data by a property value from the class that defines your items. This descriptor exposes the following properties:

- **PropertyName**: Gets or sets the string name of the property you want to group by.
- **SortOrder**: Gets or sets the sort order in each group to Ascending or Descending.

## Example

#### XAML
	<telerikDataControls:RadListView x:Name="EventsList">
	    <telerikDataControls:RadListView.ItemTemplate>
	      <DataTemplate>
	        <telerikListView:ListViewTemplateCell>
	          <telerikListView:ListViewTemplateCell.View>
	            <Grid Padding="16, 0, 0, 0">
	              <Label Text="{Binding Content}" FontSize="Large"/>
	            </Grid>
	          </telerikListView:ListViewTemplateCell.View>
	        </telerikListView:ListViewTemplateCell>
	      </DataTemplate>
	    </telerikDataControls:RadListView.ItemTemplate>
	    <telerikDataControls:RadListView.GroupDescriptors>
	      <telerikListView:PropertyGroupDescriptor PropertyName="Day"/>
	    </telerikDataControls:RadListView.GroupDescriptors>
	    <telerikDataControls:RadListView.GroupHeaderTemplate>
	      <DataTemplate>
	        <Grid BackgroundColor="#C1C1C1">
	          <Label Text="{Binding }" TextColor="#303030" FontSize="Medium" HorizontalOptions="Center"/>
	        </Grid>
	      </DataTemplate>
	    </telerikDataControls:RadListView.GroupHeaderTemplate>
	</telerikDataControls:RadListView>

Where the  telerikDataControls and the listView alias are defined like this:

	xmlns:telerikListView="clr-namespace:Telerik.XamarinForms.DataControls.ListView;assembly=Telerik.XamarinForms.DataControls"
	xmlns:telerikDataControls="clr-namespace:Telerik.XamarinForms.DataControls;assembly=Telerik.XamarinForms.DataControls"

#### C# 

    public partial class StartPage : ContentPage
    {
        public StartPage()
        {
            InitializeComponent();

            this.EventsList.ItemsSource = this.GenerateSource();
        }

        private System.Collections.IEnumerable GenerateSource()
        {
            var results = new List<Event>();

            results.Add(new Event() { Content = "Content of the item", Day = "Today" });
            results.Add(new Event() { Content = "This also happens today", Day = "Today" });
            results.Add(new Event() { Content = "More events today", Day = "Today" });
            results.Add(new Event() { Content = "Go shopping after 19:00", Day = "Today" });
            results.Add(new Event() { Content = "You are now free to do whathever", Day = "Today" });

            results.Add(new Event() { Content = "For tommorow", Day = "Tommorow" });
            results.Add(new Event() { Content = "It is a free day", Day = "Tommorow" });
            results.Add(new Event() { Content = "Go have some fun", Day = "Tommorow" });
            results.Add(new Event() { Content = "Party", Day = "Tommorow" });

            return results;
        }
    }


## DelegateGroupDescriptor 

This descriptor enables you to group by a custom key (e.g. some complex expression combining two or more properties) instead of being limited by the value of a single property. This descriptor exposes the following properties:

- **KeyExtractor**: Gets or sets the `(Func<object, object)` delegate which returns the property to retrieve the group key for each data item.
- **SortOrder**:  Gets or sets the sort order in each group to Ascending or Descending.

## Example

```
public partial class StartPage : ContentPage
{
    public StartPage()
    {
        InitializeComponent();

        EventsList.ItemsSource = GenerateSource();

        var delegateDescriptor = new DelegateGroupDescriptor
        {
            KeyExtractor = DayNameKeyExtractor
        };

        EventsList.GroupDescriptors.Add(delegateDescriptor);
    }

    private object DayNameKeyExtractor(object arg)
    {
        var item = arg as Event;
        return item?.EventDate.DayOfWeek.ToString();
    }

    private IEnumerable GenerateSource()
    {
        return new List<Event>
        {
            new Event {Content = "Content of the item", Day = "Today", EventDate = DateTime.Today},
            new Event {Content = "This also happens today", Day = "Today", EventDate = DateTime.Today},
            new Event {Content = "More events today", Day = "Today", EventDate = DateTime.Today},
            new Event {Content = "Go shopping after 19:00", Day = "Today", EventDate = DateTime.Today},
            new Event {Content = "You are now free to do whathever", Day = "Today", EventDate = DateTime.Today},

            new Event {Content = "For tommorow", Day = "Tommorow", EventDate = DateTime.Now.AddDays(1)},
            new Event {Content = "It is a free day", Day = "Tommorow", EventDate = DateTime.Now.AddDays(1)},
            new Event {Content = "Go have some fun", Day = "Tommorow", EventDate = DateTime.Now.AddDays(1)},
            new Event {Content = "Party", Day = "Tommorow", EventDate = DateTime.Now.AddDays(1)}
        };
    }
}
```

```
public class Event
{
    public string Content { get; set; }
    public string Day { get; set; }
    public DateTime EventDate { get; set; }
}
```

## See Also

[Filtering]({%slug listview-features-filtering%})

[Sorting]({%slug listview-features-sorting%})
