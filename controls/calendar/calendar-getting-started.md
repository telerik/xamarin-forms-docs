---
title: Getting Started
page_title: Getting Started
position: 3
slug: calendar-getting-started
---

# Getting Started #

This example will guide you through the steps needed to add a basic RadCalendar control in your application.

## Add References to Telerik UI for Xamarin.Forms ##

First you have to create a new Xamarin.Forms project. You can see how in the [Getting Started Example]({% slug getting-started %} "Getting Started with Telerik UI for Xamarin.Forms"). Then you have to add reference to the following assemblies:

>The path of the assemblies is relative to the `Binaries` folder that is located in the installation folder of the controls.  
>The default location is `C:\Program Files (x86)\Telerik\UI for Xamarin QX XXX\Binaries`. 

Before adding reference to any Telerik library

>Please make sure the required [Xamarin.Forms and Xamarin.Android.Support]({% slug required-android-support-libraries%}) libraries are installed on your PC.

### Portable Project

#### XamarinForms\\Common\\

- Telerik.XamarinForms.Input.dll
- Telerik.XamarinForms.Common.dll

### Android Project

#### Android\\

- Telerik.Xamarin.Android.Common.dll
- Telerik.Xamarin.Android.Primitives.dll
- Telerik.Xamarin.Android.Input.dll

#### XamarinForms\\Common\\

- Telerik.XamarinForms.Input.dll
- Telerik.XamarinForms.Common.dll

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

### Windows Phone 8 Project

#### WindowsPhone\\

- Telerik.Windows.Controls.Input.dll
- Telerik.Windows.Controls.Primitives.dll
- Telerik.Windows.Core.dll

#### XamarinForms\\Common\\ 

- Telerik.XamarinForms.Input.dll
- Telerik.XamarinForms.Common.dll

#### XamarinForms\\WindowsPhone\\ 

- Telerik.XamarinForms.InputRenderer.WinPhone.dll
- Telerik.XamarinForms.Common.WinPhone.dll

### Windows 8.1 Project

#### WinRT\\Common\\ 

- Telerik.Core.dll

#### WinRT\\Windows 8.1\\ 

- Telerik.UI.Xaml.Primitives.dll
- Telerik.UI.Xaml.Input.dll

#### XamarinForms\\Common\\ 

- Telerik.XamarinForms.Common.dll
- Telerik.XamarinForms.Input.dll

#### XamarinForms\\WinRT\\Windows\\ 

- Telerik.XamarinForms.Common.WinRT.Windows.dll
- Telerik.XamarinForms.InputRenderer.WinRT.Windows.dll

### Windows Phone 8.1 Project

#### WinRT\\Common\\ 

- Telerik.Core.dll

#### WinRT\\Windows Phone 8.1\\ 

- Telerik.UI.Xaml.Primitives.dll
- Telerik.UI.Xaml.Input.dll

#### XamarinForms\\Common\\ 

- Telerik.XamarinForms.Common.dll
- Telerik.XamarinForms.Input.dll

#### XamarinForms\\WinRT\\WinPhone\\

- Telerik.XamarinForms.Common.WinRT.WindowsPhone.dll
- Telerik.XamarinForms.InputRenderer.WinRT.WindowsPhone.dll

![Add Calendar References](images/calendar-getting-started-references.png)

## Edit Project Files

### Android Project

You have to add the following line to the **MainActivity.cs** file outside the scope of the namespace just after the using statements:

	[assembly: Xamarin.Forms.ExportRenderer(typeof(Telerik.XamarinForms.Input.RadCalendar), typeof(Telerik.XamarinForms.InputRenderer.Android.CalendarRenderer))]


### iOS Project

You have to add the following line to the **AppDelegate.cs** file outisde the scope of the namespace just after the using statements:

	[assembly: Xamarin.Forms.ExportRenderer(typeof(Telerik.XamarinForms.Input.RadCalendar), typeof(Telerik.XamarinForms.InputRenderer.iOS.CalendarRenderer))]

You also have to create an instance of the renderer in the `FinishedLaunching(...)` method before the `Forms.Init()` call and right after it call the `TelerikForms.Init()`.

	public override bool FinishedLaunching(UIApplication app, NSDictionary options)
    {
        new CalendarRenderer();

        global::Xamarin.Forms.Forms.Init();
        Telerik.XamarinForms.Common.iOS.TelerikForms.Init();
        LoadApplication(new App());

        return base.FinishedLaunching(app, options);
    }

### Windows Phone 8 Project

You have to add the following line to the **MainPage.xaml.cs** file outisde the scope of the namespace just after the using statements:

	[assembly: Xamarin.Forms.ExportRenderer(typeof(Telerik.XamarinForms.Input.RadCalendar), typeof(Telerik.XamarinForms.InputRenderer.WinPhone.CalendarRenderer))]

### Windows 8.1 and Windows Phone 8.1 Projects

You have to add the following line to the **MainPage.xaml.cs** file outisde the scope of the namespace just after the using statements:

	[assembly: Xamarin.Forms.Platform.WinRT.ExportRenderer(typeof(Telerik.XamarinForms.Input.RadCalendar), typeof(Telerik.XamarinForms.InputRenderer.WinRT.CalendarRenderer))]

## NuGet Packages
Next step is to add references to the NuGet Packages needed by RadRadCalendar in the Android project. You can find the full list with required packages in the [**Required Android Support Libraries**]({% slug required-android-support-libraries %}) help topic.

##Example

1. Add new Xamarin.Forms page to your Portable/Shared project:
	* **Visual Studio**: right click on the project > `Add` > `New Item...` > choose `Forms Xaml Page`
	* **Xamarin Studio**: right click on the project > `Add` > `New File` > choose `Forms ContentPage Xaml`

1. Modify the GetMainPage() method in the App.xaml.cs file to set the newly created page as a front page of the application:

		public class App
		{
			public static Page GetMainPage()
			{
				return new MainPage();
			}
		}

1. Edit the MainPage.xaml file to add a RadCalendar control:

	    <telerikInput:RadCalendar/>
where:  

		 xmlns:telerikInput="clr-namespace:Telerik.XamarinForms.Input;assembly=Telerik.XamarinForms.Input"
Alternatively, you can add the calendar in code behind:

		public partial class MainPage
	    {
	        public MainPage()
	        {
	            InitializeComponent();
	            
				this.Content = new RadCalendar();
	        }
		}

Here is the result:  
![Basic RadCalendar Example](images/calendar-getting-started.png "Basic RadCalendar")

## See Also

- [Project Wizard]({% slug project-wizard %})
- [Getting Started on Mac]({% slug getting-started-mac %})