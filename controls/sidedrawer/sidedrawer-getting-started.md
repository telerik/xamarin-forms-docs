---
title: Getting Started
page_title: Getting Started
position: 3
slug: sidedrawer-getting-started
---
# Introduction

This article will guide users through the steps that have to be taken in order to use the RadSideDrawer in a project.

## Add References to Telerik UI for Xamarin.Forms ##

First you have to create a new Xamarin.Forms project. You can see how in the [Getting Started Example]({% slug getting-started %} "Getting Started with Telerik UI for Xamarin.Forms"). Then you have to add reference to the following assemblies in order to include the **RadSideDrawer** into your project:

>The path of the assemblies is relative to the `Binaries` folder that is located in the installation folder of the controls.  
>The default location is `C:\Program Files (x86)\Telerik\UI for Xamarin QX XXX\Binaries`. 

Before adding reference to any Telerik library

>Please make sure the required [Xamarin.Forms and Xamarin.Android.Support]({% slug required-android-support-libraries%}) libraries are installed on your PC.

### Portable Project

#### XamarinForms\\Common\\

- Telerik.XamarinForms.Primitives.dll
- Telerik.XamarinForms.Common.dll

### Android Project

#### Android\\

- Telerik.Xamarin.Android.Common.dll
- Telerik.Xamarin.Android.Primitives.dll

#### XamarinForms\\Common\\

- Telerik.XamarinForms.Primitives.dll
- Telerik.XamarinForms.Common.dll

#### XamarinForms\\Android\\

- Telerik.XamarinForms.PrimitivesRenderer.Android.dll
- Telerik.XamarinForms.Common.Android.dll

### iOS Project

#### iOS\\

- Telerik.Xamarin.iOS.dll
	
#### XamarinForms\\Common\\

- Telerik.XamarinForms.Primitives.dll
- Telerik.XamarinForms.Common.dll

#### XamarinForms\\iOS\\

- Telerik.XamarinForms.PrimitivesRenderer.iOS.dll
- Telerik.XamarinForms.Common.iOS.dll

### Windows Phone 8 Project

> **RadSideDrawer** is not available for **Windows Phone 8**.

### Windows 8.1 Project

#### WinRT\\Common\\

- Telerik.Core.dll

#### WinRT\\Windows 8.1\\ 

- Telerik.UI.Xaml.Primitives.dll

#### XamarinForms\\Common\\ 

- Telerik.XamarinForms.Common.dll
- Telerik.XamarinForms.Primitives.dll

#### XamarinForms\\WinRT\\ 

- Telerik.XamarinForms.Common.WinRT.dll

#### XamarinForms\\WinRT\\Windows\\ 

- Telerik.XamarinForms.PrimitivesRenderer.WinRT.Windows.dll

### Windows Phone 8.1 Project

#### WinRT\\Common\\ 

- Telerik.Core.dll

#### WinRT\\Windows Phone 8.1\\ 

- Telerik.UI.Xaml.Primitives.dll

#### XamarinForms\\Common\\ 

- Telerik.XamarinForms.Common.dll
- Telerik.XamarinForms.Primitives.dll

#### XamarinForms\\WinRT\\ 

- Telerik.XamarinForms.Common.WinRT.dll

#### XamarinForms\\WinRT\\WinPhone\\

- Telerik.XamarinForms.PrimitivesRenderer.WinRT.WindowsPhone.dll

## Edit Project Files

### Android Project

You have add the following line to the **MainActivity.cs** file:

	[assembly: Xamarin.Forms.ExportRenderer(typeof(Telerik.XamarinForms.Primitives.RadSideDrawer), typeof(Telerik.XamarinForms.PrimitivesRenderer.Android.SideDrawerRenderer))]

You also need to call `TelerikForms.Init()` inside the `OnCreate(...)` method right after the `Forms.Init(...)` call.

	protected override void OnCreate(Bundle bundle)
    {
        base.OnCreate(bundle);

        global::Xamarin.Forms.Forms.Init(this, bundle); 
        Telerik.XamarinForms.Common.Android.TelerikForms.Init();
        LoadApplication(new App());
    }

### iOS Project

You have add the following line to the **AppDelegate.cs** file:

	[assembly: Xamarin.Forms.ExportRenderer(typeof(Telerik.XamarinForms.Primitives.RadSideDrawer), typeof(Telerik.XamarinForms.PrimitivesRenderer.iOS.SideDrawerRenderer))]

You also have to create an instance of the renderer in the `FinishedLaunching(...)` method before the `Forms.Init()` call and right after it call the `TelerikForms.Init()`.

	public override bool FinishedLaunching(UIApplication app, NSDictionary options)
    {
        new SideDrawerRenderer();
        global::Xamarin.Forms.Forms.Init();
        Telerik.XamarinForms.Common.iOS.TelerikForms.Init();
        LoadApplication(new App());

        return base.FinishedLaunching(app, options);
    }

### Windows 8.1 and Windows Phone 8.1 Projects

You have add the following line to the **MainPage.xaml.cs** file:

	[assembly: Xamarin.Forms.Platform.WinRT.ExportRenderer(typeof(Telerik.XamarinForms.Primitives.RadSideDrawer), typeof(Telerik.XamarinForms.InputRenderer.WinRT.SideDrawerRenderer))]

You also need to call `TelerikForms.Init()` inside the MainPage constrictor before the `LoadApplication(new SampleApp.App())` call.

    public MainPage()
    {
        this.InitializeComponent();
        Telerik.XamarinForms.Common.WinRT.TelerikForms.Init();
        LoadApplication(new SampleApp.App());
    }
		


## Edit the iOS project
After referencing the required binaries it is time to edit the default configuration of the iOS project. Unload it and open the iOS.csproj file. Inside it you will find several PropertyGroups. One for each build definition. Inside each group you will find CodesignEntitlements tag. Those tags should be empty in each build definition. More information on that matter can be found in [this]({http://forums.xamarin.com/discussion/39674/iphonesimulator-build-results-in-no-valid-ios-code-signing-keys-found-in-keychain}) forum thread.

## NuGet Packages
Next step is to add references to the NuGet Packages needed by RadSideDrawer in the Android project. You can find the full list with required packages in the [**Required Android Support Libraries**]({% slug required-android-support-libraries %}) help topic.

## Example
When the references are added, you can proceed with defining the component:

	<primitives:RadSideDrawer>
	  <primitives:RadSideDrawer.DrawerLength>
	    <OnPlatform x:TypeArguments="x:Double" iOS="150" Android="200"/>
	  </primitives:RadSideDrawer.DrawerLength>
	  <primitives:RadSideDrawer.MainContent>
	    <Label Text="Main Content" FontSize="Large" HorizontalOptions="Center"/>
	  </primitives:RadSideDrawer.MainContent>
	  <primitives:RadSideDrawer.DrawerContent>
	    <StackLayout>
	      <Label Text="Drawer Content" FontSize="Medium" HorizontalOptions="Center"/>
	      <Button Text="Mail"/>
	      <Button Text="Calendar"/>
	      <Button Text="People"/>
	      <Button Text="Tasks"/>
	    </StackLayout>
	  </primitives:RadSideDrawer.DrawerContent>
	</primitives:RadSideDrawer>


Where the *primitives* namespace is defined like this:

	xmlns:primitives="clr-namespace:Telerik.XamarinForms.Primitives;assembly=Telerik.XamarinForms.Primitives"

### Drawer Closed

![SideDrawer example](images/sidedrawer-getting-started-closed.png)

### Drawer Opened

![SideDrawer example](images/sidedrawer-getting-started-opened.png)