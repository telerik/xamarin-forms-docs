---
title: Getting Started
page_title: Getting Started
position: 0
slug: tabview-getting-started
---

# Getting Started

This article demonstrates how to create a sample application that contains **RadTabView**.

>Before you proceed, please, take a look at these articles and follow the instructions to setup your app:
>- [Setup on Windows]({%slug getting-started-windows%})
>- [Setup on Mac]({%slug getting-started-mac%})
>- [Required Telerik Assemblies]({%slug tabview-required-assemblies%})

### Defining RadTabView

To use the tabview control you can include the following namespaces:

<snippet id='xmlns-telerikprimitives'/>
<snippet id='ns-telerikprimitives'/>

To display something in the tab you can define [TabViewItem]({%slug tabview-features-tabviewitem}) elements in its **Items** collection.

<snippet id='tabview-getting-started-xaml'/>
<snippet id='tabview-getting-started-csharp'/>

To define the header of a TabViewItem you can use its **HeaderText** property as in the example. If you need to show a more complext layout you can use the **Header** property.

#### __Figure 1: TabView example__  
![BusyIndicator example](../images/tabview-gettingstarted-0.png)

### See Also

- [Project Wizard]({% slug project-wizard %})
- [Getting Started on Windows]({% slug getting-started-windows %})
- [Getting Started on Mac]({% slug getting-started-mac %})
