---
title: Getting Started
page_title: Getting Started
position: 0
slug: calendar-getting-started
---

# Getting Started
   
This example will guide you through the steps needed to add a basic **RadCalendar** control in your application.

>Before you proceed, please, take a look at these articles and follow the instructions to setup your app:

>- [Setup on Windows]({%slug getting-started-windows%})
>- [Setup on Mac]({%slug getting-started-mac%})


## Example

If your app is setup, you are ready to add a **RadCalendar** control.

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
![Basic RadCalendar Example](../images/calendar-getting-started.png "Basic RadCalendar")

## See Also

- [Project Wizard]({% slug project-wizard %})
- [Getting Started on Mac]({% slug getting-started-mac %})