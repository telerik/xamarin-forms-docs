---
title: Getting Started
page_title: Getting Started with Xamarin.Forms DataGrid Control
description: Check our &quot;Getting Started&quot; documentation article for Telerik DataGrid for Xamarin control.
position: 1
slug: datagrid-getting-started
---

# Getting Started

This article will guide you through the steps needed to add a basic **RadDataGrid** control in your application.

* [Setting up the app](#1-setting-up-the-app)
* [Adding the required Telerik references](#2-adding-the-required-telerik-references)
* [Adding RadDataGrid control](#3-adding-raddatagrid-control)
* [Setting RadDataGrid ItemsSource](#4-setting-raddatagrid-itemssource)

## 1. Setting up the app

Take a look at these articles and follow the instructions to setup your app:

- [Setup app with Telerik UI for Xamarin on Windows]({%slug getting-started-windows%})
- [Setup app with Telerik UI for Xamarin on Mac]({%slug getting-started-mac%})

## 2. Adding the required Telerik references

You have two options:

* Add the Telerik UI for Xamarin Nuget package following the instructions in [Telerik NuGet package server]({%slug telerik-nuget-server%}) topic.

If you don't want to add the all Telerik.UI.for.Xamarin nuget package, you have the option to add a separate nuget package. For RadDataGrid control you have to install the **Telerik.UI.for.Xamarin.DataGrid** nuget package. This nuget will automatically refer the *Telerik.UI.for.Xamarin.Common*, *Telerik.UI.for.Xamarin.Primitives*, *Telerik.UI.for.Xamarin.Input*, *Telerik.UI.for.Xamarin.DataControls* and *Telerik.UI.for.Xamarin.SkiaSharp* nuget packages.

* Add the references to Telerik assemblies manually, check the list below with the required assemblies for **RadDataGrid** component:

| Platform | Assemblies |
| -------- | ---------- |
| Portable | Telerik.XamarinForms.Common.dll<br/>Telerik.XamarinForms.DataGrid.dll<br/>Telerik.XamarinForms.SkiaSharp.dll |
| Android  | Telerik.Xamarin.Android.Common.dll<br/>Telerik.Xamarin.Android.Data.dll<br/>Telerik.Xamarin.Android.Input.dll<br />Telerik.Xamarin.Android.List.dll<br />Telerik.Xamarin.Android.Primitives.dll<br />Telerik.XamarinForms.Common.dll<br />Telerik.XamarinForms.DataControls.dll<br />Telerik.XamarinForms.DataGrid.dll<br />Telerik.XamarinForms.Input.dll<br />Telerik.XamarinForms.Primitives.dll<br />Telerik.XamarinForms.SkiaSharp.dll |
| iOS      | Telerik.XamarinForms.Common.dll<br/>Telerik.XamarinForms.DataGrid.dll<br/>Telerik.XamarinForms.SkiaSharp.dll |
| UWP      | Telerik.XamarinForms.Common.dll<br/>Telerik.XamarinForms.DataGrid.dll<br/>Telerik.XamarinForms.SkiaSharp.dll|

>important RadDataGrid is rendered via the **SkiaSharp** graphics library so you need to install also [SkiaSharp](https://www.nuget.org/packages/SkiaSharp/) and [SkiaSharp.Views.Forms](https://www.nuget.org/packages/SkiaSharp.Views.Forms) in all projects of the Xamarin solution (portable, android, ios, etc). 

## 3. Adding RadDataGrid control

You could use one of the following approaches:

### Drag the control from the Toolbox. 

Take a look at the following topics on how to use the toolbox:

* [Telerik UI for Xamarin Toolbox on Windows]({%slug telerik-xamarin-toolbox%})

### Create the control definition in XAML:

The snippet below shows a simple RadDataGrid definition:
```XAML	
	<telerikDataGrid:RadDataGrid x:Name="DataGrid"/>
```

In addition to this, you need to add the following namespace:

```XAML
	xmlns:telerikDataGrid="clr-namespace:Telerik.XamarinForms.DataGrid;assembly=Telerik.XamarinForms.DataGrid"
```	

> RadDataGrid control provides UI virtualization, so it requires its visual parent to provide vertical or horizontal space for the control to fill into. The following scenarios will measure the control with infinity and the virtualization will not work:
>	* positioning the DataGrid control inside StackLayout which is wrapped in ScrollView.
>	* positioning the DataGrid inside ScrollView.
>
> For additional information, please check the [Controls are not Apppearing]({%slug controls-are-not-appearing%}) article.

Now that you have added the control to your view, you need to make sure that is properly loaded with the required data. 

## 4. Setting RadDataGrid ItemsSource

By default, the **RadDataGrid** control will autogenerate rows depending on the number of objects in the collection set as its **ItemsSource**. 

#### Binding to a collection of objects

The collection of custom objects, then assigned to the **ItemsSource** property of the control:

```C#
 	 this.DataGrid.ItemsSource = new List<Data>
 	 {
     	new Data { Country = "India", Capital = "New Delhi"},
     	new Data { Country = "South Africa", Capital = "Cape Town"},
     	new Data { Country = "Nigeria", Capital = "Abuja" },
     	new Data { Country = "Singapore", Capital = "Singapore" } 
	 };
```

And the simple business model used:

```C#
 	public class Data
	{
    	public string Country { get; set; }

    	public string Capital { get; set; }
	}
```

Here is the result:

![datagrid-itemssource](images/datagrid-itemssource.png)

#### Binding to a DataTable

1. The ViewModel used: 

<snippet id='datagrid-datatable-view-model'/>

Where the DataTable namespace is `using System.Data;`

1. DataGrid definition:

<snippet id='datagrid-datatable-binding'/>

Add the namespace: 

```XAML
xmlns:telerikDataGrid="clr-namespace:Telerik.XamarinForms.DataGrid;assembly=Telerik.XamarinForms.DataGrid"
```

>note Check our [DataGrid DataTable support]({%slug datagrid-datatable-support%}) article for more information about this feature.


>important **SDK Browser** and **QSF** applications contain different examples that show RadDataGrid's main features. You can find the applications in the **Examples** and **QSF** folders of your local **Telerik UI for Xamarin** installation.

## See Also

- [Filtering]({%slug datagrid-filtering-overview%})
- [Grouping]({%slug datagrid-grouping-overview%})
- [Sorting]({%slug datagrid-sorting-overview%})