---
title: Getting Started
page_title: Getting Started
position: 2
slug: common-getting-started
---

# Getting Started

This article will guide you through the basics of Telerik UI for Xamarin and how to start using the suite.

## Xamarin Forms

Before proceeding with **Telerik UI for Xamarin** documentation we recommend that you check the fundamental concepts of [Xamarin Forms](https://developer.xamarin.com/guides/xamarin-forms/). In general, Xamarin is a cross-platform UI framework that allows you to create native applications shared between Windows (UWP, Windows Phone), Android and iOS.

There are two approaches you could take for developing Xamarin applications – we will summarize the main points here.

#### Develop Through Xamarin.Forms

Using this approach, you can quickly achieve similar look and feel on all available platforms by sharing the same code base. All controls and views are eventually translated to platform-specific native elements without the need of any further actions from your side. You should consider this approach for:

* Apps that require little platform-specific functionality
* Apps where code sharing is more important than custom UI and platform-specific features
* You feel comfortable creating your UI through XAML

If you choose this approach, you should refer to the available custom controls from the **Xamarin Forms Controls** section.

#### Develop Through Xamarin Native (Xamarin.iOS & Xamarin.Android)

By choosing this approach, you can take full advantage of each platform. You are free to create platform-specific views to achieve the desired appearance in the smallest details. You can access native APIs and utilize device-specific features.  

For more details check the official [Xamarin.iOS](https://developer.xamarin.com/guides/ios/getting_started) and [Xamarin.Android](https://developer.xamarin.com/guides/android/getting_started) documentation pages.

**Telerik UI for Xamarin** suite provides native controls wrappers that could be used for Xamarin.Android and Xamarin.iOS development. For more detailed information you could refer to the **Native Controls Wrappers** section.

## Check the System Requirements

You can check the requirements for Telerik UI for Xamarin suite in the [System Requirements]({%slug system-requirements%}) help article.

## Download and Install Telerik UI for Xamarin

See how to download and install the components suite in the following help articles:

* [Download Product Files]({%slug download-product-files%})
* [Installing Telerik UI for Xamarin]({%slug install-msi%})

## Setting up Telerik UI for Xamarin Project

To start using the Telerik UI for Xamarin controls you can create a new Xamarin Forms project and add the required dependenices. You can see how to to this in the [Getting Started on Windows]({%slug getting-started-windows%}) and [Getting Started on Mac]({%slug getting-started-mac%}) articles.

You can avoid adding all the assemblies manually by **using the Project Wizard of your IDE**. This will automatically set up a new project with all required dlls. Read more about this in the [Project Wizard for Xamarin Studio]({%slug project-wizard-xamarin-studio%}) and [Project Wizard for Visual Studio]({%slug project-wizard%}) help articles. 

> The wizard will include the dlls for all controls from the UI for Xamarin suite. You can remove the ones that you don't need manually after the project is created.

## Using Visual Studio Item Templates

There are several __predefined item templates for Visual Studio__ included in the Telerik UI for Xamarin suite which come by default with the installation of the product. You can directly include them in your Xamarin Forms project and use them as footprints for similar scenarios in your application. Read more about this in the [Visual Studio Item Templates]({%slug installation-visual-studio-item-templates%}) article.

## Getting Started With the Controls

Each control depends on specific assemblies which you will need to reference in the corresponding Xamarin projects (iOS, Android, Windows and the shared project). You can see the required assemblies for each control in the **Required Telerik Assemblies** help articles. There is such article in the Getting Started section of each control in the documentation. For example check the one for the [RadAutoComplete]({%slug autocomplete-getting-started-required-assemblies%}) control.

To get started with a control we recommend to **read its Getting Started article**. Those articles contain some basic information about setting up the control.

## Developer Focused Examples

There are several applications that are shipped with the installation of the **Telerik UI for Xamarin** suite. You can check them in order to review different scenarios in which the controls can be used and to familiarize yourself with the controls' main features. 

#### SDK Samples Application

The developer focused examples is an infrastrucutre with many demos showing our controls. Read more about this in the [corresponding help article]({%slug developer-focused-examples%}). You can find the demos in the [telerik/xamarin-forms-sdk](https://github.com/telerik/xamarin-forms-sdk) GitHub repository.

#### QSF Application

The **QSF application** is another useful resource that shows the **Telerik UI for Xamarin ** controls in different **Xamarin.Forms** projects and scenarios. The application can be found in the QSF folder of your local installation. You can review the source code of each example and familiarize with the configuration possibilities that each it provides.

#### Native Examples

Solutions that show how to use the controls when developing through **Xamarin.Android** or **Xamarion.iOS** are available in the **Examples** folder as well. Respectively, they are separated in different folders - iOS and Android.

## See Also

- [System Requirements]({%slug system-requirements %})
- [Getting started on Windows]({%slug getting-started-windows%})
- [Getting started on Mac]({%slug getting-started-mac%})
- [UI for Xamarin Support and Learning Resources](http://www.telerik.com/support/xamarin-ui)
