---
title: ComboBox border is not visible in release build (UWP)
description: border is not visible in release uwp build and button looks different
type: how-to
page_title: ComboBox border is not visible in release build (UWP) and drop-down button looks different
slug: combobox-border-not-visible-uwp-release
position: 
tags: 
ticketid: 1536269
res_type: kb
---

## Environment
<table>
	<tbody>
		<tr>
			<td>Product Version</td>
			<td>2021.3.915.1</td>
		</tr>
		<tr>
			<td>Product</td>
			<td>ComboBox for Xamarin</td>
		</tr>
	</tbody>
</table>


## Description

The article will show you how to visualize the Border that wrapps around the ComboBox control. When the app is built for UWP in Release Mode the border is not visible. The reason behind this is that the .NET Native Toolchain strips the assemblies needed for visualizing the RadBorder control.

In addition the drop-down button and clear button look different.

## Solution

Make sure that the Telerik renderers are not stripped out by the UWP .NETNative compilation step. Add the following code inside the App.xaml.cs file of the UWP Project:

```C#
var assembliesToInclude = new List<Assembly>()
{
    typeof(Telerik.XamarinForms.Input.RadButton).GetTypeInfo().Assembly,
    typeof(Telerik.XamarinForms.InputRenderer.UWP.ButtonRenderer).GetTypeInfo().Assembly,
    typeof(Telerik.XamarinForms.Primitives.RadBorder).GetTypeInfo().Assembly,
    typeof(Telerik.XamarinForms.PrimitivesRenderer.UWP.BorderRenderer).GetTypeInfo().Assembly,
};
Xamarin.Forms.Forms.Init(e, assembliesToInclude);
```