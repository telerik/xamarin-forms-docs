---
title: Getting Started
page_title: Getting Started with Button for Xamarin Mobile Blazor Bindings
description: Check our &quot;Getting Started&quot; documentation article for Telerik Button control for Xamarin Mobile Blazor Bindings.
position: 1
slug: button-blazor-getting-started
---

# Getting Started with Button for Xamarin Mobile Blazor Bindings

This article will guide you through the steps needed to add a basic **RadButton** control in your application.

* [Setting up the app](#1-setting-up-the-app)
* [Adding the required Telerik references](#2-adding-the-required-telerik-references)
* [Adding RadButton control](#3-adding-radbutton-control)

## 1. Setting up the app

Take a look at the [Getting Started]({%slug blazor-mobile-bindings-overview%}#getting-started) article how to setup the Telerik Blazor Mobile Bindings for Xamarin project.

## 2. Adding the required Telerik references

You have two options:

* Add the Telerik.UI.for.Xamarin.Blazor Nuget package following the instructions in [Telerik NuGet package server]({%slug telerik-nuget-server%}) topic.

* Add the references to Telerik assemblies manually, check the list below with the required assemblies for **RadButton** component:

| Platform | Assemblies |
| -------- | ---------- |
| Portable | Telerik.XamarinForms.Blazor.Input.dll<br/>Telerik.XamarinForms.Input.dll |
| Android  | Telerik.Xamarin.Android.Input.dll<br/>Telerik.XamarinForms.Input.dll |
| iOS      | Telerik.Xamarin.iOS.dll<br/>Telerik.XamarinForms.Input.dll |

After that we need to add the Telerik.XamarinForms.Blazor.Primitives in our `_Imports.razor` page:

```C#
@using Telerik.XamarinForms.Blazor.Primitives;
```

## 3. Adding RadButton control

```
<ContentView>
    <StackLayout WidthRequest="200"
                 VerticalOptions="LayoutOptions.Center"
                 HorizontalOptions="LayoutOptions.CenterAndExpand">
        <RadButton Text="Click me!"
                   BorderThickness="new Thickness(2)"
                   BorderColor="@Color.FromHex("4488F6")"
                   OnClick="@ButtonOnClick" />
    </StackLayout>
</ContentView>

@code 
{
    private void ButtonOnClick()
    {

    }
}
```

Here is the result:

![Button Getting Started Example](images/button-overview.png)

## See Also

- [Xamarin Mobile Blazor Bindings Overview]({%slug blazor-mobile-bindings-overview%})