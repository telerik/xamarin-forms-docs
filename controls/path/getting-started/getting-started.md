---
title: Getting Started
page_title: Getting Started
position: 0
slug: path-getting-started
---

# Getting Started
   
This example will guide you through the steps needed to add a basic **RadPath** control in your application.

>Before you proceed, please, take a look at these articles and follow the instructions to setup your app:

>- [Setup on Windows]({%slug getting-started-windows%})
>- [Setup on Mac]({%slug getting-started-mac%})

## Important properties

The RadPath element exposes the following properties:

* **Fill:** Used for setting up the color within the figures. You should set an object of type **RadBrush**. This can be a **RadSolidColorBrush** or a **RadSweepGradientBrush**
* **Geometry:** You should set an object of type **RadPathGeometry** which will provide the geometry that needs to be visualized. The RadPathGeometry consists of different RadPathFigures.
* **Stroke:** You can use this property to set the stroke color.
* **StrokeThickness:** You can use this property to set the thickness of the stroke.
* **BackgroundColor:** You can use this property to modify the color of the rectangle which contains the specific figure.


## Creating RadPath with built-in geometry

If your app is correctly set, you are ready to add a **RadPath** control within your page:

<snippet id='path-gettingstarted-starpath-xaml'/>

In addition to this you need to add the following namespace:

<snippet id='xmlns-telerikprimitives'/>	

You need to set the **Geometry** property of the **RadPath** instance for it to visualize properly. There are several built-in geometries which can be found in the **Telerik.XamarinForms.Input.Geometries** static class. 

<snippet id='path-gettingstarted-built-in-geometry'/>	

## Creating RadPath with custom geometry

You are free to create a custom geometry which will be visualized by the **RadPath** control. For that purpose, you need to create object of type **RadPathGeometry**.
The definition of the RadPath is similar:

<snippet id='path-gettingstarted-custompath-xaml'/>	

Assigning the custom geometry:

<snippet id='path-gettingstarted-assigning-custom-geometry'/>	

The Custom geometry definition:

<snippet id='path-gettingstarted-custom-geometry'/>	

Both RadPath objects appearance can be reviewed in **Figure 1**. 

**Figure 1:**
![RadPath Figures](../images/custom_default_paths.png)

>important The **SDK Browser** and the **QSF** applications contain different examples that show RadPath's main features. You can find the applications in the **Examples** and **QSF** folders of your local **Telerik UI for Xamarin** installation.

## See Also