---
title: Register DataForm Renderer
page_title: Register DataForm Renderer
position: 2
slug: dataform-getting-started-register-renderer
publish: false
---

# Register the RadDataForm renderer

## Android Project

You have to add the following line to the **MainActivity.cs** file outside the scope of the namespace just after the using statements:

<snippet id='dataform-getting-started-android-renderer'/>

## iOS Project

You have to add the following lines to the **AppDelegate.cs** file outside the scope of the namespace just after the using statements:

<snippet id='dataform-getting-started-ios-renderer'/>

You also have to create an instance of the renderer in the `FinishedLaunching(...)` method before the `Forms.Init()` call which is called right before the `TelerikForms.Init()` call.

<snippet id='dataform-getting-started-ios-init'/>

## UWP Project

You have to add the following lines to edit the **MainPage.xaml.cs** file outside the scope of the namespace just after the using statements:

<snippet id='dataform-getting-started-uwp-renderer'/>
	
## Windows 8.1 and Windows Phone 8.1 Projects

You have to add the following lines to edit the **MainPage.xaml.cs** file outside the scope of the namespace just after the using statements:

<snippet id='dataform-getting-started-winrt-renderer'/>

## See Also

- [DataForm Getting Started]({% slug dataform-getting-started %})