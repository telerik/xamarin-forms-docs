---
title: Telerik NuGet Server
page_title: Telerik NuGet Server
description: Check our detailed documentation atricle on how to use Telerik UI for Xamarin NuGet packages.
slug: telerik-nuget-server
position: 8
---

# Telerik NuGet Server

The following steps demonstrate how you can take advantage of **Telerik NuGet server** [https://nuget.telerik.com/v3/index.json](https://nuget.telerik.com/v3/index.json) in order to include Telerik UI for Xamarin suite in your solution and/or update to the latest available version.

>important The credentials needed to access Telerik NuGet server are the same you use to log into your [Telerik account](https://www.telerik.com/account).

>You will find NuGet packages containing the standard and the lite assemblies - the latter have *Lite* in their names. Please take a look at the [Lite Assemblies]({%slug telerik-light-assemblies%}) topic for more details on the difference between them.

## Visual Studio for Windows

<iframe width="560" height="315" src="https://www.youtube.com/embed/c3m_BLMXNDk" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

The first step is to add the Telerik server to the NuGet package sources. This can be done in the Package Manager Settings from the Tools menu.

![](images/nuget-server/nuget-vs-pm-settings.png)

In the the Package Sources section you can add new sources.

![](images/nuget-server/nuget-vs-add-source.png)

In the Source field you should fill in the address of the Telerik server (URL: **https://nuget.telerik.com/v3/index.json**) and click the Update button.

> The old [https://nuget.telerik.com/nuget](https://nuget.telerik.com/nuget) server will be deprecated and we encourage our clients to switch to the v3 API. The new v3 API is faster, lighter, and reduces the number of requests from NuGet clients.

![](images/nuget-server/nuget-vs-telerik-server.png)

The Telerik server is now ready to use. You can go to the solution and open the solution package manager.

![](images/nuget-server/nuget-vs-manage-packages.png)

### Add Telerik UI for Xamarin pack in Visual Studio for Windows

You will have to find the **Telerik.UI.for.Xamarin** package and install it to your projects following these steps:

1. Select the Telerik server as a package source and enter your credentials when prompted.
1. Search for the Telerik.UI.for.Xamarin package.
1. Select the package when found.
1. Select which projects will have the package installed.
1. Choose the desired version and click Install.
 
![](images/nuget-server/nuget-vs-add-packages.png)

Now the solution has all required Telerik assemblies.

## Visual Studio for Mac

You have to first add the Telerik NuGet server to the Visual Studio for Mac packages sources list. This can be done by clicking on the solution folder in Visual Studio for Mac to display the context menu and choose “*Manage NuGet Packages…*”.

![Add Packages](images/getting-started-add-packages-menu.png "Add Packages")

This will open another dialog. Choose “*Configure Sources…*” option from the dropdown in the lower left corner.

![Configure Sources](images/getting-started-configure-sources.png "Configure Sources")

On the next dialog you can see all the available sources. Choose “*Add*” to add the new server.

![Add Telerik NuGet server](images/getting-started-add-package-source.png "Add Telerik NuGet server")

In the Add Package Source dialog you should fill in the information of the Telerik server (URL: **https://nuget.telerik.com/v3/index.json**) as well as your private Telerik credentials. Authentication procedure is required in order to allow downloading the packs.

> The old [https://nuget.telerik.com/nuget](https://nuget.telerik.com/nuget) server will be deprecated and we encourage our clients to switch to the v3 API. The new v3 API is faster, lighter, and reduces the number of requests from NuGet clients.

![Telerik NuGet server details](images/getting-started-add-telerk-server.png "Telerik NuGet server details")

After the Telerik NuGet server is added you will be able to see the available for download packages in the *Manage NuGet Packages...* dialog. This will allow you to check the **Telerik UI for Xamarin** pack and add it into your projects.

### Add Telerik UI for Xamarin pack in Visual Studio for Mac

Once the server is added you will be able to add to your projects any of the **Telerik NuGet** packages available for your license. One click on the solution folder will open the context menu and will give you the option to call the **Manage NuGet Packages...** dialog where the available Telerik packs will be listed.

![Telerik NuGet packages](images/getting-started-add-packages-dialog.png "Telerik NuGet packages")

After choosing **Telerik UI for Xamarin** package, you can apply it to all the projects in the solution:

![Telerik NuGet packages](images/getting-started-add-packages-dialog-all.png)

## Troubleshooting

### '401 Logon failed' error

If you're receiving this error when connecting to Telerik Nuget Server, you could try to update your NuGet credentials through the Windows Credential Manager. Please follow the steps below:

1. Close all open Visual Studio instances (this is so that all NuGet package manager tasks are stopped).
2. Open the "Credential Manager" app on your PC.
3. Scroll through all the entries until you find any that are for nuget.telerik.com.
4. Once you find that entry, expand it and select "edit".
5. Make sure the username and password are the same ones you use for your Telerik account and clisk
    1. Use the email address in the place of username
    2. Make sure any special characters are escaped (see *Handling Special Characters in Password* below)
    3. Click "Save" 
6. Make sure the URL does not have a trailing slash, it must be only `https://nuget.telerik.com/nuget`

Now you can reopen Visual Studio and access the Telerik NuGet server. 

#### Handling Special Characters in Password

If your password contains a special character, those characters need to be escaped or it may fail authentication resulting in *Error 401 login failure* from the NuGet server. A common character that needs to be escaped is the ampersand `&`, but it can be as unique as the section character `§`. There are two ways to handle this.

1. Change the password so that it only includes characters that do not need to be escaped
2. HTML encode the password so the special characters are escaped (e.g. `my§uper&P@§§word` becomes `my&sect;uper&amp;P@&sect;&sect;word`).

We **strongly** discourage entering your password into an online encoder utility, use Powershell instead. Here's one example:

	Add-Type -AssemblyName System.Web
	[System.Web.HttpUtility]::HtmlEncode('my§uper&P@§§word')

Result:

![Powershell Encoding](https://user-images.githubusercontent.com/3520532/93901989-13d98200-fcc5-11ea-9d36-0eaee4272453.png)

### Networking Problems

Another common problem is that your machine (PC or DevOps agent) is behind a proxy. To check if you're experiencing a networking issue, open the following URL in your web browser:

https://nuget.telerik.com/nuget/Search()?$filter=IsAbsoluteLatestVersion&searchTerm=%27Xamarin%27&includePrerelease=true&$skip=0&$top=100&semVerLevel=2.0.0. 

After you enter your Telerik.com username and password, you should see an XML search result containing a list of all the Telerik.UI.for.Xamarin packages available with your license.


## See Also
- [System Requirements]({%slug system-requirements%})
- [Getting Started on Windows]({%slug getting-started-windows%})
- [Getting Started on Mac]({%slug getting-started-mac%})
