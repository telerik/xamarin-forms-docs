---
title: Getting Started
page_title: Getting Started with Telerik UI for Xamarin Forms
slug: getting-started
---
# Getting Started #

Here are described the steps that you have to follow to create a new cross platform solution with **Visual Studio** or **Xamarin Studio**. Please, read the [System Requirements]({% slug system-requirements %}) article before you proceed.

First you have to download and install [Xamarin Studio](http://xamarin.com/download).

## Create new Xamarin.Forms Solution##
Create new solution **Xamarin.Forms Portable** / **Shared**

* **Visual Studio**: located at `Templates > Visual C# > Mobile Apps` section:  
![Create new Xamarin.Forms solution](images/installation-and-deployment/visual-studio-new-solution.png "Image")
* **Xamarin Studio**: located at `C# > Mobile Apps` section:  
![Create new Xamarin.Forms solution](images/installation-and-deployment/xamarin-studio-new-solution.png "Image")  

Typically, the solution will contain the following projects:

* **Portable/Shared**: Cross platform application library that contains the shared code and UI.
* **Android**: Available on all operation systems.
* **WinPhone**: Available only for projects created with Visual Studio.
* **iOS**
	* Available for OS X.
	* If you wish to use Visual Studio as a development environment you will also need a mac machine. You can find more information how to setup your environment here: [Introduction to Xamarin.iOS for Visual Studio](http://developer.xamarin.com/guides/ios/getting_started/installation/windows/introduction_to_xamarin_ios_for_visual_studio/)
	 
![Solution projects](images/installation-and-deployment/visual-studio-solution-projects.png "Image")

## Packages ##
>The minimum supported Xamarin.Forms version is **1.2.2.6234**.  
>The Android project needs the following nuget package installed: **Xamarin Support Library v7 AppCompat**
  
* On **Visual Studio** you can download and update these packages from the NuGet Package Manager.  
* On **Xamarin Studio** you can right click on the Packages folder of your projects and select `Update` or `Add Packages...`
