---
title: Xamarin AutoComplete Documentation | Required Telerik Assemblies
page_title: Required Telerik Assemblies
description: Check our &quot;Required Telerik Assemblies&quot; documentation article for Telerik AutoComplete for Xamarin control.
position: 1
slug: autocomplete-getting-started-required-assemblies
---

>caution RadAutoComplete control has been replaced with RadAutoCompleteView and will be removed from the suite soon. You can read about the differences between both components and how to migrate to the new RadAutoCompleteView in the kb article here: [Replace AutoComplete with AutoCompleteView]({%slug replace-autocomplete-with-autocompleteview%})

# Required Telerik Assemblies

This article contains a list with the assemblies required by the **RadAutoComplete** component.

> The path of the assemblies is relative to the `Binaries` folder that is located in the installation folder of the controls. The default location is:  
> `C:\Program Files (x86)\Progress\UI for Xamarin RX XXX\Binaries`. 

> Please keep in mind that all binaries built for a specific platform are placed in a folder named after that platform.

| Platform | Assemblies |
| -------- | ---------- |
| Portable | Telerik.XamarinForms.Common.dll<br/>Telerik.XamarinForms.Input.dll<br/>Telerik.XamarinForms.DataControls.dll |
| Android  | Telerik.Xamarin.Android.Common.dll<br/>Telerik.Xamarin.Android.Data.dll<br /> Telerik.Xamarin.Android.Input.dll<br/>Telerik.Xamarin.Android.List.dll<br/>Telerik.Xamarin.Android.Primitives.dll<br/>Telerik.XamarinForms.Common.dll<br/> Telerik.XamarinForms.Input.dll<br/> Telerik.XamarinForms.DataControls.dll |
| iOS      | Telerik.Xamarin.iOS.dll <br/>Telerik.XamarinForms.Common.dll<br/>Telerik.XamarinForms.Input.dll<br/>Telerik.XamarinForms.DataControls.dll |
| UWP      | Telerik.Core.dll<br/>Telerik.Data.dll<br />  Telerik.UI.Xaml.Controls.Data.UWP.dll<br /> Telerik.UI.Xaml.Input.UWP.dll<br/>Telerik.UI.Xaml.Primitives.UWP.dll<br/>Telerik.XamarinForms.Common.dll<br/>Telerik.XamarinForms.Input.dll<br/>Telerik.XamarinForms.DataControls.dll |

>important As some of the controls included in **Telerik UI for Xamarin** suite rely on the **SkiaSharp** rendering library, you should either install [SkiaSharp.Views.Forms](https://www.nuget.org/packages/SkiaSharp.Views.Forms/1.59.0) in all projects included in the Xamarin solution (portable, android, ios, etc.) or in case you do not intend to use any of the Skia-dependent components (Gauges, Rating, BusyIndicator), you could reference the [Lite assemblies]({%slug telerik-light-assemblies%}).

## See Also

- [Getting Started]({% slug autocomplete-getting-started %})