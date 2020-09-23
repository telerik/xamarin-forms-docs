---
title: Getting Started
page_title: Getting Started with Xamarin Mobile Blazor Expander Control
description: Check our &quot;Getting Started&quot; documentation article for Telerik Expander control for Xamarin Mobile Blazor Bindings.
position: 1
slug: expander-blazor-getting-started
---

# Getting Started

This article will guide you through the steps needed to add a basic **RadExpander** control in your application.

* [Setting up the app](#1-setting-up-the-app)
* [Adding the required Telerik references](#2-adding-the-required-telerik-references)
* [Adding RadExpander control](#3-adding-radexpander-control)

## 1. Setting up the app

Take a look at the [Getting Started]({%slug blazor-mobile-bindings-overview%}#getting-started) article how to setup the Telerik Blazor Mobile Bindings for Xamarin project.

## 2. Adding the required Telerik references

You have two options:

* Add the Telerik.UI.for.Xamarin.Blazor Nuget package following the instructions in [Telerik NuGet package server]({%slug telerik-nuget-server%}) topic.

* Add the references to Telerik assemblies manually, check the list below with the required assemblies for **RadExpander** component:

| Platform | Assemblies |
| -------- | ---------- |
| Portable | Telerik.XamarinForms.Blazor.Primitives.dll<br/>Telerik.XamarinForms.Primitives.dll |
| Android  | Telerik.Xamarin.Android.Primitives.dll<br/>Telerik.XamarinForms.Primitives.dll |
| iOS      | Telerik.Xamarin.iOS.dll<br/>Telerik.XamarinForms.Primitives.dll |

After that we need to add the Telerik.XamarinForms.Blazor.Primitives in our `_Imports.razor` page:

```C#
@using Telerik.XamarinForms.Blazor.Primitives;
```

## 3. Adding RadExpander control

```
<ContentView>
    <RadExpander HeaderText="More options">
        <ExpanderContent>
            <Telerik.XamarinForms.Blazor.Primitives.Expander.ExpanderContent>
                <StackLayout Margin="new Thickness(10, 20, 10, 20)">
                    <StackLayout Orientation="StackOrientation.Horizontal"
                                 Spacing="10">
                        <RadCheckBox />
                        <Label Text="Make my profile private" />
                    </StackLayout>
                    <StackLayout Orientation="StackOrientation.Horizontal"
                                 Spacing="10">
                        <RadCheckBox />
                        <Label Text="Only show my posts to people who follow me" />
                    </StackLayout>
                </StackLayout>
            </Telerik.XamarinForms.Blazor.Primitives.Expander.ExpanderContent>
        </ExpanderContent>
    </RadExpander>
</ContentView>
```

Here is the result:

![Expander Getting Started Example](images/expander-overview.png)

## See Also

- [Xamarin Mobile Blazor Bindings Overview]({%slug blazor-mobile-bindings-overview%})