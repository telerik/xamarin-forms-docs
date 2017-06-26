---
title: Android "Attribute showTitle has already been defined" 
page_title: Android "Attribute showTitle has already been defined"
slug: android-attribute-showtitle-alread-defined
position: 4
---

# Android: Error "Attribute "showTitle" Has Already Been Defined" #

If you come across this error which prevents your Android solution from building properly, it is most probably caused by discrepancy between the targeted **Android API** and the installed **Android SDK tools/Android SDK build tools**.

Usually such error appears when the app targets the latest version of Android, but the latest version of the tools is not installed. **Figure 1** shows how your **Android SDK Manager** should be set up to be able to target the latest version of Android   (the example refers to **Android 7.1 Nougat**):

#### **Figure 1: Android Application settings:**
![target-android-version](images/android-target-framework.png)

#### **Figure 2: Android SDK Manager installed tools**

![target-android-version](images/SDK-manager-latesttools.png)

## See Also

- [Required Android Support Libraries]({%slug required-android-support-libraries%})
- [System Requirements]({%slug system-requirements%})
