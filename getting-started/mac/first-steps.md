---
title: First Steps
page_title: First Steps
description: First Steps with Telerik UI for Xamarin
slug: mac-getting-started
tags: First Steps
position: 0
---

# First Steps

This article will guide you through the basics of __Telerik UI for Xamarin__ and how to start using the suite on __Mac__.

Once you have your first simple Xamarin control up and running, take a look at the __Next Steps__ section to explore other control functionality.

For additional resources you can also review the Related Articles section on the right.

## Download the Controls

When you have an active trial or developer license, you can download the following files:

* Standalone installation
* Assemblies for manual installation
* NuGet packages
* Old versions

>If you are not a customer, you can [download a free, fully functional trial](https://www.telerik.com/download-trial-file/v2-b/ui-for-xamarin?file=pkg) and the same options will apply to you as well.

>tip Make sure you have already read the [System Requirements]({%slug system-requirements%}#macos) article before you proceed.

Follow the steps below in order to download the installation files:

1. Log into your [Telerik account](https://www.telerik.com/account/) and click on the __Downloads__ tab.

	##### __Figure 1a: Downloads tab__
	![](images/download_product_files_1.png)

2. Select __Progress Telerik UI for Xamarin__ product title.

3. Download the Installation __.pkg__ and __.mpack__ files.

	##### __Figure 3a: Download installers__
	![](images/download_product_files_2.png)
	
4. Install __Progress Telerik UI for Xamarin__ 
	
	Since MacOS Catalina, downloaded installers and packages are quarantined. If you try to just open the **pkg** file, you may see a popup preventing you from installing it. The easiest solution is to
	1. Right-click on the **.pkg** file you downloaded in Step 3
	2. Select "Open With"
	3. Select "Installer" (see Fig 4a). 

	##### __Figure 4a: Open With -> Installer__
	![OpenWithInstaller](images/macos-open-with-installer.png)

	> For a more permanent solution, open the Mac OS [Settings -> Security & Privacy](https://support.apple.com/library/content/dam/edam/applecare/images/en_US/macos/Mojave/macos-mojave-system-preferences-security-general-require-disable-dark.jpg) settings panel and select **Allow apps downloaded from App Store and Identified developers**. 

5. Install Visual Studio for Mac Extensions

	Once you have finished the **pkg** installation, now it's time to install the Visual Studio Extensions with the **mpack** file. 
	
	Open the Visual Studio **Extension Manager** and select the *Install form file...* option. __Figure 5a__ shows how to access the Extension Manager.

	##### __Figure 5a: Accessing Visual Studio Extensions__
	![Visual Studio Extensions](images/VisualStudioExtensions.png)

	Once you have accessed the **Extension Manager**, the following dialog will appear and you should look for the **Install from file** option.

	##### __Figure 5b: Reaching the Extension Manager__
	![Visual Studio Extensions](images/ExtensionManager.png)

	Navigate to the **ProjectTemplateXamarin.mpack** file, select it and click "Open" to complete the installation.

	##### __Figure 5c: The ProjectTemplate location__
	![Visual Studio Extensions](images/InstallExtensionPackage.png)

	If the add-in is successfully added to Visual Studio, you should see it in the **IDE extensions** section.
	
	##### __Figure 5d: Installation Successful__
	![Installed Extension](images/macos-vs-extension-install-confirmation.png)
	

7. **Restart Visual Studio for Mac** to complete the installation.

## Create a Project with Telerik UI for Xamarin

1. Now you can create a new project using the Telerik Project Template. Select which platform(s) your application targets and the wizard will automatically reference all required Telerik binaries and packages.

	#### __Figure 1a: Create New Project Dialog__
	![Xamarin Studio Create new project](images/CreateNewProject.png)

2. Select the **Telerik Forms App** template which can be found in *Other > Miscellaneous* section.

	#### __Figure 2a: Telerik Forms App template__
	![Xamarin Studio Create new project](images/ChooseTemplate.png)

## Next Steps

Now that you have downloaded and installed Telerik UI for Xamarin, and created your first project its time to add the Telerik UI for Xamarin control. Below you can find guidance on getting started with that:

- [Add Control to Your Project]({%slug mac-add-control-to-project %})
- [Explore Control Features]({%slug mac-getting-started-explore-control-features %})
- [Change control appearance]({%slug mac-getting-started-change-control-appearance %})
- [Further information]({%slug mac-getting-started-next-steps%})

## See Also

- [System Requirements]({%slug system-requirements %})
- [Telerik NuGet Server]({%slug telerik-nuget-server%})
- [Required Android Support Libraries]({%slug required-android-support-libraries%})
- [Getting started on Windows]({%slug win-getting-started%})
