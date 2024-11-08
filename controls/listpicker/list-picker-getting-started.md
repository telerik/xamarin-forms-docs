---
title: Getting Started
page_title: Getting Started with Xamarin.Forms List Picker Control
description: Check our &quot;Getting Started&quot; documentation article for Telerik ListPicker for Xamarin control.
position: 1
slug: list-picker-getting-started
---

# Getting Started with List Picker for Xamarin 

This article will guide you through the steps needed to add a basic **RadListPicker** control in your application.

* [Setting up the app](#1-setting-up-the-app)
* [Adding the required Telerik references](#2-adding-the-required-telerik-references)
* [Adding RadListPicker control](#3-adding-radlistpicker-control)

## 1. Setting up the app

Take a look at these articles and follow the instructions to setup your app:

- [Setup app with Telerik UI for Xamarin on Windows]({%slug getting-started-windows%})
- [Setup app with Telerik UI for Xamarin on Mac]({%slug getting-started-mac%})

## 2. Adding the required Telerik references

You have two options:

* Add the Telerik UI for Xamarin Nuget packages following the instructions in [Telerik NuGet package server]({%slug telerik-nuget-server%}) topic.

If you don't want to add the all Telerik.UI.for.Xamarin nuget package, you have the option to add a separate nuget package. For RadListPicker control you have to install the **Telerik.UI.for.Xamarin.Input** nuget package. This nuget will automatically refer the Telerik.UI.for.Xamarin.Primitives, Telerik.UI.for.Xamarin.Common and Telerik.UI.for.Xamarin.DataControls nuget packages.

* Add the references to Telerik assemblies manually, check the list below with the required assemblies for **RadListPicker** component:

| Platform | Assemblies |
| -------- | ---------- |
| Portable | Telerik.XamarinForms.Input<br/>Telerik.XamarinForms.Common.dll<br/>Telerik.XamarinForms.Primitives.dll<br/>Telerik.XamarinForms.DataControls.dll<br/>Telerik.XamarinForms.SkiaSharp.dll |
| Android  | Telerik.XamarinForms.Input<br/>Telerik.XamarinForms.Common.dll<br/>Telerik.XamarinForms.Primitives.dll<br/>Telerik.XamarinForms.DataControls.dll<br/>Telerik.XamarinForms.SkiaSharp.dll |
| iOS      | Telerik.XamarinForms.Input<br/>Telerik.XamarinForms.Common.dll<br/>Telerik.XamarinForms.Primitives.dll<br/>Telerik.XamarinForms.DataControls.dll<br/>Telerik.XamarinForms.SkiaSharp.dll |
| UWP      | Telerik.XamarinForms.Input<br/>Telerik.XamarinForms.Common.dll<br/>Telerik.XamarinForms.Primitives.dll<br/>Telerik.XamarinForms.DataControls.dll<br/>Telerik.XamarinForms.SkiaSharp.dll |

## 3. Adding RadListPicker control

You could use one of the following approaches:

#### Drag the control from the Toolbox. 

Take a look at the following topics on how to use the toolbox:

* [Telerik UI for Xamarin Toolbox on Windows]({%slug telerik-xamarin-toolbox%})
	
#### Create the control definition in XAML or C#.

The snippet below shows a simple RadListPicker definition:

<snippet id='listpicker-getting-started-xaml' />
<snippet id='listpicker-getting-started-csharp' />

here is a sample definition of the ViewModel:

<snippet id='listpicker-getting-started-viewmodel' />

and the Business model:

<snippet id='listpicker-getting-started-business-model' />

In addition to this, you need to add the following namespace:

```XAML
xmlns:telerikInput="clr-namespace:Telerik.XamarinForms.Input;assembly=Telerik.XamarinForms.Input"
```
```C#
using Telerik.XamarinForms.Input;
```

This is the result:

![List Picker](images/listpicker_getting_started.png)

>important **SDK Browser** and **QSF** applications contain different examples that show RadListPicker's main features. You can find the applications in the **Examples** and **QSF** folders of your local **Telerik UI for Xamarin** installation.

## See Also

- [Looping]({%slug list-picker-looping%})
- [Templates]({%slug list-picker-templates%})
- [Styling]({%slug list-picker-styling%})
- [Visual Structure]({%slug list-picker-visual-structure%})
