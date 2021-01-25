---
title: Control Template
page_title: Xamarin NumericInput Documentation | Control Template
description: Check our &quot;Control Template&quot; documentation article for Telerik NumericInput for Xamarin control.
position: 3
slug: numericinput-control-template
---

# Control Template

RadNumericInput's visual appearance is defined through a Control Template. In order to customize the way the NumericInput looks, you would need to take the default ControlTemplate and modify it. 

This topic gives an overview of the **ControlTemplate** of the NumericInput control, so you can copy it to your app and make changes. The template consists of decrease and increase buttons, the entry control for entering values as well as the accompanying styles.  

#### The original ControlTemplate

The XAML defined below relies on the following namespaces to be set:

```xml
xmlns:telerikInput="clr-namespace:Telerik.XamarinForms.Input;assembly=Telerik.XamarinForms.Input"
xmlns:numericInput="clr-namespace:Telerik.XamarinForms.Input.NumericInput;assembly=Telerik.XamarinForms.Input"
xmlns:common="clr-namespace:Telerik.XamarinForms.Common;assembly=Telerik.XamarinForms.Common"
```

<snippet id='numericinput-resources-controltemplate' />

You need to copy the original ControlTemplate and its resource dependencies to the Resources section of the page, then you can modify the used colors, sizes, relocate or remove elements (for example you can align the two buttons after the entry). 

> Any ControlTemplate element that is prefixed with "PART_" is almost always a required part. Removing such a part will result in the control not working. For example the *NumericInputEntry* control is named **PART_Entry** and *cannot* be removed.

Finally, use the custom ControlTemplate as a **StaticResource** on any instance of RadNumericInput:

<snippet id='numericinput-control-controltemplate' />

## See Also

- [Key Features]({%slug numericinput-key-features%})