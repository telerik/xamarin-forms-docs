---
title: Getting Started
page_title: Getting Started
position: 1
slug: dataform-getting-started
---

# Getting Started

This example will guide you through the steps needed to add a basic RadDataForm control in your application.

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

	You also have to add 

		protected override void OnCreate(Bundle bundle)
		{
		    base.OnCreate(bundle);
		    Forms.Init(this, bundle);
		    TelerikForms.Init();
		
		    this.LoadApplication(new App());
		}

* **iOS**: AppDelegate.cs

	Add this line outside the namespace:

		[assembly: ExportRenderer(typeof(Telerik.XamarinForms.Input.RadDataForm), typeof(Telerik.XamarinForms.InputRenderer.iOS.DataFormRenderer))]


	You also have to

		public override bool FinishedLaunching(UIApplication app, NSDictionary options)
		{
		    new DataFormRenderer();
		    global::Xamarin.Forms.Forms.Init();
		
		    TelerikForms.Init();
		
		    this.LoadApplication(new App());
		    return base.FinishedLaunching(app, options);
		}

## Example

Here is a sample data class:

	public class Person : NotifyPropertyChangedBase
	{
	    private string name;
	
	    [DisplayOptions(Header = "Name", PlaceholderText = "name")]
	    [NonEmptyValidatorAttribute("Name is required!")]
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
