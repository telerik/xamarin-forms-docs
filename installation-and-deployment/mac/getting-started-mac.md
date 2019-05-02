---
title: Getting Started on Mac
page_title: Getting Started with Telerik UI for Xamarin.Forms on Mac
slug: getting-started-mac
position: 0
---
# Getting Started on Mac

This article should help developers to get started with **Telerik UI for Xamarin** suite and **Visual Studio for Mac** on **Mac OS**.

>Please, make sure you have already read the [System Requirements]({% slug system-requirements %}#macos) article before you proceed.
 
## 1. Start with Xamarin.Forms app

Depending on your scenario, you either have an existing app where you will add our components, or you have to create a new blank app.
 
> If you already have an app, please proceed to the [next step]({%slug getting-started-mac%}#2-getting-the-latest-platform-sdk-versions).

### Create new app from scratch

If you start your app from scratch, you have these options:

- Use our [**Project Wizard**]({%slug project-wizard-xamarin-studio%}) to create a project that has everything setup for you. You can start using our components right away without manually adding required assemblies and modifying solution files. If you choose this option, you can skip the next steps in this article and jump directly to the Getting Started section of any control.
- Create a blank Xamarin.Forms app and manually setup all requirements. If your scenario requires using this approach, please proceed following the steps in this article.

#### How to create blank Xamarin.Forms app

Open Visual Studio for Mac and create new solution **Xamarin.Forms -> Blank Forms App**:

![Create new Xamerin.Forms app](images/mac-xs-create-new-app-1.png)

Follow the steps in the wizard until your app is created. It should contain the following projects:

![](images/mac-xs-new-app.png)

## 2. Getting the latest platform SDK versions

Make sure that your Xamarin.Forms packages are up to date.

You can either use the [Visual Studio UI]({%slug getting-started-mac%}#update-packages-using-visual-studio-ui) to update all packages to the required versions, or you can do it [manually]({%slug getting-started-mac%}#update-packages-using-packagesconfig-files) by editing the *packages.config* file in each project.

### Update packages using Visual Studio UI

>You have to make sure that you have the right version of Xamarin and all related packages.

To update specific package to the latest version, right-click on it and select "update":
 
 ![Update packages](images/getting-started-mac-update-packages.png)

If your application requires specific version of a package, you can right-click directly on the packages folder and choose "Add packages...". This will work even if newer version of the package is already added.

![](images/getting-started-mac-add-packages-1.png)

You have to search for the package and select the correct version:

![](images/getting-started-mac-add-packages-2.png)


>important The minimum required version of **Xamarin.Forms** package is **3.6.0.264807**.

>The **Android project** requires multiple packages with specific versions. The **Xamarin.Forms** package will install most of the required packages as its dependencies. You can then go to [Required Android Support Libraries]({% slug required-android-support-libraries %}) article and check if you have all required files and versions.

### Update packages using *packages.config* files

Each project in your solution contains *packages.config* file that contains all referenced NuGet packages. Users can manually update those files to include new packages or modify existing ones. After updating the respective files the **NuGet Package manager** will be able to restore the missing packs and update the existing ones.

Everything users need to do is to fill in the missing packages and update the existing ones in the following format:

	<package id="[PackageName]" version="[PackageVersion]" targetFramework="[TargetFramework]" />
	
####  iOS and Portable

For the iOS and the Portable projects users need to update only the version of the required Xamarin.Forms package, this is the only required package. Its latest official version can be seen on the [official NuGet page](https://www.nuget.org/packages/Xamarin.Forms/). Open the *packages.config* file directly in Xamarin Studio and replace only the existing version with the latest one.

#### Android
	
After updating the Xamarin.Forms package, you can go to [Required Android Support Libraries]({% slug required-android-support-libraries %}) article and check if you have all required packages and versions.
	
>Please bear in mind that the [*TargetFramework*] parameter in the *packages.config* file should be the same among all packages since they all target the Android platform. The value of this parameter can be seen from already installed packages.

If the versions of the required packages is not correct, the Android project will not build with multiple errors of this type:

	Error: `DataFormMultilineEditor.Droid.Resource.Style' does not contain a definition for `Widget_MediaRouter_ControllerText_Title'

#### Restore the NuGet packages

After updating all the *packages.config* files users are now ready to restore the packages. This can be done by clicking the settings icon of the solution and choosing “*Restore NuGet Packages*”.

![Restore NuGet Packages](images/getting-started-mac-restore-packages.png "Restore NuGet Packages")

## 3. Add reference to Telerik Components

You have the following options:

### Telerik NuGet package server

You can use our [**Telerik NuGet package server**]({%slug telerik-nuget-server%}#visual-studio-for-mac) to include our suite in your solution and/or update to the latest available version.

### Manually add required assemblies

The hard way is to add all required assemblies manually. We have added a special section in each control documentation that lists all the required assemblies. The section is called **"Adding the required Telerik references"** and is located in the **Getting Started** article for each control.

>important As some of the controls included in **Telerik UI for Xamarin** suite rely on the **SkiaSharp** rendering library, you should either install [SkiaSharp.Views.Forms](https://www.nuget.org/packages/SkiaSharp.Views.Forms/1.59.0) in all projects included in the Xamarin solution (portable, android, ios, etc.) or in case you do not intend to use any of the Skia-dependent components (Gauges, Rating, BusyIndicator), you could reference the [Lite assemblies]({%slug telerik-light-assemblies%}).

## See Also

- [System Requirements]({% slug system-requirements %})
- [Telerik NuGet packages server]({%slug telerik-nuget-server%})
- [Project Wizard for Visual Studio for Mac]({%slug project-wizard-xamarin-studio%})