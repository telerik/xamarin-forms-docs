---
title: Getting Started
page_title: Xamarin AutoCompleteView Documentation | Getting Started
description: Check our &quot;Getting Started&quot; documentation article for Telerik AutoCompleteView for Xamarin control.
position: 1
slug: autocompleteview-getting-started
---

# Getting Started

This article will guide you through the steps needed to add a basic **RadAutoCompleteView** control in your application.

* [Setting up the app](#1-setting-up-the-app)
* [Adding the required Telerik references](#2-adding-the-required-telerik-references)
* [Adding RadAutoCompleteView control](#3-adding-radautocompleteview-control)
* [Populating RadAutoCompleteView with data](#4-populating-radautocompleteview-with-data)

## 1. Setting up the app

Take a look at these articles and follow the instructions to setup your app:

- [Setup app with Telerik UI for Xamarin on Windows]({%slug getting-started-windows%})
- [Setup app with Telerik UI for Xamarin on Mac]({%slug getting-started-mac%})

## 2. Adding the required Telerik references

You have two options:

* Add the Telerik UI for Xamarin Nuget package following the instructions in [Telerik NuGet package server]({%slug telerik-nuget-server%}) topic.

If you don't want to add the all Telerik.UI.for.Xamarin nuget package, you have the option to add a separate nuget package. For RadAutoCompleteView control you have to install the **Telerik.UI.for.Xamarin.Input** nuget package. This nuget will automatically refer the Telerik.UI.for.Xamarin.Primitives, Telerik.UI.for.Xamarin.Common, and Telerik.UI.for.Xamarin.DataControls nuget packages.

* Add the references to Telerik assemblies manually, check the list below with the required assemblies for **RadAutoCompleteView** component:

| Platform | Assemblies |
| -------- | ---------- |
| Portable | Telerik.XamarinForms.Common.dll<br/>Telerik.XamarinForms.Input.dll<br/>Telerik.XamarinForms.DataControls.dll<br/>Telerik.XamarinForms.Primitives.dll |
| Android  | Telerik.Xamarin.Android.Common.dll<br/>Telerik.Xamarin.Android.Data.dll<br /> Telerik.Xamarin.Android.Input.dll<br/>Telerik.Xamarin.Android.List.dll<br/>Telerik.Xamarin.Android.Primitives.dll<br/>Telerik.XamarinForms.Common.dll<br/> Telerik.XamarinForms.Input.dll<br/> Telerik.XamarinForms.DataControls.dll<br/>Telerik.XamarinForms.Primitives.dll |
| iOS      | Telerik.Xamarin.iOS.dll <br/>Telerik.XamarinForms.Common.dll<br/>Telerik.XamarinForms.Input.dll<br/>Telerik.XamarinForms.DataControls.dll<br/>Telerik.XamarinForms.Primitives.dll |
| UWP      | Telerik.Core.dll<br/>Telerik.Data.dll<br />  Telerik.UI.Xaml.Controls.Data.UWP.dll<br /> Telerik.UI.Xaml.Input.UWP.dll<br/>Telerik.UI.Xaml.Primitives.UWP.dll<br/>Telerik.XamarinForms.Common.dll<br/>Telerik.XamarinForms.Input.dll<br/>Telerik.XamarinForms.DataControls.dll<br/>Telerik.XamarinForms.Primitives.dll |

## 3. Adding RadAutoCompleteView control

You could use one of the following approaches:

#### Drag the control from the Toolbox. 

Take a look at the following topics on how to use the toolbox:

* [Telerik UI for Xamarin Toolbox on Windows]({%slug telerik-xamarin-toolbox%})
* [Telerik UI for Xamarin Toolbox on Mac]({%slug telerik-xamarin-toolbox-mac%})
	
#### Create the control definition in XAML or C#.

The snippet below shows a simple RadAutoCompleteView definition:

<snippet id='autocompleteview-getting-started-xaml' />
<snippet id='autocompleteview-getting-started-csharp' />

In addition to this, you need to add the following namespace:

<snippet id='xmlns-telerikinput'/>
<snippet id='ns-telerikinput'/>

## 4. Populating RadAutoCompleteView with data

Lets provide an items source for the suggestion list:
<snippet id='autocompleteview-getting-started-items-source'/>

Finally, set the AutoCompleteView as content of your page.

This is the result:

![AutoCompleteView Getting Started Example](images/autocompleteview-getting-started.png "AutoCompleteView Getting Started Example")

>important **SDK Browser** and **QSF** applications contain different examples that show RadAutoCompleteView's main features. You can find the applications in the **Examples** and **QSF** folders of your local **Telerik UI for Xamarin** installation.

## See Also

- [Key Features]({% slug autocompleteview-key-features%})
- [Tokens Support]({% slug autocompleteview-tokens-support%})
- [Data Binding]({% slug autocompleteview-data-binding%})
