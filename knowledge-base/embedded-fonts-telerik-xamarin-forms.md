---
title: Embeded Fonts in Telerik UI for Xamarin Controls
description: how-to add embedded fonts in .net standard project and use it
type: how-to
page_title: add embeded fonts in shared project and set it for telerik xamarin controls
slug: embedded-fonts-telerik-xamarin-forms
position: 
tags: 
ticketid: 1527852
res_type: kb
---

## Environment
<table>
	<tbody>
		<tr>
			<td>Product Version</td>
			<td>2021.2.615.1</td>
		</tr>
		<tr>
			<td>Product</td>
			<td>TreeView for Xamarin</td>
		</tr>
	</tbody>
</table>


## Description

This article shows how to add embedded fonts in shared project and how to use the font in Telerik UI for Xamarin controls. 

## Solution

1. Create a folder **Resources** inside the .NET Standar project and then create a subfolder **Fonts**.

2. Add your `.ttf` file or `.otf` file inside the **Fonts** folder.

3. Register the font inside the `AssemblyInfo.cs` file.

```C#
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

[assembly: XamlCompilation(XamlCompilationOptions.Compile)]
[assembly: ExportFont("telerikfontexamples.otf", Alias = "TE")]
```

4. Consume the font inside any Telerik UI for Xamarin control and set the icon's where applicable. 

Exmaple with the TreeView expand collapse indicator

Add the font alias ad a value of the `FontFamily` and the icon code as a value of the symbol/glyph/text property:

```XAML
 <Style TargetType="telerikTreeView:ExpandCollapseIndicator">
    <Setter Property="FontFamily" Value="TE"/>
    <Setter Property="CollapsedSymbol" Value="&#xE824;"/>
    <Setter Property="ExpandedSymbol" Value="&#xE80D;"/>
</Style>
```
