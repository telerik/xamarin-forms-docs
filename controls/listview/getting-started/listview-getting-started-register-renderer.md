---
title: Register ListView Renderer
page_title: Register ListView Renderer
position: 2
slug: listview-getting-started-register-renderer
---

# Register the RadListView renderer

## Android Project

You have to add the following lines to the **MainActivity.cs** file outside the scope of the namespace just after the using statements:

<snippet id='listview-getting-started-android-renderer'/>

## iOS Project

You have to add the following lines to the **AppDelegate.cs** file outside the scope of the namespace just after the using statements:

<snippet id='listview-getting-started-ios-renderer'/>

You also have to create an instance of the renderer in the `FinishedLaunching(...)` method before the `Forms.Init()` call which is called right before the `TelerikForms.Init()` call.

<snippet id='listview-getting-started-ios-init'/>
 
## UWP Project

You have to add the following lines to edit the **MainPage.xaml.cs** file outside the scope of the namespace just after the using statements:

<snippet id='listview-getting-started-uwp-renderer'/>

## Windows 8.1 and Windows Phone 8.1 Projects

You have to add the following lines to edit the **MainPage.xaml.cs** file outside the scope of the namespace just after the using statements:

<snippet id='listview-getting-started-winrt-renderer'/>

## See Also

- [ListView Getting Started]({% slug listview-getting-started %})