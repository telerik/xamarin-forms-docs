---
title: Overview
page_title: Blazor Mobile Binding
slug: blazor-mobile-bindings-overview
tags: blazor,controls,overview, mobile,xamarin
position: 0
publish: true
---

# Blazor Mobile Bindings for Xamarin

## Overview

[Experimental Mobile Blazor Bindings](https://docs.microsoft.com/en-us/mobile-blazor-bindings/) enable developers to create native mobile apps for iOS and Andoid using .Net and C#. The UI components and behaviors, which are based on Xamarin.Forms, are defined using the [Razor](https://docs.microsoft.com/en-us/aspnet/core/mvc/views/razor?view=aspnetcore-3.1) syntax. 
With Telerik mobile Blazor Bindings you can take full advantage of the Telerik UI for Xamarin suite in a Mobile Blazor Bindings project. 

The available controls which can be used in Mobile Blazor Bindings projects are listed in the table below: 

| Controls |
| -------- |
| [AutoCompleteView]({%slug autocompleteview-blazor-overview%}) |
| [Border]({%slug border-blazor-overview%}) |
| [BusyIndicator]({%slug busyindicator-blazor-overview%}) |
| [Button]({%slug button-blazor-overview%}) |
| [CheckBox]({%slug checkbox-blazor-overview%}) |
| [DataGrid]({%slug datagrid-blazor-overview%}) |
| [Expander]({%slug expander-blazor-overview%}) |
| [ListView]({%slug listview-blazor-overview%}) |
| [SideDrawer]({%slug sidedrawer-blazor-overview%}) |

## Getting Started

Let’s review the steps needed to get started with the Telerik UI for Xamarin controls in a Mobile Blazor Bindings project.

### 1. Setting up the project.

Let's begin with a new Xamarin Mobile Blazor project. Visit the [Getting Started](https://docs.microsoft.com/en-us/mobile-blazor-bindings/get-started) article in the Microsoft documentation. Now, we can start adding our Telerik Controls.

> For a faster quick-start, visit [Walkthrough: Creating your First App](https://docs.microsoft.com/en-us/mobile-blazor-bindings/walkthroughs/build-first-app).

### 2. Adding the required Telerik references

You have two options:

*	Add the Telerik UI for Xamarin Blazor Nuget package following the instructions from the [Telerik Nuget package server]({%slug telerik-nuget-server%}) topic.

*	Add the references to Telerik assemblies manually. Each control's Getting Started article contains a section which describes the needed Telerik assemblies.

>important No matter whether the Telerik UI for Xamarin Blazor assemblies are added manually or using the Telerik NuGet server, they  the references need to be added in the `_Imports.razor` page:

for example: 

```C#
@using Telerik.XamarinForms.Blazor.Primitives
@using Telerik.XamarinForms.Blazor.Input
@using Telerik.XamarinForms.Blazor.Common
@using Telerik.XamarinForms.Blazor.DataControls
```

>important **RadBusyIndicator** is rendered via the SkiaSharp graphics library so you need to install , **RadDataGrid** is renderer for Android via the SkiaSharp graphics library, so you need to install also **SkiaSharp.Views.Forms** in the .NET Standard and Android projects.
