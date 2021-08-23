---
title: Culture info for the app
description: apply culture info on app level
type: how-to
page_title: Change culture info on app level
slug: culture-info-app-level
position: 
tags: culture info, current culture, localization, app
ticketid: 1531416
res_type: kb
---

## Environment
<table>
	<tbody>
		<tr>
			<td>Product Version</td>
			<td>2021.2.728.1</td>
		</tr>
		<tr>
			<td>Product</td>
			<td>Progress® Telerik® UI for Xamarin</td>
		</tr>
	</tbody>
</table>


## Description

This article will show you how to apply current culture (localization) on application level (app localization). For example if the device culture is set to Spanish or German or French, and you want to have different app culture (localization) than the device culture, you can explicitly set culture info on app level.

## Solution

### Android

On Android: inside the MainActivity class, implement `SetLocale()` method to change the culture info. 

```C#
public class MainActivity : global::Xamarin.Forms.Platform.Android.FormsAppCompatActivity
{
    protected override void OnCreate(Bundle savedInstanceState)
    {
        base.OnCreate(savedInstanceState);
        this.SetLocale();
        Xamarin.Essentials.Platform.Init(this, savedInstanceState);
        global::Xamarin.Forms.Forms.Init(this, savedInstanceState);


        LoadApplication(new App());
    }
    public override void OnRequestPermissionsResult(int requestCode, string[] permissions, [GeneratedEnum] Android.Content.PM.Permission[] grantResults)
    {
        Xamarin.Essentials.Platform.OnRequestPermissionsResult(requestCode, permissions, grantResults);

        base.OnRequestPermissionsResult(requestCode, permissions, grantResults);
    }
    void SetLocale()
    {

        CultureInfo ci = new CultureInfo("en-US");

        Thread.CurrentThread.CurrentCulture = ci;
        Thread.CurrentThread.CurrentUICulture = ci;

        Console.WriteLine("CurrentCulture set: " + ci.Name);
    }
}
```

### iOS

on iOS inside the AppDelegate.cs file override the `FinishedLaunching` method

```C#
public override bool FinishedLaunching(UIApplication app, NSDictionary options)
{
    this.SetLocale();
    global::Xamarin.Forms.Forms.Init();
    LoadApplication(new App());

    return base.FinishedLaunching(app, options);
}

private void SetLocale()
{
    CultureInfo ci = new CultureInfo("en-US");

    Thread.CurrentThread.CurrentCulture = ci;
    Thread.CurrentThread.CurrentUICulture = ci;
}
```
