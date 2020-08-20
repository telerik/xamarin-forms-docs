---
title: Project Wizard for Visual Studio
page_title: Telerik UI for Xamarin Project Wizard
description: All you need to know about the project wizard for Visual Studio on Windows. Find all you need to know in Xamarin.Forms instalation and deployment documentation.
slug: project-wizard
position: 5
previous_url: devtools/xamarin/installation-and-deployment/project-wizard
---

# Project Wizard

This article introduces the **Telerik UI for Xamarin.Forms Project Wizard**. The Project Wizard is a Visual Studio extension that improves the getting started experience for Telerik customers.

![Visual Studio Project Wizard](../images/visual-studio-project-wizard.png)

It allows customers to select which platform(s) their application targets and the wizard will automatically reference all required Telerik binaries and packages.

## Installing the Project Wizard

In order to have access to the **Project Wizard to Visual Studio**, you need to install the Visual Studio Extensions that is shipped with the default installation of the **Telerik UI for Xamarin** suite. It can also be downloaded and installed as separate product from the [Visual Studio Marketplace](https://marketplace.visualstudio.com/) for Visual Studio 2017/2019.

>For detailed information on installing the Project Wizard, go to [Installing VSExtensions]({%slug vs-extensions%}) topic.

## New Project

In order to create a new solution using the Project Wizard customers should open the **New Project** dialog window of Visual Studio.

![Visual Studio New Project create](../images/visual-studio-new-project-create.png)

Next users should navigate to Templates -> Visual C# section and the Telerik UI for Xamarin.Forms Project Wizard will be listed there.

![Visual Studio New Project](../images/visual-studio-new-project-dialog.png)

Find the template and click OK. This will invoke the Project Wizard. Make your choice and click **Finish**. Wait until Visual Studio prepares all the projects for you. After the solution is created it should be rebuilt in order to update the Xamarin.Forms NuGet packages.

![Newly created solution](../images/visual-studio-created-solution.png)

After rebuilding the solution all packages and binaries will be updated and users will be ready to choose a startup project and deploy it to the targeted platform.

## See Also
- [Visual Studio Item Templates]({%slug installation-visual-studio-item-templates%})
- [Telerik NuGet Server]({%slug telerik-nuget-server%})
- [Required Android Support Libraries]({%slug required-android-support-libraries%})

