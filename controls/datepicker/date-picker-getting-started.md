---
title: Getting Started
page_title: Getting Started with Xamarin.Forms Date Picker Control
description: Check our &quot;Getting Started&quot; documentation article for Telerik DatePicker for Xamarin control.
position: 1
slug: date-picker-getting-started
---

# Getting Started with Date Picker for Xamarin

This article will guide you through the steps needed to add a basic **RadDatePicker** control in your application.

* [Setting up the app](#1-setting-up-the-app)
* [Adding the required Telerik references](#2-adding-the-required-telerik-references)
* [Adding RadDatePicker control](#3-adding-raddatetimepicker-control)

## 1. Setting up the app

Take a look at these articles and follow the instructions to setup your app:

- [Setup app with Telerik UI for Xamarin on Windows]({%slug getting-started-windows%})
- [Setup app with Telerik UI for Xamarin on Mac]({%slug getting-started-mac%})

## 2. Adding the required Telerik references

You have two options:

* Add the Telerik UI for Xamarin Nuget package following the instructions in [Telerik NuGet package server]({%slug telerik-nuget-server%}) topic.

>note If you don't want to add the all Telerik.UI.for.Xamarin nuget package, you have the option to install a separate nuget package. For RadDatePicker control you have to install the **Telerik.UI.for.Xamarin.Input** nuget package. This nuget will automatically refer the Telerik.UI.for.Xamarin.Primitives, Telerik.UI.for.Xamarin.Common, and Telerik.UI.for.Xamarin.DataControls nuget packages.

* Add the references to Telerik assemblies manually, check the list below with the required assemblies for **RadDatePicker** component:

| Platform | Assemblies |
| -------- | ---------- |
| Portable | Telerik.XamarinForms.Input<br/>Telerik.XamarinForms.Common.dll<br/>Telerik.XamarinForms.Primitives.dll<br/>Telerik.XamarinForms.DataControls.dll<br/>Telerik.XamarinForms.SkiaSharp.dll |
| Android  | Telerik.XamarinForms.Input<br/>Telerik.XamarinForms.Common.dll<br/>Telerik.XamarinForms.Primitives.dll<br/>Telerik.XamarinForms.DataControls.dll<br/>Telerik.XamarinForms.SkiaSharp.dll |
| iOS      | Telerik.XamarinForms.Input<br/>Telerik.XamarinForms.Common.dll<br/>Telerik.XamarinForms.Primitives.dll<br/>Telerik.XamarinForms.DataControls.dll<br/>Telerik.XamarinForms.SkiaSharp.dll |
| UWP      | Telerik.XamarinForms.Input<br/>Telerik.XamarinForms.Common.dll<br/>Telerik.XamarinForms.Primitives.dll<br/>Telerik.XamarinForms.DataControls.dll<br/>Telerik.XamarinForms.SkiaSharp.dll |

## 3. Adding RadDatePicker control

You could use one of the following approaches:

#### Drag the control from the Toolbox. 

Take a look at the following topics on how to use the toolbox:

* [Telerik UI for Xamarin Toolbox on Windows]({%slug telerik-xamarin-toolbox%})
* [Telerik UI for Xamarin Toolbox on Mac]({%slug telerik-xamarin-toolbox-mac%})
	
#### Create the control definition in XAML or C#.

The snippet below shows a simple RadDatePicker definition:

<snippet id='datepicker-getting-started-xaml' />
<snippet id='datepicker-getting-started-csharp' />

In addition to this, you need to add the following namespace:

```XAML
xmlns:telerikInput="clr-namespace:Telerik.XamarinForms.Input;assembly=Telerik.XamarinForms.Input"
```
```C#
using Telerik.XamarinForms.Input;
```

This is the result:

![RadDatePicker](images/datepicker_getting_started.png)

>important **SDK Browser** and **Telerik Xamarin Samples** applications contain different examples that show RadTimePicker's main features. For detailed information on this go to [Xamarin Demos Applications]({%slug developer-focused-examples%}) topic.

## See Also

- [Supported Standard Date and Time Format Strings]({%slug date-picker-format-string%})
- [Key Features]({%slug date-picker-key-features%})
- [Templates]({%slug date-picker-templates%})
- [Selection]({%slug date-picker-selection%})
- [Styling]({%slug date-picker-styling%})
