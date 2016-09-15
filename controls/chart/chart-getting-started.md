---
title: Getting Started
page_title: Getting Started
position: 2
slug: chart-getting-started
---
# Getting Started #
This example will guide you through the steps needed to add a basic RadCartesianChart control in your application.

## Add References to Telerik UI for Xamarin.Forms ##
First you have to create a new Xamarin.Forms project. You can see how in the [Getting Started Example]({% slug getting-started %} "Getting Started with Telerik UI for Xamarin.Forms"). Then you have to add reference to the following assemblies:

> The path of the assemblies is relative to the `Binaries` folder that is located in the installation folder of the controls.  
>The default location is `C:\Program Files (x86)\Telerik\UI for Xamarin QX XXX\Binaries`. 

Before adding reference to any Telerik library

>Please make sure the required [Xamarin.Forms and Xamarin.Android.Support]({% slug required-android-support-libraries%}) libraries are installed on your PC.

### Portable Project

#### XamarinForms\\Common\\

- Telerik.XamarinForms.Chart.dll
- Telerik.XamarinForms.Common.dll

### Android Project

#### Android\\

- Telerik.Xamarin.Android.Chart.dll
- Telerik.Xamarin.Android.Common.dll
- Telerik.Xamarin.Android.Primitives.dll

#### XamarinForms\\Common\\

- Telerik.XamarinForms.Chart.dll
- Telerik.XamarinForms.Common.dll

#### XamarinForms\\Android\\

- Telerik.XamarinForms.ChartRenderer.Android.dll
- Telerik.XamarinForms.Common.Android.dll

### iOS Project

#### iOS\\

- Telerik.Xamarin.iOS.dll

#### XamarinForms\\Common\\

- Telerik.XamarinForms.Chart.dll
- Telerik.XamarinForms.Common.dll

#### XamarinForms\\iOS\\

- Telerik.XamarinForms.ChartRenderer.iOS.dll
- Telerik.XamarinForms.Common.iOS.dll


### Windows Phone 8 Poject

#### WindowsPhone\\

- Telerik.Windows.Controls.Chart.dll
- Telerik.Windows.Controls.Primitives.dll
- Telerik.Windows.Core.dll

#### XamarinForms\\Common\\

- Telerik.XamarinForms.Chart.dll
- Telerik.XamarinForms.Common.dll

#### XamarinForms\\WindowsPhone\\

- Telerik.XamarinForms.ChartRenderer.WinPhone.dll
- Telerik.XamarinForms.Common.WinPhone.dll

### Windows 8.1 Project

#### WinRT\\Common\\

- Telerik.Core.dll

#### WinRT\\Windows 8.1\\

- Telerik.UI.Xaml.Chart.dll
- Telerik.UI.Xaml.Primitives.dll

#### XamarinForms\\Common\\

- Telerik.XamarinForms.Chart.dll
- Telerik.XamarinForms.Common.dll

#### XamarinForms\\\WinRT\\\Windows\\

- Telerik.XamarinForms.Common.WinRT.Windows.dll
- Telerik.XamarinForms.ChartRenderer.WinRT.Windows.dll

### Windows Phone 8.1 Project

#### WinRT\\Common\\

- Telerik.Core.dll

#### WinRT\\Windows Phone 8.1\\

- Telerik.UI.Xaml.Chart.dll
- Telerik.UI.Xaml.Primitives.dll

#### XamarinForms\\Common\\

- Telerik.XamarinForms.Chart.dll
- Telerik.XamarinForms.Common.dll

#### XamarinForms\\\WinRT\\\WinPhone\\

- Telerik.XamarinForms.Common.WinRT.WindowsPhone.dll
- Telerik.XamarinForms.ChartRenderer.WinRT.WindowsPhone.dll


![Add Chart References](images/chart-getting-started-references.png)

## Edit Project Files

### Android Project

You have to add the following lines to the **MainActivity.cs** file outside the scope of the namespace just after the using statements:
  
<snippet id='chart-getting-started-android-renderers'/>

### iOS Project

You have to add the following lines to the **AppDelegate.cs** file outside the scope of the namespace just after the using statements:

<snippet id='chart-getting-started-ios-renderers'/>

You also have to call the `TelerikForms.Init()` method right after the `Forms.Init()` call.

<snippet id='chart-getting-started-ios-init'/>

### Windows Universal Platform Projects

You have to add the following lines to edit the **MainPage.xaml.cs** file outside the scope of the namespace just after the using statements:

<snippet id='chart-getting-started-uwp-renderers'/>

### Windows 8.1 and Windows Phone 8.1 Projects

You have to add the following lines to edit the **MainPage.xaml.cs** file outside the scope of the namespace just after the using statements:

<snippet id='chart-getting-started-winrt-renderers'/>

### Windows Phone 8 Project

You have to add the following lines to the **MainPage.xaml.cs** file outside the scope of the namespace just after the using statements:

<snippet id='chart-getting-started-wp8-renderers'/>

## NuGet Packages
Next step is to add references to the NuGet Packages needed by the chart controls in the Android project. You can find the full list with required packages in the [**Required Android Support Libraries**]({% slug required-android-support-libraries %}) help topic.
	

##Example

This example demonstrates how to create a basic cartesian chart with bar series like this one.

![Basic RadCartesianChart Example](images/chart-getting-started-example.png "Basic RadCartesianChart")

Here is the chart setup:

<snippet id='chart-getting-started-xaml-chart'/>
<snippet id='chart-getting-started-csharp-chart'/> 

You also need to add the following namespace:

<snippet id='xmlns-telerikchart'/>
<snippet id='using-telerikchart'/>

And here is the sample data used as binding context:

<snippet id='chart-getting-started-viewmodel'/>

## See Also

- [Project Wizard]({% slug project-wizard %})
- [Getting Started on Mac]({% slug getting-started-mac %})