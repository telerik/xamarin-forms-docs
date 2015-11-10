---
title: Getting Started
page_title: Getting Started
position: 2
slug: listview-getting-started
---

# Getting Started #

This example will guide you through the steps needed to add a basic RadListView control in your application.

## Update existing Xamarin.Forms package
After creating the blank mobile application template, it is recommended to update the **Xamarin.Forms** package in your solution. Updating it to the latest version can be done using the NuGet UI.

## Add References to Telerik UI for Xamarin.Forms ##
Next, you have to add reference to the following assemblies:

* **Portable** (if you have created Xamarin.Forms Portable App)
	- Telerik.XamarinForms.DataControls.dll
	- Telerik.XamarinForms.Common.dll
* **Android**
	- Telerik.Xamarin.Android.Common.dll
	- Telerik.Xamarin.Android.Data.dll
	- Telerik.Xamarin.Android.Input.dll
	- Telerik.Xamarin.Android.List.dll
	- Telerik.XamarinForms.Common.dll
	- Telerik.XamarinForms.Common.Android.dll
	- Telerik.XamarinForms.DataControls.dll
	- Telerik.XamarinForms.DataControlsRenderer.Android.dll
* **iOS**
	- Telerik.Xamarin.iOS.dll
	- Telerik.XamarinForms.Common.dll
	- Telerik.XamarinForms.Common.iOS.dll
	- Telerik.XamarinForms.DataControls.dll
	- Telerik.XamarinForms.DataControlsRenderer.iOS.dll
* **WinPhone**

	> **RadListView** is not available for **Windows Phone**.

You will also have to add the following code to these project files:

* **Android**: MainActivity.cs
  
		[assembly: Xamarin.Forms.ExportRenderer(typeof(Telerik.XamarinForms.DataControls.RadListView), typeof(Telerik.XamarinForms.DataControlsRenderer.Android.ListViewRenderer))]

	You also need to call `TelerikForms.Init()` inside the `OnCreate(...)` method right after the `Forms.Init(...)` call.

		protected override void OnCreate(Bundle bundle)
        {
            base.OnCreate(bundle);

            global::Xamarin.Forms.Forms.Init(this, bundle); 
            Telerik.XamarinForms.Common.Android.TelerikForms.Init();
            LoadApplication(new App());
        }

* **iOS**: AppDelegate.cs

		[assembly: Xamarin.Forms.ExportRenderer(typeof(Telerik.XamarinForms.DataControls.RadListView), typeof(Telerik.XamarinForms.DataControlsRenderer.iOS.ListViewRenderer))]

	You also have to create an instance of the renderer in the `FinishedLaunching(...)` method before the `Forms.Init()` call and right after it call the `TelerikForms.Init()`.

		public override bool FinishedLaunching(UIApplication app, NSDictionary options)
        {
            new ListViewRenderer();
            global::Xamarin.Forms.Forms.Init();
            Telerik.XamarinForms.Common.iOS.TelerikForms.Init();
            LoadApplication(new App());

            return base.FinishedLaunching(app, options);
        }

## Edit the iOS project
After referencing the required binaries it is time to edit the default configuration of the iOS project. Unload it and open the iOS.csproj file. Inside it you will find several PropertyGroups. One for each build definition. Inside each group you will find CodesignEntitlements tag. Those tags should be empty in each build definition. More information on that matter can be found in [this]({http://forums.xamarin.com/discussion/39674/iphonesimulator-build-results-in-no-valid-ios-code-signing-keys-found-in-keychain}) forum thread.

## NuGet Packages
Next step is to add references to the NuGet Packages needed by RadListViiew in the Android project. You can find the full list with required packages in the [**Required Android Support Libraries**]({% slug required-android-support-libraries %}) help topic.
	
After successful installation of those packages, the application should be set up and ready to build and deploy.

## Example

Users can visualize the **RadListView** using XAML code like this:

	<telerik:RadListView x:Name="LV"/> 

where the **telerik** namespace is defined like this:

	xmlns:telerik="clr-namespace:Telerik.XamarinForms.DataControls;assembly=Telerik.XamarinForms.DataControls"
The next step is to add the items that will be visualized. This can be done in code like this:

	InitializeComponent();
	this.LV.ItemsSource = new List<string>() { "A", "B", "C" };
An alternative way to visualize the component is to create it entirely in code. This can be done like this:

	var listView = new RadListView();
	listView.ItemsSource = new List<string>() { "A", "B", "C" };
	this.Content = listView;
The result will be similar to the following pictures.

Figure 1: RadListView in Android

![RadListView](images/listview.png)