---
title: Using Project Wizard for Visual Studio
page_title: Telerik UI for Xamarin Project Wizard
slug: project-wizard
position: 3
previous_url: devtools/xamarin/installation-and-deployment/project-wizard
---

# Project Wizard

This article introduces the **Telerik UI for Xamarin.Forms Project Wizard**. The Project Wizard is a Visual Studio extension that improves the getting started experience for Telerik customers.

![Visual Studio Project Wizard](../images/visual-studio-project-wizard.png)

It allows customers to select which platform(s) their application targets and the wizard will automatically reference all required Telerik binaries and packages.

>With the minor release R1 **2017.1.10301** the **Project Wizard** is part of our installer. The installer is integrated with **Visual Studio 2017** and automatically installs both the Project Wizard and the available Item Templates.

# New Project

In order to create a new solution using the Project Wizard customers should open the **New Project** dialog window of Visual Studio.
Next users should navigate to Templates -> Visual C# section and the Telerik UI for Xamarin.Forms Project Wizard will be listed at the end.

![Visual Studio New Project](../images/visual-studio-new-project-dialog.png)

Find the **TelerikXFApp** template and click OK. This will invoke the Project Wizard. Make your choice and click **Create**. Wait until Visual Studio prepares all the projects for you. After the solution is created it should be rebuilt in order to update the Xamarin.Forms NuGet packages.

![Newly created solution](../images/visual-studio-created-solution.png)

After rebuilding the solution all packages and binaries will be updated and users will be ready to choose a startup project and deploy it to the targeted platform.


## See Also
- [System Requirements]({%slug system-requirements%})
- [Getting Started on Mac]({%slug getting-started-mac%})
- [Required Android Support Libraries]({%slug required-android-support-libraries%})
