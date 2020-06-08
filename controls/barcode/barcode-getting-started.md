---
title: Getting Started
page_title: Xamarin Barcode Documentation | Getting Started
description: Check our &quot;Getting Started&quot; documentation article for Telerik Barcode for Xamarin control.
position: 1
slug: barcode-getting-started
---

# Getting Started

This article will guide you through the steps needed to add a basic **RadBarcode** control in your application.

* [Setting up the app](#1-setting-up-the-app)
* [Adding the required Telerik references](#2-adding-the-required-telerik-references)
* [Adding RadBarcode control](#3-adding-radbarcode-control)

## 1. Setting up the app

Take a look at these articles and follow the instructions to setup your app:

- [Setup app with Telerik UI for Xamarin on Windows]({%slug getting-started-windows%})
- [Setup app with Telerik UI for Xamarin on Mac]({%slug getting-started-mac%})

## 2. Adding the required Telerik references

You have two options:

* Add the Telerik UI for Xamarin Nuget package following the instructions in [Telerik NuGet package server]({%slug telerik-nuget-server%}) topic. Note that RadBarcode does not have a separate nuget package. 

* Add the references to Telerik assemblies manually, check the list below with the required assemblies for **RadBarcode** component:

| Platform | Assemblies |
| -------- | ---------- |
| Portable | Telerik.XamarinForms.Barcode.dll <br />Telerik.XamarinForms.Common.dll<br/>Telerik.XamarinForms.SkiaSharp.dll |
| Android  | Telerik.Xamarin.Android.Common.dll<br/>Telerik.XamarinForms.Barcode.dll<br/>Telerik.XamarinForms.Common.dll<br/>Telerik.XamarinForms.SkiaSharp.dll |
| iOS      | Telerik.Xamarin.iOS.dll <br/> Telerik.XamarinForms.Barcode.dll <br />Telerik.XamarinForms.Common.dll<br/>Telerik.XamarinForms.SkiaSharp.dll |
| UWP      | Telerik.Core.dll<br/>Telerik.XamarinForms.Barcode.dll <br/>Telerik.XamarinForms.Common.dll<br/>Telerik.XamarinForms.SkiaSharp.dll |

>important RadBarcode is rendered via the **SkiaSharp** graphics library so you need to install also [SkiaSharp.Views.Forms](https://www.nuget.org/packages/SkiaSharp.Views.Forms) in all projects of the Xamarin solution (.Net Standard/Shared, Android, iOS, etc). 

## 3. Adding RadBarcode control

If your app is setup, you are ready to add a **RadBarcode** control to your page. In the sample the QRCode symbology is used, for more details on the available Barcode symbologies go to [Supported Types]({%slug barcode-supported-types-overview %}) topic.

<snippet id='barcode-gettingstarted' />

In addition to this you need to add the following namespace:

<snippet id='xmlns-telerikbarcode'/>

Here is the result:

#### Figure 1: Barcode Getting Started

![Getting Started Example](images/barcode_getting_started.png)

>important **SDK Browser** and **QSF** applications contain different examples that show RadAutoComplete's main features. You can find the applications in the **Examples** and **QSF** folders of your local **Telerik UI for Xamarin** installation.

## See Also

- [Key Features]({% slug barcode-key-features%})
- [Supported Barcodes]({% slug barcode-supported-types-overview%})
