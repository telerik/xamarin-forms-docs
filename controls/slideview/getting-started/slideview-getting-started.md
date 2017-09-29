---
title: Getting Started
page_title: Getting Started
position: 0
slug: slideview-getting-started
---

# Getting Started

This article demonstrates how to create a sample application that contains **RadSlideView**.

>Before you proceed, please, take a look at these articles and follow the instructions to setup your app:

>- [Setup on Windows]({%slug getting-started-windows%})
>- [Setup on Mac]({%slug getting-started-mac%})

You can find the assemblies needed by the control in the [Required Telerik Assemblies]({%slug slideview-required-assemblies%}) article.

### Populating with data

RadSlideView is populated via its **ItemsSource** property. The control will display an indicator for each item in the ItemsSource and display the view of the selected item.

You can use the ItemTemplate and ItemTemplateSelector properties to customize the views appearance.

### Setting up RadSlideView

To use the slideview control you can include the following namespaces:

<snippet id='xmlns-telerikprimitives'/>
<snippet id='ns-telerikprimitives'/>

To display any items you can set the control's ItemsSource property and populate it with some data.

#### XAML
	<telerikPrimitives:RadSlideView>
		<telerikPrimitives:RadSlideView.ItemsSource>
			<x:Array Type="{x:Type x:String}">                    
				<x:String>View 1</x:String>
				<x:String>View 2</x:String>
				<x:String>View 3</x:String>
			</x:Array>
		</telerikPrimitives:RadSlideView.ItemsSource>
	</telerikPrimitives:RadSlideView>

#### __Figure 1: RadSlideView example__  
![RadSlideView example](../images/slideview-gettingstarted-0.png)

Check the [ItemTemplate]({% slug slideview-features-itemtemplate %}) article to see how to populate the control with business items and customize their appearance.

>important **SDK Browser** and **QSF** applications contain different examples that show RadSlideViews's main features. You can find the applications in the **Examples** and **QSF** folders of your local **Telerik UI for Xamarin** installation.

### See Also
- [Project Wizard]({% slug project-wizard %})
- [Getting Started on Windows]({% slug getting-started-windows %})
- [Getting Started on Mac]({% slug getting-started-mac %})