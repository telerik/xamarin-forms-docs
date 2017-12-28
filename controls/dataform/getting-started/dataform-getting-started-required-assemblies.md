---
title: Required Telerik Assemblies
page_title: Required Telerik Assemblies
position: 1
slug: dataform-getting-started-required-assemblies
---

# Required Telerik Assemblies

This article contains a list with the assemblies required by the **RadDataForm** control.

## References after R2 2017

> The path of the assemblies is relative to the `Binaries` folder that is located in the installation folder of the controls. The default location is:  
> `C:\Program Files (x86)\Progress\UI for Xamarin RX XXX\Binaries`.

> Please keep in mind that all binaries built for a specific platform are placed in a folder named after that platform.

| Platform | Assemblies |
| -------- | ---------- |
| Portable | Telerik.XamarinForms.Common.dll<br/>Telerik.XamarinForms.Input.dll |
| Android  | Telerik.Xamarin.Android.Common.dll<br/>Telerik.Xamarin.Android.Data.dll<br/> Telerik.Xamarin.Android.List.dll<br/> Telerik.Xamarin.Android.Input.dll<br/>Telerik.Xamarin.Android.Primitives.dll<br/>Telerik.XamarinForms.Common.dll<br/>Telerik.XamarinForms.Input.dll |
| iOS      | Telerik.Xamarin.iOS.dll<br/>Telerik.XamarinForms.Common.dll<br/>Telerik.XamarinForms.Input.dll |
| UWP      | Telerik.Core.dll<br/>Telerik.Data.dll<br/>Telerik.UI.Xaml.Controls.Data.UWP.dll<br/>Telerik.UI.Xaml.Input.UWP.dll<br/>Telerik.UI.Xaml.Primitives.UWP.dll<br/>Telerik.XamarinForms.Common.dll<br/>Telerik.XamarinForms.Input.dll<br/>|
| Windows 8.1 | WinRT\Common\Telerik.Core.dll<br/>WinRT\Common\Telerik.Data.dll<br/>WinRT\Windows 8.1\Telerik.UI.Xaml.Input.dll<br/>WinRT\Windows 8.1\Telerik.UI.Xaml.Primitives.dll<br/>WinRT\Windows 8.1\Telerik.UI.Xaml.Controls.Data.dll<br/>Telerik.XamarinForms.Common.dll<br/>Telerik.XamarinForms.Input.dll<br/>|
| Windows Phone 8.1 | WinRT\Common\Telerik.Core.dll<br/>WinRT\Common\Telerik.Data.dll<br/> WinRT\Windows Phone 8.1\Telerik.UI.Xaml.Input.dll<br/>WinRT\Windows Phone 8.1\Telerik.UI.Xaml.Primitives.dll<br/> WinRT\Windows Phone 8.1\Telerik.UI.Xaml.Controls.Data.dll<br/>Telerik.XamarinForms.Common.dll<br/>Telerik.XamarinForms.Input.dll |
| Windows Phone 8.0 | **RadDataForm** is not available |

