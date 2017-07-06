---
title: Getting Started for Xamarin
page_title: Getting Started for Xamarin | Telerik UI for Android Documentation
description: An article which explains how to start using Telerik UI for Android in Xamarin.
slug: getting-started-xamarin
tags: getting-started, xamarin
publish: true
position: 1
---

# Getting Started for Xamarin

This article explains how to start using **Telerik UI for Android** in **Xamarin**.

## Overview
The **Telerik UI for Android** Xamarin distribution comes as a set of **Dynamic Link Libraries**. To be able to use Telerik UI for Android in Xamarin, you will need to complete the following steps:

1. Add references to the libraries inside your project.
2. Add the appcompat and the recyclerview packages using the NuGet.

> Please note, that since we are using features added with API 23, the target API for your project should also be at least 23. Also note, that the Target API level is different than the Minimum API level. UI for Android supports API 14 as a Minimum API level. <a href="http://developer.android.com/training/basics/supporting-devices/platforms.html#sdk-versions" target="_blank">Here</a>'s more about the difference between Minimum and Target API Levels.

## Referencing the libraries from your project

1. Click on **New Solution** in the home screen in **Xamarin**.
![TelerikUI-Installation-Xamarin-New-Project](images-download-deployment/installation-xamarin-screen-1.png "Create new solution")

2. In the **New Project** Wizard, select **Android Application** , choose a name for your project and click **Ok**.

3. Add references to the libraries by right-clicking the **References** of your project and selecting **Edit References...**.
![TelerikUI-Installation-Xamarin-Adding-References](images-download-deployment/installation-xamarin-screen-2.png "Add references.")

	>Depending on the functionality you would like to use, make sure to add all needed dependencies as described in the [Installation contents and dependencies section](installation-contents-and-dependencies)

4. Add the following packages using the NuGet:
	* Xamarin Support Library v7 AppCompat (required by the following assemblies: Chart, Feedback, Input, List & Primitives)
	* Xamarin Support Library v7 RecyclerView (required by the List assembly)
	* Xamarin Support Library v8 RenderScript (required by the Primitives assembly)
	![TelerikUI-Installation-Xamarin-Add-NuGet-Packages](images-download-deployment/installation-xamarin-screen-3.png "Add packages.")

5. Your solution is now ready to use Telerik UI for Android.
![TelerikUI-Installation-Xamarin-User-Project](images-download-deployment/installation-xamarin-screen-4.png "Integration complete.")

## Opening the Examples solution

We have prepared a Samples project which you can find in the installation folder in the `\Examples` subfolder. 