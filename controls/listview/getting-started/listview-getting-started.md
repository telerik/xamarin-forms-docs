---
title: Getting Started
page_title: Getting Started
position: 0
slug: listview-getting-started
---

# Getting Started

This example will guide you through the steps needed to add a basic **RadListView** control in your application.

>Before you proceed, please, take a look at these articles and follow the instructions to setup your app:

>- [Setup on Windows]({%slug getting-started-windows%})
>- [Setup on Mac]({%slug getting-started-mac%})

## Example

If your app is setup, you are ready to add a **RadDataForm** control.

Users can visualize the **RadListView** using XAML code like this:

	<telerikDataControls:RadListView x:Name="LV"/> 

where the **telerik** namespace is defined like this:

	xmlns:telerikDataControls="clr-namespace:Telerik.XamarinForms.DataControls;assembly=Telerik.XamarinForms.DataControls"
The next step is to add the items that will be visualized. This can be done in code like this:

	InitializeComponent();
	this.LV.ItemsSource = Enum.GetNames(typeof(DayOfWeek)).ToList();
An alternative way to visualize the component is to create it entirely in code. This can be done like this:

	var listView = new RadListView();
	this.LV.ItemsSource = Enum.GetNames(typeof(DayOfWeek)).ToList();
	this.Content = listView;
The result will be similar to the following pictures.

Figure 1: RadListView in Android, iOS and WinRT.Phone

![RadListView](../images/listview-getting-started.png)

## See Also

- [Project Wizard]({% slug project-wizard %})
- [Getting Started on Windows]({% slug getting-started-windows %})
- [Getting Started on Mac]({% slug getting-started-mac %})