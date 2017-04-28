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

<pre><code class='language-cs'>
[assembly: ExportRenderer(typeof(Telerik.XamarinForms.Primitives.RadSideDrawer), typeof(Telerik.XamarinForms.PrimitivesRenderer.Android.SideDrawerRenderer))]
</code></pre>

## iOS Project

You have to add the following line to the **AppDelegate.cs** file outside the scope of the namespace just after the using statements:

<pre><code class='language-cs'>
[assembly: ExportRenderer(typeof(Telerik.XamarinForms.Primitives.RadSideDrawer), typeof(Telerik.XamarinForms.PrimitivesRenderer.iOS.SideDrawerRenderer))]
</code></pre>

You also have to create an instance of the renderer in the `FinishedLaunching(...)` method before the `Forms.Init()` call which is called right before the `TelerikForms.Init()` call.

<pre><code class='language-cs'>
public override bool FinishedLaunching(UIApplication app, NSDictionary options)
{
    new Telerik.XamarinForms.PrimitivesRenderer.iOS.SideDrawerRenderer();

    Xamarin.Forms.Forms.Init();
    Telerik.XamarinForms.Common.iOS.TelerikForms.Init();

    this.LoadApplication(new App());

    return base.FinishedLaunching(app, options);
}
</code></pre>

## UWP Project

You have to add the following line to the **MainPage.xaml.cs** file outside the scope of the namespace just after the using statements:

<pre><code class='language-cs'>
[assembly: Xamarin.Forms.Platform.UWP.ExportRenderer(typeof(Telerik.XamarinForms.Primitives.RadSideDrawer), typeof(Telerik.XamarinForms.PrimitivesRenderer.UWP.SideDrawerRenderer))]
</code></pre>

## Windows 8.1 and Windows Phone 8.1 Projects

You have to add the following line to the **MainPage.xaml.cs** file outside the scope of the namespace just after the using statements:

<pre><code class='language-cs'>
[assembly: Xamarin.Forms.Platform.WinRT.ExportRenderer(typeof(Telerik.XamarinForms.Primitives.RadSideDrawer), typeof(Telerik.XamarinForms.PrimitivesRenderer.WinRT.SideDrawerRenderer))]
</code></pre>

## See Also

- [SideDrawer Getting Started]({% slug sidedrawer-getting-started %})