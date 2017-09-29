---
title: Getting Started
page_title: RadDataGrid Getting Started
position: 1
slug: datagrid-getting-started
---

# Getting Started #

This article provides information on how to add a **RadDataGrid** control to your project and fill it with business items.
 
>note Before you start, please make sure that you have added all the required assemblies for the control. You can find them in the [Required Assemblies]({%slug datagrid-required-assemblies%}) article.

The first step is to add the Telerik.XamarinForms.DataGrid namespace:

	xmlns:telerikDataGrid="clr-namespace:Telerik.XamarinForms.DataGrid;assembly=Telerik.XamarinForms.DataGrid"

You can now declare a RadDataGrid instance :
	
	<telerikDataGrid:RadDataGrid x:Name="DataGrid"/>

Now that you have added the control to your view, you need to make sure that is properly loaded with the required data. 

By default, the **RadDataGrid** control will autogenerate rows depending on the number of objects in the collection set as its **ItemsSource**. For the purpose of this article, we are going to use the following simple business objects:

 	public class Data
	{
    	public string Country { get; set; }

    	public string Capital { get; set; }
	}

After you have created your collection of custom objects, you should assign it to the **ItemsSource** property of the control:

 	 this.DataGrid.ItemsSource = new List<Data>
 	 {
     	new Data { Country = "India", Capital = "New Delhi"},
     	new Data { Country = "South Africa", Capital = "Cape Town"},
     	new Data { Country = "Nigeria", Capital = "Abuja" },
     	new Data { Country = "Singapore", Capital = "Singapore" } 
	 };

**Figure 1** shows the result on the different platforms.

#### Figure 1: RadDataGrid declaration:
![datagrid-itemssource](../images/datagrid-itemssource.png)

>important **SDK Browser** and **QSF** applications contain different examples that show RadDataGrid's main features. You can find the applications in the **Examples** and **QSF** folders of your local **Telerik UI for Xamarin** installation.

## See Also

* [Required Assemblies]({%slug datagrid-required-assemblies%})
* [Columns Overview]({%slug datagrid-columns-overview%})
