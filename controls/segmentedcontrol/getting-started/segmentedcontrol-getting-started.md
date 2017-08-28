---
title: Getting Started
page_title: Getting Started
position: 0
slug: segmentedcontrol-getting-started
---

# Getting Started

This article demonstrates how to create a sample application that contains **RadSegmentedControl**.

>Before you proceed, please, take a look at these articles and follow the instructions to setup your app:

>- [Setup on Windows]({%slug getting-started-windows%})
>- [Setup on Mac]({%slug getting-started-mac%})

You can find the assemblies needed by the control in the [Required Telerik Assemblies]({%slug segmentcontrol-getting-started-required-assemblies%}) article.

### Populating with data

The segment control allows you to work with two types of data - string and image. You can use the **ItemsSource** property of RadSegmentedControl to provide **IEnumerable** collection of strings or image sources. The control will display a segment for each item in the items source. 

### Setting segment colors

You can set the background of the segments via the **SegmentBackgroundColor** property. The color will be applied to all segments except the selected one. To change the background of the selected item you can set the **SelectedSegmentBackgroundColor**

To set the text color of the strings in the items via the **SegmentTextColor** property. The color of the selected segment can be set via the **SelectedSegmentTextColor** property.

You can find an example with the selected color properties in the [Selection]({%slug segmentedcontrol-features-selection%}) article.

### Setting up RadSegmentControl

To use the tabview control you can include the following namespaces:

<snippet id='xmlns-telerikinput'/>
<snippet id='ns-telerikinput'/>

To display any segments you can set the control's ItemsSource property and populate it with some data.

<snippet id='segmentcontrol-gettingstarted-xaml'/>
<snippet id='segmentcontrol-gettingstarted-csharp'/>

#### __Figure 1: RadSegmentedControl example__  
![SegmentControl example](../images/segmentcontrol-gettingstarted-0.png)

### See Also

- [Project Wizard]({% slug project-wizard %})
- [Getting Started on Windows]({% slug getting-started-windows %})
- [Getting Started on Mac]({% slug getting-started-mac %})
