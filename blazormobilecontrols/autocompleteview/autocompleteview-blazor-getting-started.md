---
title: Getting Started
page_title: Getting Started with Xamarin Mobile Blazor AutoCompleteView Control
description: Check our &quot;Getting Started&quot; documentation article for Telerik AutoCompleteView control for Xamarin Mobile Blazor Bindings.
position: 1
slug: autocompleteview-blazor-getting-started
---

# Getting Started

This article will guide you through the steps needed to add a basic **RadAutoCompleteView** control in your application.

* [Setting up the app](#1-setting-up-the-app)
* [Adding the required Telerik references](#2-adding-the-required-telerik-references)
* [Adding RadAutoCompleteView control](#3-adding-radautocompleteview-control)

## 1. Setting up the app

Take a look at the [Getting Started]({%slug blazor-mobile-bindings-overview%}#getting-started) article how to setup the Telerik Blazor Mobile Bindings for Xamarin project.

## 2. Adding the required Telerik references

You have two options:

* Add the Telerik.UI.for.Xamarin.Blazor Nuget package following the instructions in [Telerik NuGet package server]({%slug telerik-nuget-server%}) topic.

* Add the references to Telerik assemblies manually, check the list below with the required assemblies for **RadAutoCompleteView** component:

| Platform | Assemblies |
| -------- | ---------- |
| Portable | Telerik.XamarinForms.Blazor.Input.dll<br/>Telerik.XamarinForms.Input.dll |
| Android  | Telerik.Xamarin.Android.Input.dll<br/>Telerik.XamarinForms.Input.dll |
| iOS      | Telerik.Xamarin.iOS.dll<br/>Telerik.XamarinForms.Input.dll |

After that we need to add the Telerik.XamarinForms.Blazor.Input in our `_Imports.razor` page:

```C#
@using Telerik.XamarinForms.Blazor.Input;
```

## 3. Adding RadAutoCompleteView control

```
<ContentView>
    <StackLayout>
            <RadAutoCompleteView ItemsSource="@AcvItemSource"
                                 Watermark="Search here..." />
    </StackLayout>
</ContentView>

@code
{
    public List<string> AcvItemSource { get; set; }

    protected override void OnInitialized()
    {
        base.OnInitialized();

        this.AcvItemSource = new List<string>()
        {
            "Freda Curtis",
            "Jeffery Francis",
            "Eva Lawson",
            "Emmett Santos",
            "Theresa Bryan",
            "Jenny Fuller",
            "Terrell Norris",
            "Eric Wheeler",
            "Julius Clayton",
            "Alfredo Thornton",
            "Roberto Romero",
            "Orlando Mathis",
            "Eduardo Thomas",
            "Harry Douglas"
        };
    }
}
```

Here is the result:

![AutoCompleteView Getting Started Example](images/autocompleteview-overview.png)

## See Also

- [Xamarin Mobile Blazor Bindings Overview]({%slug blazor-mobile-bindings-overview%})