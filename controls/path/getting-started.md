---
title: Getting Started
page_title: Getting Started with Xamarin.Forms Path Control
description: Check our &quot;Getting Started&quot; documentation article for Telerik Path for Xamarin control.
position: 1
slug: path-getting-started
---

# Getting Started

This article will guide you through the steps needed to add a basic **RadPath** control in your application.

* [Setting up the app](#1-setting-up-the-app)
* [Adding the required Telerik references](#2-adding-the-required-telerik-references)
* [Adding RadPath control](#3-adding-radpath-control)

## 1. Setting up the app

Take a look at these articles and follow the instructions to setup your app:

- [Setup app with Telerik UI for Xamarin on Windows]({%slug getting-started-windows%})
- [Setup app with Telerik UI for Xamarin on Mac]({%slug getting-started-mac%})

## 2. Adding the required Telerik references

You have two options:

* Add the Telerik UI for Xamarin Nuget package following the instructions in [Telerik NuGet package server]({%slug telerik-nuget-server%}) topic.

If you don't want to add the all Telerik.UI.for.Xamarin nuget package, you have the option to add a separate nuget package. For RadPath control you have to install the **Telerik.UI.for.Xamarin.Primitives** nuget package. This nuget will automatically refer the *Telerik.UI.for.Xamarin.Common* and *Telerik.UI.for.Xamarin.SkiaSharp* nuget packages.

* Add the references to Telerik assemblies manually, check the list below with the required assemblies for **RadPath** component:

| Platform | Assemblies |
| -------- | ---------- |
| Portable | Telerik.XamarinForms.Common.dll<br/>Telerik.XamarinForms.Input.dll<br/>Telerik.XamarinForms.Primitives.dll <br /> Telerik.XamarinForms.SkiaSharp.dll
| Android  | Telerik.Xamarin.Android.Common.dll<br/>Telerik.Xamarin.Android.Data.dll <br /> Telerik.Xamarin.Android.Input.dll<br/>Telerik.Xamarin.Android.List.dll<br/>Telerik.Xamarin.Android.Primitives.dll<br/>Telerik.XamarinForms.Common.dll<br/> Telerik.XamarinForms.Input.dll<br/> Telerik.XamarinForms.Primitives.dll <br /> Telerik.XamarinForms.SkiaSharp.dll
| iOS      | Telerik.Xamarin.iOS.dll <br/>Telerik.XamarinForms.Common.dll<br/>Telerik.XamarinForms.Input.dll<br/>Telerik.XamarinForms.Primitives.dll<br /> Telerik.XamarinForms.SkiaSharp.dll
| UWP      | Telerik.Core.dll<br/> Telerik.Data.dll <br />Telerik.UI.Xaml.Controls.Data.UWP.dll <br />Telerik.UI.Xaml.Input.UWP.dll<br/>Telerik.UI.Xaml.Primitives.UWP.dll<br/>Telerik.XamarinForms.Common.dll<br/>Telerik.XamarinForms.Input.dll<br/>Telerik.XamarinForms.Primitives.dll<br /> Telerik.XamarinForms.SkiaSharp.dll

>important RadPath is rendered via the **SkiaSharp** graphics library so you need to install also [SkiaSharp.Views.Forms](https://www.nuget.org/packages/SkiaSharp.Views.Forms) in all projects of the Xamarin solution (.Net Standard/Shared, Android, iOS, etc). 

## 3. Adding RadPath control

If your app is correctly set, you are ready to add a **RadPath** control within your page.  

RadPath control exposes **Geometry** property which should be assigned to a RadPathGeometry object. [RadPathGeometry]({% slug path-structure %}) consists of different RadPathFigures such as line and arc. RadPath also provides a few predefined geometries such as star, circle and other. Below you can find two examples of creating a path with built-in as well as custom geometry.

### Creating RadPath with built-in geometry

RadPath provides several built-in geometries that can be found in the *Telerik.XamarinForms.Input.Geometries* static class. Below you could find a list of the available geometries:

* Star;
* Circle;
* Heart;
* Diamond.

You can choose any of those and set it directly to the Geometry property of the Path component:

<snippet id='path-gettingstarted-starpath-xaml'/>
<snippet id='path-gettingstarted-starpath-code' />

In addition to this you need to add the following namespaces:

```XAML
xmlns:telerikPrimitives="clr-namespace:Telerik.XamarinForms.Primitives;assembly=Telerik.XamarinForms.Primitives"           
xmlns:telerikInput="clr-namespace:Telerik.XamarinForms.Input;assembly=Telerik.XamarinForms.Input"
```

### Creating RadPath with custom geometry

You are free to create a custom geometry which will be visualized by the **RadPath** control. For that purpose, you need to create object of type **RadPathGeometry** and add a **RadPathFigure** with the needed segments.

The next example shows a RadPath with an Arc definition:

<snippet id='path-gettingstarted-custompath-xaml'/>
<snippet id='path-gettingstarted-custompath-code' />

and add the following namespace:

<snippet id='xmlns-telericommon' />

Both RadPath objects appearance can be reviewed in the image below:

![RadPath Figures](images/custom_default_paths.png)

>important **SDK Browser** and **QSF** applications contain different examples that show RadPath's main features. You can find the applications in the **Examples** and **QSF** folders of your local **Telerik UI for Xamarin** installation.

## See Also

- [PathGeometry]({% slug path-structure %})
