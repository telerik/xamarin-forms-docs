---
title: Register SideDrawer Renderer
page_title: Register SideDrawer Renderer
position: 2
slug: sidedrawer-getting-started--register-renderer
publish: false
---

# Register the RadSideDrawer renderer

## Android Project

You have to add the following line to the **MainActivity.cs** file outside the scope of the namespace just after the using statements:

<snippet id='sidedrawer-getting-started-android-renderer'/>

## iOS Project

You have to add the following line to the **AppDelegate.cs** file outside the scope of the namespace just after the using statements:

<snippet id='sidedrawer-getting-started-ios-renderer'/>

You also have to create an instance of the renderer in the `FinishedLaunching(...)` method before the `Forms.Init()` call which is called right before the `TelerikForms.Init()` call.

<snippet id='sidedrawer-getting-started-ios-init'/>

## UWP Project

You have to add the following line to the **MainPage.xaml.cs** file outside the scope of the namespace just after the using statements:

<snippet id='sidedrawer-getting-started-uwp-renderer'/>

## Windows 8.1 and Windows Phone 8.1 Projects

You have to add the following line to the **MainPage.xaml.cs** file outside the scope of the namespace just after the using statements:

<snippet id='sidedrawer-getting-started-winrt-renderer'/>

## See Also

- [SideDrawer Getting Started]({% slug sidedrawer-getting-started %})