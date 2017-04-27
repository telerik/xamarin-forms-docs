---
title: Required Telerik Assemblies
page_title: Required Telerik Assemblies
position: 1
slug: rating-getting-started-required-assemblies
---

# Required Telerik Assemblies

This article contains information about which assemblies are required by the **RadRating** control.

> The path of the assemblies is relative to the `Binaries` folder that is located in the installation folder of the controls. The default location is:  
> `C:\Program Files (x86)\Telerik\UI for Xamarin RX XXX\Binaries`.

| Platform | Assemblies |
| -------- | ---------- |
| Portable | Telerik.XamarinForms.Common.dll <br/> Telerik.XamarinForms.Input.dll <br/> Telerik.XamarinForms.SkiaSharp.dll |
| Android  | Telerik.XamarinForms.Common.dll <br/> Telerik.XamarinForms.Input.dll <br/> Telerik.XamarinForms.SkiaSharp.dll |
| iOS      | Telerik.XamarinForms.Common.dll <br/> Telerik.XamarinForms.Input.dll <br/> Telerik.XamarinForms.SkiaSharp.dll |
| UWP      | Telerik.XamarinForms.Common.dll <br/> Telerik.XamarinForms.Input.dll <br/> Telerik.XamarinForms.SkiaSharp.dll |
| Windows 8.1 | **RadGauge** is not available |
| Windows Phone 8.1 | **RadGauge** is not available |
| Windows Phone 8.0 | **RadGauge** is not available |

The gauge controls are rendered via the SkiaSharp graphics library so you need to install also [SkiaSharp.Views.Forms](https://www.nuget.org/packages/SkiaSharp.Views.Forms/1.55.0) in all projects of the xamarin solution (portable, android, ios, etc). 