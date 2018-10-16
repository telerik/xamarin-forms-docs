---
title: Getting Started
page_title: Getting Started
position: 1
slug: entry-getting-started
---

# Getting Started
   
This example will guide you through the steps needed to add a basic **RadEntry** control in your application.

>Before you proceed, please, take a look at these articles and follow the instructions to set up your app:
>
>- [Setup on Windows]({%slug getting-started-windows%})
>- [Setup on Mac]({%slug getting-started-mac%})

## Required Telerik Assemblies

| Platform | Assemblies |
| -------- | ---------- |
| Portable | Telerik.XamarinForms.Common.dll<br/>Telerik.XamarinForms.Input.dll |
| Android  | Telerik.Xamarin.Android.Common.dll <br/>Telerik.Xamarin.Android.Data.dll <br/>Telerik.Xamarin.Android.Input.dll <br/>Telerik.Xamarin.Android.List.dll <br/> Telerik.Xamarin.Android.Primitives.dll <br/>Telerik.XamarinForms.Common.dll <br/>Telerik.XamarinForms.Input.dll |
| iOS      | Telerik.Xamarin.iOS.dll <br/>Telerik.XamarinForms.Common.dll <br/>Telerik.XamarinForms.Input.dll |
| UWP      | Telerik.Core.dll <br/>Telerik.Data.dll <br/>Telerik.UI.Xaml.Controls.Data.UWP.dll <br/> Telerik.UI.Xaml.Input.UWP.dll <br/>Telerik.UI.Xaml.Primitives.UWP.dll <br/>Telerik.XamarinForms.Common.dll <br/>Telerik.XamarinForms.Input.dll <br/>|

> The path of the assemblies is relative to the `Binaries` folder that is located in the installation folder of the controls. The default location is: `C:\Program Files (x86)\Progress\Telerik UI for Xamarin RX XXX\Binaries`.
>
> All binaries built for a specific platform are placed in a folder named after that platform.

## Example

Once your application is correctly set, you are ready to add a **RadEntry** control to the page:

<snippet id='entry-getting-started-xaml'/>

In addition to this you need to add the following namespace:

<snippet id='xmlns-telerikinput'/>
<snippet id='ns-telerikinput'/>

Here is the result:

![Entry Getting Started Example](images/entry_getting_started.png)

>important The **SDK Browser** and **QSF** applications contain different examples that show RadEntry's main features. You can find the applications in the **Examples** and **QSF** folders of your local **Telerik UI for Xamarin** installation.

## See Also

- [Key Features]({% slug entry-key-features%})
