---
title: Required Assemblies for UWP Release Build
description: How to add dynamically items to the accordion control
type: how-to
page_title: UWP Release Build Missing Border
slug: uwp-release-build
position: 
tags: xamarin, accordion, items, dynamically
ticketid: 1507547
res_type: kb
---

## Environment

<table>
	<tbody>
		<tr>
			<td>Product Version</td>
			<td>2021.1 216.1</td>
		</tr>
		<tr>
			<td>Product</td>
			<td>UI for Xamarin</td>
		</tr>
	</tbody>
</table>


## Description

When the app is built in Release mode for UWP, you may experience issues like:
-  the border around Button, ComboBox, AutoCompleteView, Pickers is not visible 

The reason behind this is that the .NET Native Toolchain strips the assemblies needed for visualizing the RadBorder control.

## Solution

Make sure that the Telerik renderers are not stripped out by the UWP .NETNative compilation step. 

Add the following code inside the App.xaml.cs file of the UWP Project:

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
