---
title: ItemTemplate
page_title: ItemTemplate
position: 0
slug: slideview-features-itemtemplate
---

# ItemTemplate

RadSlideView can be populated with various types of objects (string, int, any business objects, etc.). You can customize the visualization of the views in the ItemsSource of the control using its **ItemTemplate** property. The template could contain any view that you can use to display the data.

Additionally, you can selected different visualization for each item via the **ItemTemplateSelector** property.

### Еxample

The following example shows how to populate the ItemsSource with business items and customize their appearance.

#### CS
	public class MyItemModel
	{
		public string Content { get; set; }
	}

#### XAML
	<telerikPrimitives:RadSlideView x:Name="slideView">
		<telerikPrimitives:RadSlideView.ItemTemplate>
			<DataTemplate>
				<ContentView>
					<Label Text="{Binding Content}" TextColor="#007ACC" HorizontalTextAlignment="Center"/>
				</ContentView>
			</DataTemplate>
		</telerikPrimitives:RadSlideView.ItemTemplate>
	</telerikPrimitives:RadSlideView>	
	
#### CS
	var source = new ObservableCollection<MyItemModel>()
	{
		new MyItemModel() { Content = "View 1" },
		new MyItemModel() { Content = "View 2" },
		new MyItemModel() { Content = "View 3" },
	};

	this.slideView.ItemsSource = source;
	
#### Figure 1: RadSlideView example
![RadSlideView example](../images/slideview-features-itemtemplate-0.png)

### See Also

- [Project Wizard]({% slug project-wizard %})
- [Getting Started]({% slug slideview-getting-started %})

