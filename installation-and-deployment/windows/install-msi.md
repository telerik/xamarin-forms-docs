---
title: Installing UI for Xamarin from MSI File
page-title: Installing UI for Xamarin from MSI File
description: This article will guide you through the steps you have to follow in order to download and install the UI for Xamarin Forms.
position: 1 
slug: install-msi
---
# Installing Telerik UI for Xamarin from MSI file #

To install Telerik UI for Xamarin on your machine from the Windows Installer MSI file, follow the instructions below:

>Please, make sure you have already read the [System Requirements]({% slug system-requirements %}) article before you proceed.

1. Go to to the Telerik UI for Xamarin download page following the instructions in [Download Product Files]({%slug download-product-files%}) topic.

2. Download the automatic installation (MSI) file.

3. Once the download completes, **run the MSI file** and follow the instructions. On a 32bit machine the wizard will install the UI for Xamarin component in the following folder unless you specify otherwise: *C:\Program Files\Telerik\* or *C:\Program Files (x86)\Telerik\* for a 64bit machine.

> If you prefer using the ZIP file with the dlls instead of the automatic installation you can download it from the [Telerik UI for Xamarin product download page]({%slug download-product-files%}).

#### Exploring the installation folder

If you open the installation folder you will probably note the following sub directories:

* Binaries
* Examples - here you can find the [SDK Browser application]({%slug developer-focused-examples%}#sdk-browser-application) as well as sample applications demonstrating our [controls for Xamarin.Android and Xamarin.iOS]({%slug native-controls-overview%}).
* LicenseAgreements - provides the product EULA.
* QSF - includes the full source of [Telerik UI for Xamarin Samples Application]({%slug developer-focused-examples%}#telerik-ui-for-xamarin-samples-application).
* VSExtensions - includes our Visual Studio Extension package. For more details go to [Visual Studio Extensions]({%slug vs-extensions %}) topic.

**Binaries** folder contains all the Telerik UI for Xamarin assemblies grouped in folders according to the target project they should be added to. Check the exact structure in the image below:

![](../images/binaries-current-structure.png)

### Next Steps
- [Using project wizard for Visual Studio]({% slug project-wizard %})
- [Getting started on Windows]({%slug getting-started-windows%})
- [Getting started on Mac]({%slug getting-started-mac%})
- [UI for Xamarin Support and Learning Resources](http://www.telerik.com/support/xamarin-ui)