---
title: Getting Started on Windows
page_title: Getting Started with Telerik UI for Xamarin on Windows
slug: getting-started-windows
position: 2
---

# Getting Started on Windows

This article should help developers to get started with **Telerik UI for Xamarin** suite on **Windows OS**.

>Please, make sure you have already read the [System Requirements]({% slug system-requirements %}) article before you proceed.

## 1. Start with Xamarin.Forms app

Depending on your scenario, you either have an existing app where you will add our components, or you have to create a new blank app.
 
> If you already have an app, please proceed to the [next step]({%slug getting-started-windows%}#2-getting-the-latest-platform-sdk-versions).

### Create new app from scratch

If you start your app from scratch, you have these options:

- Use our [**Project Wizard**]({%slug project-wizard%}) to create a project that has everything setup for you. You can start using our components right away without manually adding required assemblies and modifying solution files.
- Create a blank Xamarin.Forms app and manually setup all requirements.

> We strongly recommend using the **Project Wizard**. If you choose this option, you can skip the next steps in this article and jump directly to the **Getting Started** section of any control.

If your scenario requires using the other approach, please proceed following the steps in this article.

#### How to create blank Xamarin.Forms app

Create new solution **Mobile App (Xamarin.Forms)**:

**Visual Studio**: located at *Visual C#* > *Cross-Platform* section:  
![Create new Xamarin.Forms solution](../images/visual-studio-new-solution.png "Image")

In the next screen you could choose the platforms your app will target as well as the code sharing strategy:

![Create new Xamarin.Forms solution second screen](../images/visual-studio-new-solution_screen2.png "Image")

Typically, the solution can contain the following projects:

* **.NET Standard/Shared**: Cross platform application library that contains the shared code and UI.
* **Android**: Available on all operation systems.
* **UWP**: Available only for projects created with Visual Studio.
* **iOS**:
 * Available for MacOS.
 * If you wish to use Visual Studio as a development environment you will also need a mac machine. You can find more information how to setup your environment here: [Introduction to Xamarin.iOS for Visual Studio](http://developer.xamarin.com/guides/ios/getting_started/installation/windows/introduction_to_xamarin_ios_for_visual_studio/)

>important The minimum required version of **Xamarin.Forms** package is **4.1.0.581479**.
  
>The **Android project** requires multiple packages with specific versions. The **Xamarin.Forms** package will install most of the required packages as its dependencies. You can then go to [Required Android Support Libraries]({% slug required-android-support-libraries %}) article and check if you have all required files and versions.

## 2. Add reference to Telerik Components

You have two options.

### Telerik NuGet package server

You can use our [**Telerik NuGet package server**]({%slug telerik-nuget-server%}) to include our suite in your solution and/or update to the latest available version.

### Manually add required assemblies

The hard way is to add all required assemblies manually. We have added a special section in each control documentation that lists all the required assemblies. The section is called **"Adding the required Telerik references"** and is located in the **Getting Started** article for each control.

>important As some of the controls included in **Telerik UI for Xamarin** suite rely on the **SkiaSharp** rendering library, you should either install [SkiaSharp.Views.Forms](https://www.nuget.org/packages/SkiaSharp.Views.Forms/1.59.0) in all projects included in the Xamarin solution (portable, android, ios, etc.) or in case you do not intend to use any of the Skia-dependent components (Gauges, Rating, BusyIndicator), you could reference the [Lite assemblies]({%slug telerik-light-assemblies%}).

## See Also

- [System Requirements]({% slug system-requirements %})
- [Project Wizard]({%slug project-wizard%})
- [Telerik NuGet packages server]({%slug telerik-nuget-server%})