>important As some of the controls included in **UI for Xamarin** suite rely on the **SkiaSharp** rendering library, you should either install [SkiaSharp.Views.Forms](https://www.nuget.org/packages/SkiaSharp.Views.Forms/1.59.0) in all projects included in the Xamarin solution (portable, android, ios, etc.) or in case you do not intend to use any of the Skia-dependent components (Gauges, Rating, BusyIndicator), you could reference the [Lite assemblies]({%slug telerik-light-assemblies%}).

## References prior R2 2017

> The path of the assemblies is relative to the `Binaries` folder that is located in the installation folder of the controls. The default location is:  
> `C:\Program Files (x86)\Telerik\UI for Xamarin RX XXX\Binaries`.

Here are listed all assemblies required by the RadDataForm control.


<table>
<thead>
<tr>
<th>Platform</th>
<th>Location</th>
<th>Assemblies</th>
</tr>
</thead>
<tbody>

<tr>
<td>Portable</td>
<td>XamarinForms\Common\ </td>
<td>
Telerik.XamarinForms.Input<br/>
Telerik.XamarinForms.Common
</td>
</tr>

<tr>
<td rowspan="3">Android</td>
<td>Android\ </td>
<td>
Telerik.Xamarin.Android.Common<br/>
Telerik.Xamarin.Android.Input<br/>
Telerik.Xamarin.Android.Primitives
</td>
</tr>

<tr>
<td>XamarinForms\Common\ </td>
<td>
Telerik.XamarinForms.Common<br/>
Telerik.XamarinForms.Input
</td>
</tr>

<tr>
<td>XamarinForms\Android\ </td>
<td>
Telerik.XamarinForms.InputRenderer.Android<br/>
Telerik.XamarinForms.Common.Android
</td>
</tr>

<tr>
<td rowspan="3">iOS</td>
<td>iOS\ </td>
<td>
Telerik.Xamarin.iOS
</td>
</tr>

<tr>
<td>XamarinForms\Common\ </td>
<td>
Telerik.XamarinForms.Input<br/>
Telerik.XamarinForms.Common
</td>
</tr>

<tr>
<td>XamarinForms\iOS\ </td>
<td>
Telerik.XamarinForms.InputRenderer.iOS<br/>
Telerik.XamarinForms.Common.iOS
</td>
</tr>

<tr>
<td rowspan="3">UWP</td>
<td>UWP\ </td>
<td>
Telerik.Core<br/>
Telerik.Data<br/>
Telerik.UI.Xaml.Input.UWP<br/>
Telerik.UI.Xaml.Controls.Data.UWP
</td>
</tr>

<tr>
<td>XamarinForms\Common\ </td>
<td>
Telerik.XamarinForms.Common<br/>
Telerik.XamarinForms.Input
</td>
</tr>

<tr>
<td>XamarinForms\UWP\ </td>
<td>
Telerik.XamarinForms.Common.UWP<br/>
Telerik.XamarinForms.InputRenderer.UWP
</td>
</tr>

<tr>
<td rowspan="4">Windows 8.1</td>
<td>WinRT\Common\ </td>
<td>
Telerik.Core<br/>
Telerik.Data
</td>
</tr>

<tr>
<td>WinRT\Windows 8.1\ </td>
<td>
Telerik.UI.Xaml.Input<br/>
Telerik.UI.Xaml.Primitives<br/>
Telerik.UI.Xaml.Controls.Data
</td>
</tr>

<tr>
<td>XamarinForms\Common\ </td>
<td>
Telerik.XamarinForms.Common<br/>
Telerik.XamarinForms.Input
</td>
</tr>

<tr>
<td>XamarinForms\WinRT\Windows\ </td>
<td>
Telerik.XamarinForms.Common.WinRT.Windows<br/>
Telerik.XamarinForms.InputRenderer.WinRT.Windows
</td>
</tr>

<tr>
<td rowspan="4">Windows Phone 8.1</td>
<td>WinRT\Common\ </td>
<td>
Telerik.Core<br/>
Telerik.Data
</td>
</tr>

<tr>
<td>WinRT\Windows Phone 8.1\ </td>
<td>
Telerik.UI.Xaml.Input<br/>
Telerik.UI.Xaml.Primitives<br/>
Telerik.UI.Xaml.Controls.Data
</td>
</tr>

<tr>
<td>XamarinForms\Common\ </td>
<td>
Telerik.XamarinForms.Common<br/>
Telerik.XamarinForms.Input
</td>
</tr>

<tr>
<td>XamarinForms\WinRT\WinPhone\ </td>
<td>
Telerik.XamarinForms.Common.WinRT.WindowsPhone<br/>
Telerik.XamarinForms.InputRenderer.WinRT.WindowsPhone
</td>
</tr>

<tr>
<td>Windows Phone 8</td>
<td colspan="2"><strong>RadDataForm</strong> is not available for Windows Phone 8.</td>
</tr>

</tbody>
<table>

>Prior R2 2017 you would still need to manually register the DataForm control renderer following these steps [Register DataForm Renderer]({% slug dataform-getting-started-register-renderer %})

## See Also

- [DataForm Getting Started]({% slug dataform-getting-started %})