---
title: Telerik NuGet Server
page_title: Telerik NuGet Server
slug: telerik-nuget-server
position: 8
---

# Telerik NuGet Server

The following steps demonstrate how users can take advantage of **Telerik NuGet server** in order to include our suite in their solution and/or update to the latest available version.

## Visual Studio

The first step is to add the Telerik server to the NuGet package sources. This can be done in the Package Manager Settings from the Tools menu.

![](images/nuget-server/nuget-vs-pm-settings.png)

In the the Package Sources section users can add new sources.

![](images/nuget-server/nuget-vs-add-source.png)

In the Source field users should fill in the address of the Telerik server (URL: **https://nuget.telerik.com/nuget**) and click the Update button.

![](images/nuget-server/nuget-vs-telerik-server.png)

The Telerik server is now ready to use. Users can go to their solution and open the solution package manager.

![](images/nuget-server/nuget-vs-manage-packages.png)

Users have to find the **Telerik.UI.for.Xamarin** package and install it to their projects following these steps:

1. Select the Telerik server as a package source and enter their credentials when prompted.
1. Search for the Telerik.UI.for.Xamarin package.
1. Select the package when found.
1. Select which projects will have the package installed.
1. Choose the desired version and click Install.

![](images/nuget-server/nuget-vs-add-packages.png)

Now the user's solution has all required Telerik assemblies.

## Xamarin Studio

Users first have to add the Telerik NuGet server in their packages sources list. This can be done by clicking on the settings icon of any “*Packages*” folder (any project will do the job) and choosing “*Add Packages…*”.

![Add Packages](images/getting-started-add-packages-menu.png "Add Packages")

This will open another dialog. Users need to choose “*Configure Sources…*” option from the dropdown in the upper right corner.


![Configure Sources](images/getting-started-configure-sources.png "Configure Sources")

On the next dialog users will see all the available sources. Choose “*Add*” to add the new server.

![Add Telerik NuGet server](images/getting-started-add-package-source.png "Add Telerik NuGet server")

In the Add Package Source dialog users should fill in the information of the Telerik server (URL: **https://nuget.telerik.com/nuget**) as well as their private Telerik credentials. Authentication procedure is required in order to allow downloading the packs.

![Telerik NuGet server details](images/getting-started-add-telerk-server.png "Telerik NuGet server details")

After the Telerik NuGet server is added users will be able to see the packages they are allowed to download in the Add Packages dialog. This will allow them to check the **Telerik UI for Xamarin** pack and add it into their projects.

### Add Telerik UI for Xamarin pack ##

Once the server is added users will be able to add to their projects any of the **Telerik NuGet** packages available for their license. One click on the settings icon of the “*Packages*” folder of any project will open the **Add Packages** dialog where the available Telerik packs will be listed.

![Telerik NuGet packages](images/getting-started-add-packages-dialog.png "Telerik NuGet packages")