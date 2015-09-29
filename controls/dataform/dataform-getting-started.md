---
title: Getting Started
page_title: Getting Started
position: 1
slug: dataform-getting-started
---

# Getting Started

This article will guide you through the steps needed to add a basic RadDataForm control in your application.

## Update existing Xamarin.Forms package
After creating the blank mobile application template, it is recommended to update the **Xamarin.Forms** package in your solution. Updating it to the latest version can be done using the NuGet UI.

## Assemblies

Next, you have to add reference to the following assemblies:

- **Portable/Common**
 - Telerik.XamarinForms.Common
 - Telerik.XamarinForms.Input
- **Android**
 - Telerik.Xamarin.Android.Common
 - Telerik.Xamarin.Android.Input
 - Telerik.Xamarin.Android.Primitives
 - Telerik.XamarinForms.Common
 - Telerik.XamarinForms.Common.Android
 - Telerik.XamarinForms.Input
 - Telerik.XamarinForms.InputRenderer.Android
- **iOS**
 - Telerik.Xamarin.iOS
 - Telerik.XamarinForms.Common
 - Telerik.XamarinForms.Common.iOS
 - Telerik.XamarinForms.Input
 - Telerik.XamarinForms.InputRenderer.iOS
- **WinPhone**
    > **RadDataForm** is not available for **Windows Phone**.

You will also have to add the following code to these project files:

* **Android**: MainActivity.cs

	Add this line outside the namespace:
  
		[assembly: ExportRenderer(typeof(Telerik.XamarinForms.Input.RadDataForm), typeof(Telerik.XamarinForms.InputRenderer.Android.DataFormRenderer))]
You also need to call `TelerikForms.Init()` inside the `OnCreate()` method

		protected override void OnCreate(Bundle bundle)
        {
            base.OnCreate(bundle);

            global::Xamarin.Forms.Forms.Init(this, bundle); 
            Telerik.XamarinForms.Common.Android.TelerikForms.Init();
            LoadApplication(new App());
        }

* **iOS**: AppDelegate.cs

	Add this line outside the namespace:

		[assembly: ExportRenderer(typeof(Telerik.XamarinForms.Input.RadDataForm), typeof(Telerik.XamarinForms.InputRenderer.iOS.DataFormRenderer))]
You also have to create an instance of the renderer in the `FinishedLaunching()` method before the `Forms.Init()` call and right after it call the `TelerikForms.Init()`:

		public override bool FinishedLaunching(UIApplication app, NSDictionary options)
        {
            new DataFormRenderer();
            global::Xamarin.Forms.Forms.Init();
            Telerik.XamarinForms.Common.iOS.TelerikForms.Init();
            LoadApplication(new App());

            return base.FinishedLaunching(app, options);
        }

## Edit the iOS project
After referencing the required binaries it is time to edit the default configuration of the iOS project. Unload it and open the iOS.csproj file. Inside it you will find several PropertyGroups. One for each build definition. Inside each group you will find CodesignEntitlements tag. Those tags should be empty in each build definition. More information on that matter can be found in [this]({http://forums.xamarin.com/discussion/39674/iphonesimulator-build-results-in-no-valid-ios-code-signing-keys-found-in-keychain}) forum thread.

## NuGet Packages
Next step is to add references to the NuGet Packages needed by RadDataForm in the Android project. You can find the full list with required packages in the [**Required Android Support Libraries**]({% slug required-android-support-libraries %}) help topic.


## Example

Here is a sample data class:

	public class Person : NotifyPropertyChangedBase
	{
	    private string name;
	
	    [DisplayOptions(Header = "Name", PlaceholderText = "name")]
	    [StringLengthValidator(2, int.MaxValue, "Name should be longer than 2 symbols.")]
	    public string Name
	    {
	        get
	        {
	            return this.name;
	        }
	        set
	        {
	            if (this.name != value)
	            {
	                this.name = value;
	                this.RaisePropertyCanged();
	            }
	        }
	    }
	}

You can define the data form in XAML:

	<telerikInput:RadDataForm x:Name="dataForm"/>

Where:

	xmlns:telerikInput="clr-namespace:Telerik.XamarinForms.Input;assembly=Telerik.XamarinForms.Input"

And finally set the Source of the form to an instance of the data class:

	dataForm.Source = new Person{ Name = "Peter" };

Or you can use binding if you have set a proper BindingContext:


	<telerikInput:RadDataForm Source={Binding SourceObject}/>