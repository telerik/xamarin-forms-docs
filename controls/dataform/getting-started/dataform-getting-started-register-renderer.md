---
title: Register DataForm Renderer
page_title: Register DataForm Renderer
position: 2
slug: dataform-getting-started-register-renderer
---

# Register the RadDataForm renderer

## Android Project

You have to add the following line to the **MainActivity.cs** file outside the scope of the namespace just after the using statements:

	[assembly: ExportRenderer(typeof(Telerik.XamarinForms.Input.RadDataForm), typeof(Telerik.XamarinForms.InputRenderer.Android.DataFormRenderer))]

## iOS Project

You have to add the following lines to the **AppDelegate.cs** file outside the scope of the namespace just after the using statements:

	[assembly: ExportRenderer(typeof(Telerik.XamarinForms.Input.RadDataForm), typeof(Telerik.XamarinForms.InputRenderer.iOS.DataFormRenderer))]

You also have to create an instance of the renderer in the `FinishedLaunching(...)` method before the `Forms.Init()` call which is called right before the `TelerikForms.Init()` call.

	public override bool FinishedLaunching(UIApplication app, NSDictionary options)
    {
        new Telerik.XamarinForms.InputRenderer.iOS.DataFormRenderer();

        global::Xamarin.Forms.Forms.Init();
        
        Telerik.XamarinForms.Common.iOS.TelerikForms.Init();
        
        LoadApplication(new App());

        return base.FinishedLaunching(app, options);
    }

## Universal Windows Platform Project

You have to add the following lines to edit the **MainPage.xaml.cs** file outside the scope of the namespace just after the using statements:

	[assembly: ExportRenderer(typeof(Telerik.XamarinForms.Input.RadDataForm), typeof(Telerik.XamarinForms.InputRenderer.UWP.DataFormRenderer))]
	
## Windows 8.1 and Windows Phone 8.1 Projects

You have to add the following lines to edit the **MainPage.xaml.cs** file outside the scope of the namespace just after the using statements:

	[assembly: Xamarin.Forms.Platform.WinRT.ExportRenderer(typeof(Telerik.XamarinForms.Input.RadDataForm), typeof(Telerik.XamarinForms.InputRenderer.WinRT.DataFormRenderer))]

## See Also