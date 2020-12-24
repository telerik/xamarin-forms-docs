---
title: DatePicker border is not visible when the app is built on UWP release mode
description: Telerik UI for Xamarin Date Picker border is not visible when the app is built in Release mode on UWP platform
type: troubleshooting
page_title: 
slug: date-picker-border-not-visible-uwp-release-build
position: 
tags: picker, xamarin, ui for xamarin, uwp, release mode, border missing, .net native toolchain
ticketid: 1491402
res_type: kb
---

## Environment
<table>
	<tbody>
		<tr>
			<td>Product Version</td>
			<td>2020.3.1022.1</td>
		</tr>
		<tr>
			<td>Product</td>
			<td>DatePicker for Xamarin</td>
		</tr>
	</tbody>
</table>


## Description

The following article will show you how to visualize the Border that wrapps around the Date Picker control. When the app is built for UWP in Release Mode the border is not visible.
The reason behind this is that the .NET Native Toolchain strips the assemblies needed for visualizing the RadBorder control. 

## Solution

Make sure that the Telerik renderers are not stripped out by the UWP .NETNative compilation step. Add the following code inside the App.xaml.cs file of the UWP Project:

```C#
var assembliesToInclude = new List<Assembly>
{
	typeof(Telerik.XamarinForms.Primitives.RadBorder).GetTypeInfo().Assembly,
	typeof(Telerik.XamarinForms.PrimitivesRenderer.UWP.BorderRenderer).GetTypeInfo().Assembly,
};

Xamarin.Forms.Forms.Init(e, assembliesToInclude);
```
