---
title: Getting Started
page_title: Getting Started
description: Check our &quot;Getting Started&quot; documentation article for Telerik TimeSpan Picker for Xamarin control.
position: 1
slug: timespan-picker-getting-started
---

# Getting Started with TimeSpan Picker for Xamarin

This article will guide you through the steps needed to add a basic **RadTimeSpanPicker** control in your application.

* [Setting up the app](#1-setting-up-the-app)
* [Adding the required Telerik references](#2-adding-the-required-telerik-references)
* [Adding RadDatePicker control](#3-adding-radtimespanpicker-control)

## 1. Setting up the app

Take a look at these articles and follow the instructions to setup your app:

- [Setup app with Telerik UI for Xamarin on Windows]({%slug getting-started-windows%})
- [Setup app with Telerik UI for Xamarin on Mac]({%slug getting-started-mac%})

## 2. Adding the required Telerik references

You have two options:

* Add the Telerik UI for Xamarin Nuget packages following the instructions in [Telerik NuGet package server]({%slug telerik-nuget-server%}) topic.

* Add the references to Telerik assemblies manually, check the list below with the required assemblies for **RadTimeSpanPicker** component:

| Platform | Assemblies |
| -------- | ---------- |
| Portable | Telerik.XamarinForms.Input<br/>Telerik.XamarinForms.Common.dll<br/>Telerik.XamarinForms.Primitives.dll<br/>Telerik.XamarinForms.DataControls.dll<br/>Telerik.XamarinForms.SkiaSharp.dll |
| Android  | Telerik.XamarinForms.Input<br/>Telerik.XamarinForms.Common.dll<br/>Telerik.XamarinForms.Primitives.dll<br/>Telerik.XamarinForms.DataControls.dll<br/>Telerik.XamarinForms.SkiaSharp.dll |
| iOS      | Telerik.XamarinForms.Input<br/>Telerik.XamarinForms.Common.dll<br/>Telerik.XamarinForms.Primitives.dll<br/>Telerik.XamarinForms.DataControls.dll<br/>Telerik.XamarinForms.SkiaSharp.dll |
| UWP      | Telerik.XamarinForms.Input<br/>Telerik.XamarinForms.Common.dll<br/>Telerik.XamarinForms.Primitives.dll<br/>Telerik.XamarinForms.DataControls.dll<br/>Telerik.XamarinForms.SkiaSharp.dll |

## 3. Adding RadTimeSpanPicker control

You could use one of the following approaches:

#### Drag the control from the Toolbox. 

Take a look at the following topics on how to use the toolbox:

* [Telerik UI for Xamarin Toolbox on Windows]({%slug telerik-xamarin-toolbox%})
* [Telerik UI for Xamarin Toolbox on Mac]({%slug telerik-xamarin-toolbox-mac%})
	
#### Create the control definition in XAML or C#.

The snippet below shows a simple RadTimeSpanPicker definition:

<snippet id='timespanpicker-getting-started-xaml' />
<snippet id='timespanpicker-getting-started-csharp' />

In addition to this, you need to add the following namespace:

```XAML
xmlns:telerikInput="clr-namespace:Telerik.XamarinForms.Input;assembly=Telerik.XamarinForms.Input"
```
```C#
using Telerik.XamarinForms.Input;
```

This is the result:

![TimeSpan Picker for Xamarin](images/timespanpicker_getting_started.png)

>important **SDK Browser** and **Telerik Xamarin Samples** applications contain different examples that show RadTimeSpanPicker's main features. You can find the applications in the **Examples** and **QSF** folders of your local **Telerik UI for Xamarin** installation.

## See Also

- [Suppoted Standard TimeSpan Format Strings]({%slug timespan-picker-format-string%})
- [Key Features]({%slug timespan-picker-key-features%})
- [Templates]({%slug timespan-picker-templates%})
- [Styling]({%slug timespan-picker-styling%})
