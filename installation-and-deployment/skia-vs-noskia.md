---
title: Lite vs Standard Assemblies
page_title: Lite vs Standard Assemblies
slug: telerik-light-assemblies
position: 9
---

## Lite Assemblies

Some of the controls included in the **UI for Xamarin** suite(Gauges, Rating, BusyIndicator) rely on the **SkiaSharp** rendering library. This is the reason а reference to it should be added when using the standard Telerik UI for Xamarin libraries. However, in case you do not intend to use these controls you can reference the binaries included in the **Lite** folder of your local installation. This will eventually lead to lower size when deploying your application in the respective store. If you are using **NuGet** as a package manager, you should install the **.Lite** package.

Тhe difference between the lite and standard binaries is that the former do not need the actual **SkiaSharp** binary files to function as intended. Instead, they reference an empty assembly labeled **Telerik.XamarinForms.SkiaSharp**. 
 
>important If you need to include controls that rely on the **SkiaSharp** library and you are using the lite assemblies, an **InvalidReferenceException** with the following message will be thrown: *Missing assembly reference. Please use the non-Light version of the assemblies/nuget packages.* If you come across this exception, please make sure that you have added references to the correct binary files.

## List of controls that utilize the SkiaSharp rendering library

The following controls rely on the **SkiaSharp** library to render some elements within their structure:

* **RadDataGrid**
* **RadPath**
* **RadRating**
* **RadBusyIndicator**
* **RadGauge**

With this in mind, if you intend on using these, you need to add reference to the relevant version of **SkiaSharp**, **SkiaSharp.Views** and **SkiaSharp.Views.Forms** NuGet packages. In case you would like to not take advantage of these elements, we advise on using the Lite assemblies so that no direct references to SkiaSharp are required.

## See Also

* [Skia Graphics Library](https://skia.org/)

* [Telerik NuGet Server]({%slug telerik-nuget-server%})
