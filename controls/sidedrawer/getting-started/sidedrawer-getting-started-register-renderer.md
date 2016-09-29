---
title: Register SideDrawer Renderer
page_title: Register SideDrawer Renderer
position: 2
slug: sidedrawer-getting-started--register-renderer
---

# Register the RadSideDrawer renderer

## Android Project

You have to add the following line to the **MainActivity.cs** file outside the scope of the namespace just after the using statements:

	[assembly: Xamarin.Forms.ExportRenderer(typeof(Telerik.XamarinForms.Primitives.RadSideDrawer), typeof(Telerik.XamarinForms.PrimitivesRenderer.Android.SideDrawerRenderer))]

## iOS Project

You have to add the following line to the **AppDelegate.cs** file outside the scope of the namespace just after the using statements:

	[assembly: Xamarin.Forms.ExportRenderer(typeof(Telerik.XamarinForms.Primitives.RadSideDrawer), typeof(Telerik.XamarinForms.PrimitivesRenderer.iOS.SideDrawerRenderer))]

## Universal Windows Platform Project

You have to add the following line to the **MainPage.xaml.cs** file outside the scope of the namespace just after the using statements:

	[assembly: Xamarin.Forms.Platform.WinRT.ExportRenderer(typeof(Telerik.XamarinForms.Primitives.RadSideDrawer), typeof(Telerik.XamarinForms.InputRenderer.UWP.SideDrawerRenderer))]

## Windows 8.1 and Windows Phone 8.1 Projects

You have to add the following line to the **MainPage.xaml.cs** file outside the scope of the namespace just after the using statements:

	[assembly: Xamarin.Forms.Platform.WinRT.ExportRenderer(typeof(Telerik.XamarinForms.Primitives.RadSideDrawer), typeof(Telerik.XamarinForms.InputRenderer.WinRT.SideDrawerRenderer))]


## See Also