---
title: Using Boots to Update Xamarin SDKs in shared CI machines.
page_title: Using Boots to Update Xamarin SDK in CI
description: How to update an outdated Xamarin.iOS or Xamarin.Android SDK installation on a cloud build machine
slug: using-boots-to-update-xamarin-sdk
tags: appcenter, azure devops, github actions, ci, ci-cd, gitlab, boots, xamarin.ios error, xamarin.android error
res_type: kb
---

## Environment

<table>
    <tbody>
	    <tr>
	    	<td>Product Version</td>
	    	<td>Any</td>
	    </tr>
	    <tr>
	    	<td>Product</td>
	    	<td>UI for Xamarin</td>
	    </tr>
	    <tr>
	    	<td>System</td>
	    	<td>AppCenter, Azure DevOps, GitHub Actions or GitLab CI</td>
	    </tr>
    </tbody>
</table>

# Outdated Xamarin.iOS and Xamarin.Android

There are times in the development life-cycle where AppCenter, GitHub Actions or Azure DevOps build machines will have an outdated Xamarin.iOS or Xamarin.Android SDK installed that causes a build failure.

# Boots

The solution is to use [Boots](https://github.com/jonathanpeppers/boots). Boots is a tool makes it very easy to install a specific SDK that you need. 

It's most common use is to install the latest version on an outdated public build agent. Here's the commands to install boots and then install any SDK you need

```bash
# install boots
dotnet tool install --global boots

# Update Xamarin.iOS SDK to the latest stable release
boots --stable Xamarin.iOS

# Update Xamarin.Android to the latest stable release
boots --stable Xamarin.Android
```

You can learn more about how to use boots, including how to install preview and custom SDKs here https://github.com/jonathanpeppers/boots

