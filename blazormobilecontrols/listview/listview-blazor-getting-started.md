---
title: Getting Started
page_title: Getting Started with Xamarin Mobile Blazor ListView Control
description: Check our &quot;Getting Started&quot; documentation article for Telerik ListView control for Xamarin Mobile Blazor Bindings.
position: 1
slug: listview-blazor-getting-started
---

# Getting Started

This article will guide you through the steps needed to add a basic **RadListView** control in your application.

* [Setting up the app](#1-setting-up-the-app)
* [Adding the required Telerik references](#2-adding-the-required-telerik-references)
* [Adding RadListView control](#3-adding-radlistview-control)

## 1. Setting up the app

Take a look at the [Getting Started]({%slug blazor-mobile-bindings-overview%}#getting-started) article how to setup the Telerik Blazor Mobile Bindings for Xamarin project.

## 2. Adding the required Telerik references

You have two options:

* Add the Telerik.UI.for.Xamarin.Blazor Nuget package following the instructions in [Telerik NuGet package server]({%slug telerik-nuget-server%}) topic.

* Add the references to Telerik assemblies manually, check the list below with the required assemblies for **RadListView** component:

| Platform | Assemblies |
| -------- | ---------- |
| Portable | Telerik.XamarinForms.Blazor.DataControls.dll<br/>Telerik.XamarinForms.DataControls.dll <br /> Telerik.XamarinForms.Primitives.dll <br /> Telerik.XamarinForms.SkiSharp.dll | 
| Android  | Telerik.Xamarin.Android.Common.dll <br/> Telerik.Xamarin.Android.Data.dll <br/> Telerik.Xamarin.Android.Input.dll <br/> Telerik.Xamarin.Android.List.dll <br/> Telerik.Xamarin.Android.Primitives.dll <br/> Telerik.XamarinForms.Common.dll <br/> Telerik.XamarinForms.DataControls.dll <br /> Telerik.XamarinForms.Primitives.dll <br /> Telerik.XamarinForms.SkiSharp.dll|
| iOS      | Telerik.Xamarin.iOS.dll  <br/> Telerik.XamarinForms.Common.dll <br/> Telerik.XamarinForms.DataControls.dll <br /> Telerik.XamarinForms.Primitives.dll <br /> Telerik.XamarinForms.SkiSharp.dll |

After that we need to add the Telerik.XamarinForms.Blazor.DataControls in our `_Imports.razor` page:

```C#
@using Telerik.XamarinForms.Blazor.DataControls;
```

## 3. Adding RadListView control

```
<ContentView>
    <RadListView ItemsSource="@Source" />
</ContentView>

@code 
{
    public List<string> Source { get; set; }

    protected override void OnInitialized()
    {
        base.OnInitialized();

        this.Source = new List<string>()
        {
            "Tom",
            "Anna", 
            "Peter", 
            "Teodor", 
            "Lorenzo",
            "Andrea",
            "Martin"
        };
    }
}
```

Here is the result:

![ListView Getting Started Example](images/listview-overview.png)

## See Also

- [Xamarin Mobile Blazor Bindings Overview]({%slug blazor-mobile-bindings-overview%})