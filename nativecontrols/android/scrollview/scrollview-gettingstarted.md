---
title: Getting Started
page_title: RadScrollView Getting Started | Telerik UI for Android Documentation
description: An getting started page of RadScrollView for Android. This article provides the basics you need to know to be able to integrate the RadScrollView component into your Android app.
slug: scrollview-gettingstarted
tags: radscrollview, scrollview, getting started
publish: true
---  

## RadScrollView: Getting started
### Finding the needed packages
To be able to use **RadScrollView** you need to reference the following libraries:

- Common
- Primitives

**RadScrollView** is defined in the Primitives library in the _com.telerik.widget.primitives.panels_ package. The following code snippet demonstrates how to add an instance of the component in your XML layout:

    <FrameLayout xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:tools="http://schemas.android.com/tools"
    xmlns:app="http://schemas.android.com/apk/res-auto"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    tools:context=".examples.panels.ScrollViewFragment">
    <com.telerik.widget.primitives.panels.RadScrollView
        android:id="@+id/radScrollView"
        app:scrollMode="horizontal|vertical"
        android:layout_width="match_parent"
        android:layout_height="match_parent">
        <FrameLayout
            android:layout_width="wrap_content"
            android:layout_height="wrap_content">
           
           //Your content comes here
           
            </FrameLayout>
    </com.telerik.widget.primitives.panels.RadScrollView>
</FrameLayout>

As you can see, the **ScrollMode** is set to be _horizontal|vertical_ in the XML definition, and a combination of the _SCROLLING_MODE_VERTICAL_ and _SCROLLING_MODE_HORIZONTAL_ flags in the programmatic definition.
