---
title: Required Telerik Assemblies
page_title: Required Telerik Assemblies
position: 1
slug: busyindicator-getting-started-required-assemblies
---

# Required Telerik Assemblies

This article contains a list with the assemblies required by the **RadBusyIndicator** control.

> The path of the assemblies is relative to the `Binaries` folder that is located in the installation folder of the controls. The default location is:  
> `C:\Program Files (x86)\Progress\UI for Xamarin RX XXX\Binaries`.

> Please keep in mind that all binaries built for a specific platform are placed in a folder named after that platform.

| Platform | Assemblies |
| -------- | ---------- |
| Portable | Telerik.XamarinForms.Common.dll <br/> Telerik.XamarinForms.Primitives.dll <br/> Telerik.XamarinForms.SkiaSharp.dll |
| Android  | Telerik.XamarinForms.Common.dll <br/> Telerik.XamarinForms.Primitives.dll <br/> Telerik.XamarinForms.SkiaSharp.dll |
| iOS      | Telerik.XamarinForms.Common.dll <br/> Telerik.XamarinForms.Primitives.dll <br/> Telerik.XamarinForms.SkiaSharp.dll |
| UWP      | Telerik.XamarinForms.Common.dll <br/> Telerik.XamarinForms.Primitives.dll <br/> Telerik.XamarinForms.SkiaSharp.dll |
| Windows 8.1 | **RadBusyIndicator** is not available |
| Windows Phone 8.1 | **RadBusyIndicator** is not available |
| Windows Phone 8.0 | **RadBusyIndicator** is not available |

>important RadBusyIndicator is rendered via the **SkiaSharp** graphics library so you need to install also [SkiaSharp.Views.Forms](https://www.nuget.org/packages/SkiaSharp.Views.Forms) in all projects of the xamarin solution (portable, android, ios, etc). 

### See Also

- [Required Android Support Libraries]({%slug required-android-support-libraries%})
- [Getting Started]({%slug busyindicator-getting-started%})
- [Animations]({%slug busyindicator-features-animations%})
