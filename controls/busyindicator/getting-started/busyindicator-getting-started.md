---
title: Getting Started
page_title: Getting Started
position: 0
slug: busyindicator-getting-started
---

# Getting Started

This article demonstrates how to create a sample application that contains **RadBusyIndicator**.

>Before you proceed, please, take a look at these articles and follow the instructions to setup your app:

>- [Setup on Windows]({%slug getting-started-windows%})
>- [Setup on Mac]({%slug getting-started-mac%})
>- [Required Telerik Assemblies]({%slug busyindicator-getting-started-required-assemblies%})
> **RadBusyIndicator** is rendered via the SkiaSharp graphics library so you need to install [SkiaSharp.Views.Forms](https://www.nuget.org/packages/SkiaSharp.Views.Forms/1.55.0).

The busy indicator is a layout control that can display two views depending on its current state - busy and not-busy. You can define the state of the control via its **IsBusy** property. The default value is False and the control's normal content is displayed. If you change it to True, the busy content is displayed, which by default is a spinning balls animation. Check the [Animations]({%slug busyindicator-features-animations%}) article to see the built-in animations, how to change them and how to us a custom animation.

## Example

To use the busy indicator you can include the following namespaces:

<snippet id='xmlns-telerikbusyindicator'/>
<snippet id='ns-telerikbusyindicator'/>

Proceed with defining the component:

<snippet id='busyindicator-getting-started-xaml'/>
<snippet id='busyindicator-getting-started-csharp'/>

#### __Figure 1: RadBusyIndicator when IsBusy is True__  
![BusyIndicator example](../images/busyindicator-gettingstarted-0.png)

#### __Figure 2: RadBusyIndicator when IsBusy is False__  
![BusyIndicator example](../images/busyindicator-gettingstarted-1.png)

>important **SDK Browser** and **QSF** applications contain different examples that show RadBusyIndicator's main features. You can find the applications in the **Examples** and **QSF** folders of your local **Telerik UI for Xamarin** installation.

### See Also

- [Project Wizard]({% slug project-wizard %})
- [Getting Started on Windows]({% slug getting-started-windows %})
- [Getting Started on Mac]({% slug getting-started-mac %})
