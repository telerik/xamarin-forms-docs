---
title: Register AutoComplete Renderer
page_title: Register AutoComplete Renderer
position: 2
slug: autocomplete-getting-started-register-renderer
---

# Register the AutoComplete renderer

## Android Project

You have to add the following line to the **MainActivity.cs** file outside the scope of the namespace just after the using statements:

<snippet id='autocomplete-getting-started-android-renderer'/>

## iOS Project

You have to add the following line to the **AppDelegate.cs** file outisde the scope of the namespace just after the using statements:

<snippet id='autocomplete-getting-started-ios-renderer'/>

You also have to create an instance of the renderer in the `FinishedLaunching(...)` method before the `Forms.Init()` call and right after it call the `TelerikForms.Init()`.

<snippet id='autocomplete-getting-started-ios-init'/>
    
## UWP Project

You have to add the following line to the **MainPage.xaml.cs** file outisde the scope of the namespace just after the using statements:

<snippet id='autocomplete-getting-started-uwp-renderer'/>

## Windows 8.1 and Windows Phone 8.1 Projects

You have to add the following line to the **MainPage.xaml.cs** file outisde the scope of the namespace just after the using statements:

<snippet id='autocomplete-getting-started-uwp-renderer'/>

## Windows Phone 8 Project

**AutoComplete** is not available for WindowsPhone 8.0

## See Also

- [AutoComplete Getting Started]({% slug autocomplete-getting-started %})
- [Required AutoComplete Assemblies]({% slug autocomplete-getting-started-required-assemblies %})
