---
title: Cells	
page_title: Cells
position: 3
slug: listview-cells
---
## Overview
Cells are non visual objects used to describe a template for creating a visual element inside each ListView item.

- **ListViewTextCell** - derives from Xamarin.Forms.**TextCell** and is meant to visualize text and optionally detail text rendered as second row inside ListView item. This is the default cell of the RadListView.
- **ListViewTemplateCell** - derives from Xamarin.Forms.**ViewCell** and is used to present complex data set as RadListView.**ItemTemplate**.

### ListViewTextCell Example

#### XAML

	<telerikDataControls:RadListView x:Name="EventsList">
	    <telerikDataControls:RadListView.ItemTemplate>
	      <DataTemplate>
	        <listView:ListViewTextCell Text="{Binding Content}" TextColor="Red" Detail="{Binding EventDetais}" DetailColor="Green"/>
	      </DataTemplate>
	    </telerikDataControls:RadListView.ItemTemplate>
  	</telerikDataControls:RadListView>

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

            results.Add(new Event() { Content = "Content of the item", EventDetais = "details goes here", Day = "Today" });
            results.Add(new Event() { Content = "This also happens today", EventDetais = "no reason why", Day = "Today" });
            results.Add(new Event() { Content = "More events today", EventDetais = "no details for them", Day = "Today" });
            results.Add(new Event() { Content = "Go shopping after 19:00", EventDetais = "at the centre mall", Day = "Today" });
            results.Add(new Event() { Content = "You are now free to do whathever", EventDetais = "partyyy :)", Day = "Today" });

            results.Add(new Event() { Content = "For tommorow", EventDetais = "go to see the doc", Day = "Tommorow" });
            results.Add(new Event() { Content = "It is a free day", EventDetais = "(the rest of the day)", Day = "Tommorow" });
            results.Add(new Event() { Content = "Go have some fun", EventDetais = ":)", Day = "Tommorow" });
            results.Add(new Event() { Content = "Party", EventDetais = "", Day = "Tommorow" });

            return results;
        }
    }

### ListViewTemplateCell Example

#### XAML

  	<telerikDataControls:RadListView x:Name="EventsList">
	    <telerikDataControls:RadListView.ItemTemplate>
	      <DataTemplate>
	        <listView:ListViewTemplateCell>
	          <listView:ListViewTemplateCell.View>
	            <Grid Padding="16, 0, 16, 0">
	              <Grid.RowDefinitions>
	                <RowDefinition />
	                <RowDefinition />
	              </Grid.RowDefinitions>
	              <Label Text="{Binding Content}" FontSize="Large"/>
	              <Label Text="{Binding EventDetais}" FontSize="Small" HorizontalOptions="End" Grid.Row="1"/>
	            </Grid>
	          </listView:ListViewTemplateCell.View>
	        </listView:ListViewTemplateCell>
	      </DataTemplate>
	    </telerikDataControls:RadListView.ItemTemplate>
  	</telerikDataControls:RadListView>

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

            results.Add(new Event() { Content = "Content of the item", EventDetais = "details goes here", Day = "Today" });
            results.Add(new Event() { Content = "This also happens today", EventDetais = "no reason why", Day = "Today" });
            results.Add(new Event() { Content = "More events today", EventDetais = "no details for them", Day = "Today" });
            results.Add(new Event() { Content = "Go shopping after 19:00", EventDetais = "at the centre mall", Day = "Today" });
            results.Add(new Event() { Content = "You are now free to do whathever", EventDetais = "partyyy :)", Day = "Today" });

            results.Add(new Event() { Content = "For tommorow", EventDetais = "go to see the doc", Day = "Tommorow" });
            results.Add(new Event() { Content = "It is a free day", EventDetais = "(the rest of the day)", Day = "Tommorow" });
            results.Add(new Event() { Content = "Go have some fun", EventDetais = ":)", Day = "Tommorow" });
            results.Add(new Event() { Content = "Party", EventDetais = "", Day = "Tommorow" });

            return results;
        }
    }