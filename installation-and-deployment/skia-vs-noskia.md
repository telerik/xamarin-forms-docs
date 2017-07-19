---
title: Lite vs Standard Assemblies
page_title: Lite vs Standard Assemblies
slug: telerik-light-assemblies
position:
---

## Lite Assemblies

Some of the controls included in the **UI for Xamarin** suite rely on the **SkiaSharp** rendering library. This is the reason why reference to it should be added when using the standard Telerik UI for Xamarin libraries. However, in case you do not intend to use these controls(Gauges, RadRating, RadBusyIndicator) you can reference the binaries included in the **Lite** folder of your local installation. This will eventually lead to lower size when deploying your application in the respective store. If you are using **NuGet** as a package manager, you should install the **.Lite** package.

As advised in the first paragraph, the difference between the lite and standard binaries is that the former do not need the actual **SkiaSharp** binary files to function as intended. Instead, they reference an empty assembly labeled **Telerik.XamarinForms.SkiaSharp**. 
 
>important If you need to include controls that rely on the **SkiaSharp** library and you are using the lite assemblies, an **InvalidReferenceException** with the following message will be thrown: *Missing assembly reference. Please use the non-Light version of the assemblies/nuget packages.*

If you come across this exception, please make sure that you have added references to the correct binary files.

## See Also

* [Skia Graphics Library](https://skia.org/)

* [Telerik NuGet Server]({%slug telerik-nuget-server%})
