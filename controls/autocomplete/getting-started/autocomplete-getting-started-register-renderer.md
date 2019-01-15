---
title: Register AutoComplete Renderer
page_title: Register AutoComplete Renderer
position: 2
slug: autocomplete-getting-started-register-renderer
publish: false
---

>caution RadAutoComplete control has been replaced by RadAutoCompleteView and will be removed from the suite soon. You can read about the differences between both components and how to migrate to the new RadAutoCompleteView in the kb article here: [Replace AutoComplete with AutoCompleteView]({%slug replace-autocomplete-with-autocompleteview%})

# Register the AutoComplete renderer

>important With R2 2017 release of Telerik UI for Xamarin you do not need to manually define control renderers. The following instructions are valid for versions prior R2 2017. 

## Android Project

You have to add the following line to the **MainActivity.cs** file outside the scope of the namespace just after the using statements:

<pre><code class='language-cs'>
[assembly: ExportRenderer(typeof(Telerik.XamarinForms.Input.RadAutoComplete), typeof(Telerik.XamarinForms.InputRenderer.Android.AutoCompleteRenderer))]
</code></pre>

## iOS Project

You have to add the following line to the **AppDelegate.cs** file outisde the scope of the namespace just after the using statements:

<pre><code class='language-cs'>
[assembly: ExportRenderer(typeof(Telerik.XamarinForms.Input.RadAutoComplete), typeof(Telerik.XamarinForms.InputRenderer.iOS.AutoCompleteRenderer))]
</code></pre>

You also have to create an instance of the renderer in the `FinishedLaunching(...)` method before the `Forms.Init()` call and right after it call the `TelerikForms.Init()`.

<pre><code class='language-cs'>
public override bool FinishedLaunching(UIApplication app, NSDictionary options)
{
    new Telerik.XamarinForms.InputRenderer.iOS.AutoCompleteRenderer();

    Xamarin.Forms.Forms.Init();
    Telerik.XamarinForms.Common.iOS.TelerikForms.Init();

    this.LoadApplication(new App());

    return base.FinishedLaunching(app, options);
}
</code></pre>
    
## UWP Project

You have to add the following line to the **MainPage.xaml.cs** file outisde the scope of the namespace just after the using statements:

<pre><code class='language-cs'>
[assembly: Xamarin.Forms.Platform.UWP.ExportRenderer(typeof(Telerik.XamarinForms.Input.RadAutoComplete), typeof(Telerik.XamarinForms.InputRenderer.UWP.AutoCompleteRenderer))]
</code></pre>

## Windows 8.1 and Windows Phone 8.1 Projects

You have to add the following line to the **MainPage.xaml.cs** file outisde the scope of the namespace just after the using statements:

<pre><code class='language-cs'>
[assembly: Xamarin.Forms.Platform.UWP.ExportRenderer(typeof(Telerik.XamarinForms.Input.RadAutoComplete), typeof(Telerik.XamarinForms.InputRenderer.UWP.AutoCompleteRenderer))]
</code></pre>

## Windows Phone 8 Project

**AutoComplete** is not available for WindowsPhone 8.0

## See Also

- [AutoComplete Getting Started]({% slug autocomplete-getting-started %})
- [Required AutoComplete Assemblies]({% slug autocomplete-getting-started-required-assemblies %})
