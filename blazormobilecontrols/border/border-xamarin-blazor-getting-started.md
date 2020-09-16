---
title: Getting Started
page_title: Getting Started with Xamarin Mobile Blazor Border Control
description: Check our &quot;Getting Started&quot; documentation article for Telerik Border control for Xamarin Mobile Blazor Bindings.
position: 1
slug: border-xamarin-blazor-getting-started
---

# Getting Started with RadBorder for Xamarin Mobile Blazor Bindings

This article will guide you through the steps needed to add a basic **RadBorder** control in your application.

* [Setting up the app](#1-setting-up-the-app)
* [Adding the required Telerik references](#2-adding-the-required-telerik-references)
* [Adding RadBorder control](#3-adding-radborder-control)

## 1. Setting up the app

Take a look at the [Getting Started]({%slug blazor-mobile-bindings-overview%}#getting-started) article how to setup the Telerik Blazor Mobile Bindings for Xamarin project.

## 2. Adding the required Telerik references

You have two options:

* Add the Telerik UI for Xamarin Blazor Nuget package following the instructions in [Telerik NuGet package server]({%slug telerik-nuget-server%}) topic.

* Add the references to Telerik assemblies manually, check the list below with the required assemblies for **RadBorder** component:

| Platform | Assemblies |
| -------- | ---------- |
| Portable | Telerik.XamarinForms.Blazor.Primitives.dll<br/>Telerik.XamarinForms.Primitives.dll |
| Android  | Telerik.Xamarin.Android.Primitives.dll<br/>Telerik.XamarinForms.Primitives.dll |
| iOS      | Telerik.Xamarin.iOS.dll <br/>Telerik.XamarinForms.Primitives.dll |

After that we need to add the Telerik.XamarinForms.Blazor.Primitives in our `_Imports.razor` page:

```C#
@using Telerik.XamarinForms.Blazor.Primitives;
```

## 3. Adding RadBorder control

```
<RadBorder BorderColor="@Color.FromHex("#4488F6")"
           CornerRadius="new Thickness(5)" 
		   HeightRequest="100">
    <Label Text="Hello there!"
            Margin="new Thickness(2)" />
</RadBorder>
```

Here is the result:

![Border Getting Started Example](images/border-overview.png)

## See Also

- [Xamarin Mobile Blazor Bindings Overview]({%slug blazor-mobile-bindings-overview%})