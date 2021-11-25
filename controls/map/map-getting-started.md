---
title: Getting Started
page_title: Getting Started with Xamarin.Forms Map Control
description: Check our &quot;Getting Started&quot; documentation article for Telerik Map for Xamarin control.
position: 1
slug: map-getting-started
---

# Getting Started

This article will guide you through the steps needed to add a basic **RadMap** control in your application.

* [Setting up the app](#1-setting-up-the-app)
* [Adding the required Telerik references](#2-adding-the-required-telerik-references)
* [Adding RadMap control](#3-adding-radmap-control)

## 1. Setting up the app

Take a look at these articles and follow the instructions to setup your app:

- [Setup app with Telerik UI for Xamarin on Windows]({%slug getting-started-windows%})
- [Setup app with Telerik UI for Xamarin on Mac]({%slug getting-started-mac%})

## 2. Adding the required Telerik references

You have two options:

* Add the Telerik UI for Xamarin Nuget package following the instructions in [Telerik NuGet package server]({%slug telerik-nuget-server%}) topic.

If you don't want to add the all Telerik.UI.for.Xamarin nuget package, you have the option to add a separate nuget package. For RadMap control you have to install the **Telerik.UI.for.Xamarin.Map** nuget package. This nuget will automatically refer the *Telerik.UI.for.Xamarin.Common*, *Telerik.UI.for.Xamarin.Primitives*, *Telerik.UI.for.Xamarin.DataControls*, *SkiaSharp* and *ShiaSharp.Views.Forms* nuget packages.

* Add the references to Telerik assemblies manually, check the list below with the required assemblies for **RadMap** component:

| Platform | Assemblies |
| -------- | ---------- |
| Portable | Telerik.XamarinForms.Common.dll<br/>Telerik.XamarinForms.Map.dll |
| Android  | Telerik.Xamarin.Android.Common.dll<br/>Telerik.XamarinForms.Common.dll<br/>Telerik.XamarinForms.Map.dll |
| iOS      | Telerik.Xamarin.iOS.dll <br/>Telerik.XamarinForms.Common.dll<br/>Telerik.XamarinForms.Map.dll |
| UWP      | Telerik.Core.dll<br/>Telerik.UI.Xaml.Primitives.UWP.dll<br/>Telerik.XamarinForms.Common.dll<br/>Telerik.XamarinForms.Map.dll |

>important RadMap is rendered via the **SkiaSharp** graphics library so you need to install also [SkiaSharp](https://www.nuget.org/packages/SkiaSharp/) and [SkiaSharp.Views.Forms](https://www.nuget.org/packages/SkiaSharp.Views.Forms) in all projects of the Xamarin solution (portable, android, ios, etc). 

## 3. Adding RadMap control

You could use one of the following approaches:

#### Drag the control from the Toolbox. 

Take a look at the following topics on how to use the toolbox:

* [Telerik UI for Xamarin Toolbox on Windows]({%slug telerik-xamarin-toolbox%})
* [Telerik UI for Xamarin Toolbox on Mac]({%slug telerik-xamarin-toolbox-mac%})
	
#### Create the control definition in XAML or C#.

The snippet below shows a simple RadMap definition:

<snippet id='map-getting-started-xaml' />
<snippet id='map-gettingstarted-csharp' />

In addition to this, you need to add the following namespace:

<snippet id='xmlns-telerikmap' />
<snippet id='ns-telerikmap' />

RadMap uses *.shp files that contain the coordinates of the shapes that will be drawn by the map and an optional *.dbf file for each *.shp file with additional attributes of the shapes.

You would need to assign the .shp file containing the data through the **Source** property of the MapShapeReader like this:

<snippet id='map-gettingstarted-setting-source' />

>note In the example the .shp file is loaded as an EmbeddedResource, there are other options as well, please check them in the [ShapefileLayer]({% slug map-layers-shapefilelayer%}) topic.

This is the result:

![RadMap](images/map_getting_started.png)

>important **SDK Browser** and **QSF** applications contain different examples that show RadMap's main features. You can find the applications in the **Examples** and **QSF** folders of your local **Telerik UI for Xamarin** installation.

## See Also

- [ShapefileLayer]({% slug map-layers-shapefilelayer%})
- [Selection]({% slug map-selection%})
- [Styling]({% slug map-styling-shapesstyles %})
