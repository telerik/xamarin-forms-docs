---
title: Required Telerik Assemblies
page_title: Required Telerik Assemblies
position: 1
slug: calendar-getting-started-required-assemblies
---

# Required Telerik Assemblies

This article contains information about which assemblies are required by the controls in the **RadCalendar** control.

## References after R2 2017

> The path of the assemblies is relative to the `Binaries` folder that is located in the installation folder of the controls. The default location is:  
> `C:\Program Files (x86)\Telerik\UI for Xamarin RX XXX\Binaries`.

> Please keep in mind that all binaries built for a specific platform are placed in a folder named after that platform.

| Platform | Assemblies |
| -------- | ---------- |
| Portable | Telerik.XamarinForms.Common.dll <br/> Telerik.XamarinForms.Input.dll |
| Android  | Telerik.Xamarin.Android.Common.dll <br/> Telerik.Xamarin.Android.Input.dll <br/> Telerik.Xamarin.Android.Primitives.dll <br/> Telerik.XamarinForms.Common.dll <br/> Telerik.XamarinForms.Input.dll |
| iOS      | Telerik.Xamarin.iOS.dll <br/> Telerik.XamarinForms.Common.dll <br/> Telerik.XamarinForms.Input.dll |
| UWP      | Telerik.Core.dll <br/> Telerik.UI.Xaml.Input.UWP.dll <br/> Telerik.UI.Xaml.Primitives.UWP.dll <br/> Telerik.XamarinForms.Common.dll <br/> Telerik.XamarinForms.Input.dll <br/> |
| Windows 8.1 | WinRT\Common\Telerik.Core.dll <br/> WinRT\Windows 8.1\Telerik.UI.Xaml.Input.dll <br/> WinRT\Windows 8.1\Telerik.UI.Xaml.Primitives.dll <br/> Telerik.XamarinForms.Common.dll <br/> Telerik.XamarinForms.Input.dll <br/> |
| Windows Phone 8.1 | WinRT\Common\Telerik.Core.dll <br/> WinRT\Windows Phone 8.1\Telerik.UI.Xaml.Input.dll <br/> WinRT\Windows Phone 8.1\Telerik.UI.Xaml.Primitives.dll <br/> Telerik.XamarinForms.Common.dll <br/> Telerik.XamarinForms.Input.dll |
| Windows Phone 8.0 | Telerik.Windows.Controls.Input.dll <br/> Telerik.Windows.Controls.Primitives.dll <br/> Telerik.Windows.Core.dll <br/> Telerik.XamarinForms.Input.dll <br/> Telerik.XamarinForms.Common.dll |

## References prior R2 2017

> The path of the assemblies is relative to the `Binaries` folder that is located in the installation folder of the controls. The default location is:  
> `C:\Program Files (x86)\Telerik\UI for Xamarin RX XXX\Binaries`.

Here are listed all assemblies required by the RadCalendar control.

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
Telerik.UI.Xaml.Input.UWP<br/>
Telerik.UI.Xaml.Primitives.UWP
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
Telerik.Core
</td>
</tr>

<tr>
<td>WinRT\Windows 8.1\ </td>
<td>
Telerik.UI.Xaml.Input<br/>
Telerik.UI.Xaml.Primitives
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
Telerik.Core
</td>
</tr>

<tr>
<td>WinRT\Windows Phone 8.1\ </td>
<td>
Telerik.UI.Xaml.Input<br/>
Telerik.UI.Xaml.Primitives
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
<td rowspan="3">Windows Phone 8</td>
<td> WindowsPhone\ </td>
<td>
Telerik.Windows.Controls.Input<br/>
Telerik.Windows.Controls.Primitives<br/>
Telerik.Windows.Core
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
<td>XamarinForms\WindowsPhone\ </td>
<td>
Telerik.XamarinForms.InputRenderer.WinPhone<br/>
Telerik.XamarinForms.Common.WinPhone
</td>
</tr>


</tbody>
<table>
 
## See Also

- [Calendar Getting Started]({% slug calendar-getting-started %})
- [Register Calendar Renderer]({% slug calendar-getting-started-register-renderer %})