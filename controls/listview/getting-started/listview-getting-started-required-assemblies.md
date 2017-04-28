---
title: Required Telerik Assemblies
page_title: Required Telerik Assemblies
position: 1
slug: listview-getting-started-required-assemblies
---

# Required Telerik Assemblies

This article contains information about which assemblies are required by the **RadListView** control.

## References after R2 2017

> The path of the assemblies is relative to the `Binaries` folder that is located in the installation folder of the controls. The default location is:  
> `C:\Program Files (x86)\Telerik\UI for Xamarin RX XXX\Binaries`.

> Please keep in mind that all binaries built for a specific platform are placed in a folder named after that platform.

| Platform | Assemblies |
| -------- | ---------- |
| Portable | Telerik.XamarinForms.Common.dll <br/> Telerik.XamarinForms.DataControls.dll |
| Android  | Telerik.Xamarin.Android.Common.dll <br/> Telerik.Xamarin.Android.Data.dll <br/> Telerik.Xamarin.Android.Input.dll <br/> Telerik.Xamarin.Android.List.dll <br/> Telerik.XamarinForms.Common.dll <br/> Telerik.XamarinForms.DataControls.dll |
| iOS      | Telerik.Xamarin.iOS.dll  <br/> Telerik.XamarinForms.Common.dll <br/> Telerik.XamarinForms.DataControls.dll |
| UWP      | Telerik.Core.dll <br/> Telerik.Data.dll <br/> Telerik.UI.Xaml.Controls.Data.UWP.dll <br/> Telerik.UI.Xaml.Primitives.UWP.dll <br/> Telerik.UI.Xaml.Input.UWP.dll <br/> Telerik.XamarinForms.Common.dll <br/> Telerik.XamarinForms.DataControls.dll |
| Windows 8.1 | WinRT\Common\Telerik.Core.dll <br/> WinRT\Common\Telerik.Data.dll <br/> WinRT\Windows 8.1\Telerik.UI.Xaml.Controls.Data.dll <br/> WinRT\Windows 8.1\Telerik.UI.Xaml.Primitives.dll <br/> WinRT\Windows 8.1\Telerik.UI.Xaml.Input.dll<br/> Telerik.XamarinForms.Common.dll <br/> Telerik.XamarinForms.DataControls.dll |
| Windows Phone 8.1 | WinRT\Common\Telerik.Core.dll <br/> WinRT\Common\Telerik.Data.dll <br/> WinRT\Windows Phone 8.1\Telerik.UI.Xaml.Controls.Data.dll <br/> WinRT\Windows Phone 8.1\Telerik.UI.Xaml.Primitives.dll <br/> WinRT\Windows Phone 8.1\Telerik.UI.Xaml.Input.dll<br/> Telerik.XamarinForms.Common.dll <br/> Telerik.XamarinForms.DataControls.dll |
| Windows Phone 8.0 | **RadListView** is not available |

## References prior R2 2017

> The path of the assemblies is relative to the `Binaries` folder that is located in the installation folder of the controls. The default location is:  
> `C:\Program Files (x86)\Telerik\UI for Xamarin RX XXX\Binaries`.

Here are listed all assemblies required by the RadListView control.

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
Telerik.XamarinForms.DataControls<br/>
Telerik.XamarinForms.Common
</td>
</tr>

<tr>
<td rowspan="3">Android</td>
<td>Android\</td>
<td>
Telerik.Xamarin.Android.Data<br/>
Telerik.Xamarin.Android.Input<br/>
Telerik.Xamarin.Android.List<br/>
Telerik.Xamarin.Android.Common
</td>
</tr>

<tr>
<td>XamarinForms\Common\</td>
<td>
Telerik.XamarinForms.DataControls<br/>
Telerik.XamarinForms.Common
</td>
</tr>

<tr>
<td>XamarinForms\Android\</td>
<td>
Telerik.XamarinForms.DataControlsRenderer.Android<br/>
Telerik.XamarinForms.Common.Android
</td>
</tr>

<tr>
<td rowspan="3">iOS</td>
<td>iOS\</td>
<td>
Telerik.Xamarin.iOS
</td>
</tr>

<tr>
<td>XamarinForms\Common\</td>
<td>
Telerik.XamarinForms.DataControls<br/>
Telerik.XamarinForms.Common
</td>
</tr>

<tr>
<td>XamarinForms\iOS\</td>
<td>
Telerik.XamarinForms.DataControlsRenderer.iOS<br/>
Telerik.XamarinForms.Common.iOS
</td>
</tr>

<tr>
<td rowspan="3">UWP</td>
<td>UWP\</td>
<td>
Telerik.Core<br/>
Telerik.Data<br/>
Telerik.UI.Xaml.Controls.Data.UWP<br/>
Telerik.UI.Xaml.Input.UWP<br/>
Telerik.UI.Xaml.Primitives.UWP
</td>
</tr>

<tr>
<td>XamarinForms\Common\</td>
<td>
Telerik.XamarinForms.DataControls<br/>
Telerik.XamarinForms.Common
</td>
</tr>

<tr>
<td>XamarinForms\UWP\</td>
<td>
Telerik.XamarinForms.DataControlsRenderer.UWP<br/>
Telerik.XamarinForms.Common.UWP
</td>
</tr>

<tr>
<td rowspan="4">Windows 8.1</td>
<td>WinRT\Common\</td>
<td>
Telerik.Core<br/>
Telerik.Data
</td>
</tr>

<tr>
<td>WinRT\Windows 8.1\</td>
<td>
Telerik.UI.Xaml.Controls.Data<br/>
Telerik.UI.Xaml.Input<br/>
Telerik.UI.Xaml.Primitives
</td>
</tr>

<tr>
<td>XamarinForms\Common\</td>
<td>
Telerik.XamarinForms.DataControls<br/>
Telerik.XamarinForms.Common
</td>
</tr>

<tr>
<td>XamarinForms\WinRT\Windows\</td>
<td>
Telerik.XamarinForms.DataControlsRenderer.WinRT.Windows<br/>
Telerik.XamarinForms.Common.WinRT.Windows
</td>
</tr>

<tr>
<td rowspan="4">Windows Phone 8.1</td>
<td>WinRT\Common\</td>
<td>
Telerik.Core<br/>
Telerik.Data
</td>
</tr>

<tr>
<td>WinRT\Windows Phone 8.1\</td>
<td>
Telerik.UI.Xaml.Controls.Data<br/>
Telerik.UI.Xaml.Input<br/>
Telerik.UI.Xaml.Primitives
</td>
</tr>

<tr>
<td>XamarinForms\Common\</td>
<td>
Telerik.XamarinForms.DataControls<br/>
Telerik.XamarinForms.Common
</td>
</tr>

<tr>
<td>XamarinForms\WinRT\WinPhone\</td>
<td>
Telerik.XamarinForms.DataControlsRenderer.WinRT.WindowsPhone<br/>
Telerik.XamarinForms.Common.WinRT.WindowsPhone
</td>
</tr>

<tr>
<td>Windows Phone 8</td>
<td colspan="2"><strong>RadListView</strong> is not available for Windows Phone 8.</td>
</tr>

</tbody>
</table>

>To manually register the renderer users should follow these steps [Register ListView Renderer]({% slug listview-getting-started-register-renderer %})

## See Also

- [ListView Getting Started]({% slug listview-getting-started %})