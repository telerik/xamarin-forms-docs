---
title: Required Telerik Assemblies
page_title: Required Telerik Assemblies
position: 2
slug: datagrid-required-assemblies
---

# Required Telerik Assemblies 

This article contains a list with the assemblies required by the **RadDataGrid** component.

>important The control relies on the **SkiaSharp** rendering library for the visualization of certain elements within its structure. Reference to the relevant version of the library should be added in order to use the control. For more information - [Lite vs Standard Assemblies]({%slug telerik-light-assemblies%})

>note Please keep in mind that all binaries built for a specific platform are placed in a folder named after that platform.

| Platform | Assemblies |
| -------- | ---------- |
| Portable | Telerik.XamarinForms.Common.dll<br/>Telerik.XamarinForms.DataGrid.dll<br/>Telerik.XamarinForms.SkiaSharp.dll |
| Android  | Telerik.Xamarin.Android.Common.dll<br/>Telerik.Xamarin.Android.Data.dll<br/>Telerik.XamarinForms.Common.dll<br/>Telerik.XamarinForms.DataGrid.dll<br/>Telerik.XamarinForms.SkiaSharp.dll |
| iOS      | Telerik.XamarinForms.Common.dll<br/>Telerik.XamarinForms.DataGrid.dll<br/>Telerik.XamarinForms.SkiaSharp.dll |
| UWP      | Telerik.XamarinForms.Common.dll<br/>Telerik.XamarinForms.DataGrid.dll<br/>Telerik.XamarinForms.SkiaSharp.dll|

> The path of the assemblies is relative to the `Binaries` folder that is located in the installation folder of the controls. The default location is:  
> `C:\Program Files (x86)\Progress\UI for Xamarin RX XXX\Binaries`.


## See Also

- [Required Android Support Libraries]({%slug required-android-support-libraries%})
- [Getting Started]({%slug datagrid-getting-started%})

