---
title: iOS app has issues on device but runs fine on simulator
page_title: iOS app has issues on device but runs fine on simulator
slug: ios-app-issues-on-device-but-not-on-simulator
---

# iOS app has issues on device but runs fine on simulator

There are several reported issues with iOS applications that run fine on simulator but behave weird on device. Sometimes the app crashes or throws an exception, in other occasions some element styles looks weird or some components are not responsive.

Usually the problems are fixed when you uncheck the `Enable incremental builds` option from the iOS project settings.

On Visual Studio:

![](images/vs-incremental-builds.png)

On Xamarin Studio:

![](images/xs-incremental-builds.png)