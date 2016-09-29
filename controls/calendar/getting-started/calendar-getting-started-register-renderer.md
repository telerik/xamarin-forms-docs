---
title: Register Calendar Renderer
page_title: Register Calendar Renderer
position: 2
slug: calendar-getting-started-register-renderer
---

# Register the RadCalendar renderer

## Android Project

You have to add the following line to the **MainActivity.cs** file outside the scope of the namespace just after the using statements:

	[assembly: Xamarin.Forms.ExportRenderer(typeof(Telerik.XamarinForms.Input.RadCalendar), typeof(Telerik.XamarinForms.InputRenderer.Android.CalendarRenderer))]


## iOS Project

You have to add the following line to the **AppDelegate.cs** file outisde the scope of the namespace just after the using statements:

	[assembly: Xamarin.Forms.ExportRenderer(typeof(Telerik.XamarinForms.Input.RadCalendar), typeof(Telerik.XamarinForms.InputRenderer.iOS.CalendarRenderer))]

You also have to create an instance of the renderer in the `FinishedLaunching(...)` method before the `Forms.Init()` call and right after it call the `TelerikForms.Init()`.

	public override bool FinishedLaunching(UIApplication app, NSDictionary options)
    {
        new CalendarRenderer();

        global::Xamarin.Forms.Forms.Init();
        Telerik.XamarinForms.Common.iOS.TelerikForms.Init();
        LoadApplication(new App());

        return base.FinishedLaunching(app, options);
    }
    
## UPW Project

<!--TODO-->

## Windows 8.1 and Windows Phone 8.1 Projects

You have to add the following line to the **MainPage.xaml.cs** file outisde the scope of the namespace just after the using statements:

	[assembly: Xamarin.Forms.Platform.WinRT.ExportRenderer(typeof(Telerik.XamarinForms.Input.RadCalendar), typeof(Telerik.XamarinForms.InputRenderer.WinRT.CalendarRenderer))]

## Windows Phone 8 Project

You have to add the following line to the **MainPage.xaml.cs** file outisde the scope of the namespace just after the using statements:

	[assembly: Xamarin.Forms.ExportRenderer(typeof(Telerik.XamarinForms.Input.RadCalendar), typeof(Telerik.XamarinForms.InputRenderer.WinPhone.CalendarRenderer))]



## See Also