---
title: Required Telerik Assemblies
page_title: Required Telerik Assemblies
position: 1
slug: rating-getting-started-required-assemblies
---

# Required Telerik Assemblies

This article contains information about which assemblies are required by the **RadRating** control.

>important The control relies on the **SkiaSharp** rendering library for the visualization of certain elements within its structure. Reference to the relevant version of the library should be added in order to use the control. For more information - [Lite vs Standard Assemblies]({%slug telerik-light-assemblies%})

> The path of the assemblies is relative to the `Binaries` folder that is located in the installation folder of the controls. The default location is:  
> `C:\Program Files (x86)\Progress\Telerik UI for Xamarin RX XXX\Binaries`.

> Please keep in mind that all binaries built for a specific platform are placed in a folder named after that platform.

| Platform | Assemblies |
| -------- | ---------- |
| Portable | Telerik.XamarinForms.Common.dll <br/> Telerik.XamarinForms.Input.dll <br/> Telerik.XamarinForms.SkiaSharp.dll |
| Android  | Telerik.Xamarin.Android.Common.dll <br /> Telerik.Xamarin.Android.Data.dll <br/> Telerik.Xamarin.Android.Input.dll <br/> Telerik.Xamarin.Android.List.dll <br /> Telerik.Xamarin.Android.Primitives.dll <br/> Telerik.XamarinForms.Common.dll <br/> Telerik.XamarinForms.Input.dll <br/> Telerik.XamarinForms.SkiaSharp.dll |
| iOS      | Telerik.XamarinForms.Common.dll <br/> Telerik.XamarinForms.Input.dll <br/> Telerik.XamarinForms.SkiaSharp.dll |
| UWP      | Telerik.XamarinForms.Common.dll <br/> Telerik.XamarinForms.Input.dll <br/> Telerik.XamarinForms.SkiaSharp.dll |
| Windows 8.1 | **RadRating** is not available |
| Windows Phone 8.1 | **RadRating** is not available |
| Windows Phone 8.0 | **RadRating** is not available |

>important The Rating control is rendered via the SkiaSharp graphics library so you need to install also [SkiaSharp.Views.Forms](https://www.nuget.org/packages/SkiaSharp.Views.Forms/) in all projects of the xamarin solution (portable, android, ios, etc). 

### See Also
 
- [Required Android Support Libraries]({%slug required-android-support-libraries%})
- [Rating Getting Started]({%slug rating-getting-started%})