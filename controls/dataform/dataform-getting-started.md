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

## Add References to Telerik UI for Xamarin.Forms ##
First you have to create a new Xamarin.Forms project. You can see how in the [Getting Started Example]({% slug getting-started %} "Getting Started with Telerik UI for Xamarin.Forms"). Then you have to add reference to the following assemblies:

> The path of the assemblies is relative to the `Binaries` folder that is located in the installation folder of the controls.  
>The default location is `C:\Program Files (x86)\Telerik\UI for Xamarin QX XXX\Binaries`. 

Before adding reference to any Telerik library

>Please make sure the required [Xamarin.Forms and Xamarin.Android.Support]({% slug required-android-support-libraries%}) libraries are installed on your PC.

### Portable Project

#### XamarinForms\\Common\\

- Telerik.XamarinForms.Common
- Telerik.XamarinForms.Input

### Android Project

#### Android\\

- Telerik.Xamarin.Android.Common
- Telerik.Xamarin.Android.Input
- Telerik.Xamarin.Android.Primitives

#### XamarinForms\\Common\\

- Telerik.XamarinForms.Common
- Telerik.XamarinForms.Input

#### XamarinForms\\Android\\

- Telerik.XamarinForms.InputRenderer.Android.dll
- Telerik.XamarinForms.Common.Android.dll

### iOS Project

#### iOS\\

- Telerik.Xamarin.iOS.dll

#### XamarinForms\\Common\\

- Telerik.XamarinForms.Input.dll
- Telerik.XamarinForms.Common.dll

#### XamarinForms\\iOS\\

- Telerik.XamarinForms.InputRenderer.iOS.dll
- Telerik.XamarinForms.Common.iOS.dll


### Windows Phone 8 Poject

> **RadDataForm** is not available for **Windows Phone 8**.

### Windows 8.1 and Windows Phone 8.1 Projects

> **RadDataForm** is not available for **Windows 8.1 and Windows Phone 8.1**.

## Edit Project Files

### Android Project

You have add the following line to the **MainActivity.cs** file outside the namespace:

	[assembly: ExportRenderer(typeof(Telerik.XamarinForms.Input.RadDataForm), typeof(Telerik.XamarinForms.InputRenderer.Android.DataFormRenderer))]

You also need to call `TelerikForms.Init()` inside the `OnCreate(...)` method right after the `Forms.Init(...)` call.

	protected override void OnCreate(Bundle bundle)
    {
        base.OnCreate(bundle);

        global::Xamarin.Forms.Forms.Init(this, bundle); 
        Telerik.XamarinForms.Common.Android.TelerikForms.Init();
        LoadApplication(new App());
    }

### iOS Project

You have add the following lines to the **AppDelegate.cs** file outside the namespace:

	[assembly: ExportRenderer(typeof(Telerik.XamarinForms.Input.RadDataForm), typeof(Telerik.XamarinForms.InputRenderer.iOS.DataFormRenderer))]

You also have to create an instance of the renderer in the `FinishedLaunching(...)` method before the `Forms.Init()` call and right after it call the `TelerikForms.Init()`.

	public override bool FinishedLaunching(UIApplication app, NSDictionary options)
    {
        new DataFormRenderer();
        global::Xamarin.Forms.Forms.Init();
        Telerik.XamarinForms.Common.iOS.TelerikForms.Init();
        LoadApplication(new App());

        return base.FinishedLaunching(app, options);
    }

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
	                this.OnPropertyChanged();
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
	
## See Also
- [Editors]({%slug dataform-editors%})