---
title: Register Chart Renderers
page_title: Register Chart Renderers
position: 2
slug: chart-getting-started-register-renderer
isVisible: false
---

# Register the RadChart renderer

## Android Project

You have to add the following lines to the **MainActivity.cs** file outside the scope of the namespace just after the using statements:
  
<snippet id='chart-getting-started-android-renderers'/>

## iOS Project

You have to add the following lines to the **AppDelegate.cs** file outside the scope of the namespace just after the using statements:

<snippet id='chart-getting-started-ios-renderers'/>

You also have to call the `TelerikForms.Init()` method right after the `Forms.Init()` call.

<snippet id='chart-getting-started-ios-init'/>

## UWP Projects

You have to add the following lines to edit the **MainPage.xaml.cs** file outside the scope of the namespace just after the using statements:

<snippet id='chart-getting-started-uwp-renderers'/>

## Windows 8.1 and Windows Phone 8.1 Projects

You have to add the following lines to edit the **MainPage.xaml.cs** file outside the scope of the namespace just after the using statements:

<snippet id='chart-getting-started-winrt-renderers'/>

## Windows Phone 8 Project

You have to add the following lines to the **MainPage.xaml.cs** file outside the scope of the namespace just after the using statements:

<snippet id='chart-getting-started-wp-renderers'/>

# See Also

- [Chart Getting Started]({% slug chart-getting-started %})
