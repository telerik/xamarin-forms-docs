---
title: How to configure Nuget.config file to use Теlerik Nuget Server within Xamarin app
description: Explain how to set credentials to Telerik Nuget Server in Nuget.config file to build in AppCenter
type: how-to
page_title: How to build Xamarin.Forms project with Telerik Xamarin nuget package in AppCenter
slug: common-nuget-config
position: 
tags: configure, nuget, telerik, server, app, how-to, credentials, set, AppCenter, Xamarin, XamarinForms   
ticketid: 1096817
res_type: kb
---

## Environment
<table>
    <tbody>
	    <tr>
	    	<td>Product Version</td>
	    	<td>2019.2.603.1</td>
	    </tr>
	    <tr>
	    	<td>Product</td>
	    	<td>Telerik UI for Xamarin</td>
	    </tr>
    </tbody>
</table>


## Description

Telerik UI for Xamarin Nuget package is hosted on a private server, it is not published in the official NuGet storage. So, when you're building a Xamarin.Forms application with our Xamarin nuget package in AppCenter, you would need to provide the credentials to the Telerik Nuget Server (they are the same as in your Telerik account) inside a Nuget.config file.

>tip The improved Telerik NuGet Server v3 is now available for beta testing at https://nuget.telerik.com/v3/index.json. The new v3 API is faster, lighter, and reduces the number of requests from NuGet clients. You are welcome to try it. For authentication use the same credentials

## Solution

You could check how to setup the Nuget.config file in the MSDN topic below:
https://docs.microsoft.com/en-us/nuget/reference/nuget-config-file#package-source-sections

The tricky part is that you'd need to use **ClearTextPassword** field for the credentials.

Here is an example with setting up Telerik Nuget Server in Nuget.config:

```XML
<packageSources>
	<add key="NuGet" value="https://api.nuget.org/v3/index.json" />
	<add key="Telerik" value="https://nuget.telerik.com/nuget" />
</packageSources>
<packageSourceCredentials>
	<Telerik>
	  <add key="Username" value="%TELERIK_USERNAME%" />
	  <add key="ClearTextPassword" value="%TELERIK_PASSWORD%" />
	</Telerik>
</packageSourceCredentials>
```

and if you want to use the beta server:

```XML
<packageSources>
	<add key="NuGet" value="https://api.nuget.org/v3/index.json" />
	<add key="Telerik" value="https://nuget.telerik.com/v3/index.json" />
</packageSources>
<packageSourceCredentials>
	<Telerik>
	  <add key="Username" value="%TELERIK_USERNAME%" />
	  <add key="ClearTextPassword" value="%TELERIK_PASSWORD%" />
	</Telerik>
</packageSourceCredentials>
```
