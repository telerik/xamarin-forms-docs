---
title: Getting Started
page_title: Getting Started
position: 0
slug: rating-getting-started
---

# Getting Started

This example will guide you through the steps needed to add a basic **RadRating** control in your application.

>Before you proceed, please, take a look at these articles and follow the instructions to setup your app:

>- [Setup on Windows]({%slug getting-started-windows%})
>- [Setup on Mac]({%slug getting-started-mac%})
>- [Required Telerik Assemblies]({%slug rating-getting-started-required-assemblies%})
> **RadRating** is rendered via the SkiaSharp graphics library so you need to install [SkiaSharp.Views.Forms](https://www.nuget.org/packages/SkiaSharp.Views.Forms/1.55.0).

## Example

If your app is setup, you are ready to add a **RadRating** control.

The simplest and fastest way to include the control is by simply defining it like this in XAML:

<snippet id='rating-gettingstarted-xaml'/>
<snippet id='rating-gettingstarted-csharp'/>

By default the control is defined in a way that five start will be visualized and non of them will be selected.

![](../images/rating-overview.png)

You have to add the following namespaces:

<snippet id='xmlns-telerikrating'/>
<snippet id='ns-telerikrating'/>