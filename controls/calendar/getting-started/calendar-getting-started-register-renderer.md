---
title: Register Calendar Renderer
page_title: Register Calendar Renderer
position: 2
slug: calendar-getting-started-register-renderer
---

# Register the RadCalendar renderer

## Android Project

You have to add the following line to the **MainActivity.cs** file outside the scope of the namespace just after the using statements:

<snippet id='calendar-getting-started-android-renderer'/>

## iOS Project

You have to add the following line to the **AppDelegate.cs** file outisde the scope of the namespace just after the using statements:

<snippet id='calendar-getting-started-ios-renderer'/>

You also have to create an instance of the renderer in the `FinishedLaunching(...)` method before the `Forms.Init()` call and right after it call the `TelerikForms.Init()`.

<snippet id='calendar-getting-started-ios-init'/>
    
## UWP Project

You have to add the following line to the **MainPage.xaml.cs** file outisde the scope of the namespace just after the using statements:

<snippet id='calendar-getting-started-uwp-renderer'/>

## Windows 8.1 and Windows Phone 8.1 Projects

You have to add the following line to the **MainPage.xaml.cs** file outisde the scope of the namespace just after the using statements:

<snippet id='calendar-getting-started-winrt-renderer'/>

## Windows Phone 8 Project

You have to add the following line to the **MainPage.xaml.cs** file outisde the scope of the namespace just after the using statements:

<snippet id='chart-getting-started-wp-renderers'/>

## See Also

- [Calendar Getting Started]({% slug calendar-getting-started %})
