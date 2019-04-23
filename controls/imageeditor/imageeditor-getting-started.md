---
title: Getting Started
page_title: Getting Started
position: 1
slug: imageeditor-getting-started
---

# Getting Started

This article will guide you through the steps needed to add a basic **RadImageEditor** control in your application.

* [Setting up the app](#1-setting-up-the-app)
* [Adding the required Telerik references](#2-adding-the-required-telerik-references)
* [Adding RadImageEditor control](#3-adding-radimageeditor-control)

## 1. Setting up the app

Take a look at these articles and follow the instructions to setup your app:

- [Setup app with Telerik UI for Xamarin on Windows]({%slug getting-started-windows%})
- [Setup app with Telerik UI for Xamarin on Mac]({%slug getting-started-mac%})

## 2. Adding the required Telerik references

You have two options:

* Add the Telerik UI for Xamarin Nuget packages following the instructions in [Telerik NuGet package server]({%slug telerik-nuget-server%}) topic.

* Add the references to Telerik assemblies manually, check the list below with the required assemblies for **RadImageEditor** component:

| Platform | Assemblies |
| -------- | ---------- |
| Portable | Telerik.XamarinForms.DataControls.dl<br/>Telerik.XamarinForms.Common.dll<br/>Telerik.XamarinForms.Primitives.dll |
| Android  | Telerik.Xamarin.Android.Common.dll<br/>Telerik.Xamarin.Android.Primitives.dll<br/>Telerik.XamarinForms.ImageEditor.dll<br/> Telerik.XamarinForms.Primitives.dll<br/> Telerik.XamarinForms.Common.dll |
| iOS      | Telerik.Xamarin.iOS.dll <br/>Telerik.XamarinForms.ImageEditor.dll<br/>Telerik.XamarinForms.Primitives.dll<br/>Telerik.XamarinForms.Common.dll |
| UWP      | Telerik.UI.Xaml.Primitives.UWP.dll<br/>Telerik.XamarinForms.ImageEditor.dll<br/>Telerik.XamarinForms.Primitives.dll |

## 3. Adding RadImageEditor control

You could use one of the following approaches:

#### Drag the control from the Toolbox. 

Take a look at the following topics on how to use the toolbox:

* [Telerik UI for Xamarin Toolbox on Windows]({%slug telerik-xamarin-toolbox%})
* [Telerik UI for Xamarin Toolbox on Mac]({%slug telerik-xamarin-toolbox-mac%})
	
#### Create the control definition in XAML or C#.

The snippet below shows a simple RadImageEditor definition:



In addition to this, you need to add the following namespace:



Finally, set the ImageEditor as content of your page.

This is the result:

![ImageEditor Getting Started Example](images/imageeditor-getting-started.png "ImageEditor Getting Started Example")

>important **SDK Browser** and **QSF** applications contain different examples that show ImageEditors's main features. You can find the applications in the **Examples** and **QSF** folders of your local **Telerik UI for Xamarin** installation.

## See Also

- [ImageEditor Toolbar]({%slug imageeditor-toolbar%})
- [Custom Toolbar]({%slug imageeditor-custom-toolbar%})
