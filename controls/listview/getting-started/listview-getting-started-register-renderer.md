---
title: Register ListView Renderer
page_title: Register ListView Renderer
position: 2
slug: listview-getting-started-register-renderer
publish: false
---

# Register the RadListView renderer

## Android Project

You have to add the following lines to the **MainActivity.cs** file outside the scope of the namespace just after the using statements:

<pre><code class='language-cs'>
[assembly: ExportRenderer(typeof(Telerik.XamarinForms.DataControls.RadListView), typeof(Telerik.XamarinForms.DataControlsRenderer.Android.ListViewRenderer))]
</code></pre>

## iOS Project

You have to add the following lines to the **AppDelegate.cs** file outside the scope of the namespace just after the using statements:

<pre><code class='language-cs'>
[assembly: ExportRenderer(typeof(Telerik.XamarinForms.DataControls.RadListView), typeof(Telerik.XamarinForms.DataControlsRenderer.iOS.ListViewRenderer))]
</code></pre>

You also have to create an instance of the renderer in the `FinishedLaunching(...)` method before the `Forms.Init()` call which is called right before the `TelerikForms.Init()` call.

<pre><code class='language-cs'>
public override bool FinishedLaunching(UIApplication app, NSDictionary options)
{
    new Telerik.XamarinForms.DataControlsRenderer.iOS.ListViewRenderer();

    Xamarin.Forms.Forms.Init();
    Telerik.XamarinForms.Common.iOS.TelerikForms.Init();

    this.LoadApplication(new App());

    return base.FinishedLaunching(app, options);
}
</code></pre>
 
## UWP Project

You have to add the following lines to edit the **MainPage.xaml.cs** file outside the scope of the namespace just after the using statements:

<pre><code class='language-cs'>
[assembly: Xamarin.Forms.Platform.UWP.ExportRenderer(typeof(Telerik.XamarinForms.DataControls.RadListView), typeof(Telerik.XamarinForms.DataControlsRenderer.UWP.ListViewRenderer))]
</code></pre>

## Windows 8.1 and Windows Phone 8.1 Projects

You have to add the following lines to edit the **MainPage.xaml.cs** file outside the scope of the namespace just after the using statements:

<pre><code class='language-cs'>
[assembly: Xamarin.Forms.Platform.WinRT.ExportRenderer(typeof(Telerik.XamarinForms.DataControls.RadListView), typeof(Telerik.XamarinForms.DataControlsRenderer.WinRT.ListViewRenderer))]
</code></pre>

## See Also

- [ListView Getting Started]({% slug listview-getting-started %})