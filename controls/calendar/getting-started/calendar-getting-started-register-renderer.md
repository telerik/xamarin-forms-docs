---
title: Register Calendar Renderer
page_title: Register Calendar Renderer
position: 2
slug: calendar-getting-started-register-renderer
publish: false
---

# Register the RadCalendar renderer

>important With R2 2017 release of Telerik UI for Xamarin you do not need to manually define control renderers. The following instructions are valid for versions prior R2 2017.

## Android Project

You have to add the following line to the **MainActivity.cs** file outside the scope of the namespace just after the using statements:

<pre><code class='language-cs'>
[assembly: ExportRenderer(typeof(Telerik.XamarinForms.Input.RadCalendar), typeof(Telerik.XamarinForms.InputRenderer.Android.CalendarRenderer))]
</code></pre>

## iOS Project

You have to add the following line to the **AppDelegate.cs** file outisde the scope of the namespace just after the using statements:

<pre><code class='language-cs'>
[assembly: ExportRenderer(typeof(Telerik.XamarinForms.Input.RadCalendar), typeof(Telerik.XamarinForms.InputRenderer.iOS.CalendarRenderer))]
</code></pre>

You also have to create an instance of the renderer in the `FinishedLaunching(...)` method before the `Forms.Init()` call and right after it call the `TelerikForms.Init()`.

<pre><code class='language-cs'>
public override bool FinishedLaunching(UIApplication app, NSDictionary options)
{
    new Telerik.XamarinForms.InputRenderer.iOS.CalendarRenderer();

    Xamarin.Forms.Forms.Init();
    Telerik.XamarinForms.Common.iOS.TelerikForms.Init();

    this.LoadApplication(new App());

    return base.FinishedLaunching(app, options);
}
</code></pre>
    
## UWP Project

You have to add the following line to the **MainPage.xaml.cs** file outisde the scope of the namespace just after the using statements:

<pre><code class='language-cs'>
[assembly: Xamarin.Forms.Platform.UWP.ExportRenderer(typeof(Telerik.XamarinForms.Input.RadCalendar), typeof(Telerik.XamarinForms.InputRenderer.UWP.CalendarRenderer))]
</code></pre>

## Windows 8.1 and Windows Phone 8.1 Projects

You have to add the following line to the **MainPage.xaml.cs** file outisde the scope of the namespace just after the using statements:

<pre><code class='language-cs'>
[assembly: Xamarin.Forms.Platform.WinRT.ExportRenderer(typeof(Telerik.XamarinForms.Input.RadCalendar), typeof(Telerik.XamarinForms.InputRenderer.WinRT.CalendarRenderer))]
</code></pre>

## Windows Phone 8 Project

You have to add the following line to the **MainPage.xaml.cs** file outisde the scope of the namespace just after the using statements:

<pre><code class='language-cs'>
[assembly: Xamarin.Forms.Platform.ExportRenderer(typeof(Telerik.XamarinForms.Input.RadCalendar), typeof(Telerik.XamarinForms.InputRenderer.CalendarRenderer))]
</code></pre>

## See Also

- [Calendar Getting Started]({% slug calendar-getting-started %})
