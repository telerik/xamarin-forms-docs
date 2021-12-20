---
title: Getting Started
page_title: Xamarin SignaturePad Documentation | Getting Started
description: Check our &quot;Getting Started&quot; documentation article for Telerik SignaturePad for Xamarin control.
position: 0
tags: sing pad, signature, xamarin, xamarin.forms, pad, signature pad
slug: signaturepad-getting-started
---

# Getting Started

This article will guide you through the steps needed to add a basic **RadSignaturePad** control in your application.

* [Setting up the app](#1-setting-up-the-app)
* [Adding the required Telerik references](#2-adding-the-required-telerik-references)
* [Adding RadSignaturePad control](#3-adding-radsignaturepad-control)

## 1. Setting up the app

Take a look at these articles and follow the instructions to setup your app:

- [Setup app with Telerik UI for Xamarin on Windows]({%slug getting-started-windows%})
- [Setup app with Telerik UI for Xamarin on Mac]({%slug getting-started-mac%})

## 2. Adding the required Telerik references

You have two options:

* Add the Telerik UI for Xamarin Nuget package following the instructions in [Telerik NuGet package server]({%slug telerik-nuget-server%}) topic.

If you don't want to add the all Telerik.UI.for.Xamarin nuget package, you have the option to add a separate nuget package. For RadSignaturePad control you have to install the **Telerik.UI.for.Xamarin.Input** nuget package. This nuget will automatically refer the *Telerik.UI.for.Xamarin.Common* and *Telerik.UI.for.Xamarin.SkiaSharp* nuget packages.

* Add the references to Telerik assemblies manually, check the list below with the required assemblies for **RadSignaturePad** component:

| Platform | Assemblies |
| -------- | ---------- |
| Portable | Telerik.XamarinForms.Input.dll |
| Android  | Telerik.Xamarin.Android.Primitives.dll <br/>Telerik.XamarinForms.Primitives.dll <br/>Telerik.XamarinForms.Common.dll <br/>Telerik.XamarinForms.SkiaSharp.dll  |
| iOS      | Telerik.Xamarin.iOS.dll <br/>Telerik.XamarinForms.Primitives.dll <br/>Telerik.XamarinForms.Common.dll <br/>Telerik.XamarinForms.SkiaSharp.dll  |
| UWP      | Telerik.Core.dll <br/> Telerik.UI.Xaml.Primitives.UWP.dll <br/>Telerik.XamarinForms.Common.dll <br/>Telerik.XamarinForms.Primitives.dll <br/>Telerik.XamarinForms.Common.dll <br/>Telerik.XamarinForms.SkiaSharp.dll  |

## 3. Adding RadSignaturePad control

You could use one of the following approaches:

#### Drag the control from the Toolbox. 

Take a look at the following topics on how to use the toolbox:

* [Telerik UI for Xamarin Toolbox on Windows]({%slug telerik-xamarin-toolbox%})
* [Telerik UI for Xamarin Toolbox on Mac]({%slug telerik-xamarin-toolbox-mac%})
	
#### Create the control definition in XAML or C#.

The snippet below shows a simple RadSignaturePad definition.

<snippet id='shadow-getting-started-xaml'/>

In addition to this, you need to add the following namespace:

<snippet id='xmlns-telerikprimitives'/>
<snippet id='ns-telerikprimitives'/>

Here is the result:

![SignaturePad Getting Started Example](images/signaturepad-getting-started.png)

>important **SDK Browser** and **Telerik Xamarin Samples** applications contain different examples that show RadShadow's main features. For detailed information on this go to [Xamarin Demos Applications]({%slug developer-focused-examples%}) topic.

## See Also

- [Signature Configuration]({% slug signaturepad-configuration%})
- [Events]({% slug signaturepad-events%})
- [Commands]({% slug signaturepad-commands%})
- [Saving Options]({% slug signaturepad-saving-options%})