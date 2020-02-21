---
title: Commands
page_title: Commands
description: Check our &quot;Commands&quot; documentation article for Telerik NumericInput for Xamarin control.
position: 4
slug: numericinput-commands
---

# Commands

RadNumericInput exposes **IncreaseCommand** and **DecreaseCommand** which could be used to define custom functionality upon the respective actions.  These commands allow you to easily change and extend the control's default behavior.

In the next example, you can see how the NumericInput commands could be utilized in order to implement auto-reverse functionality – start from the Minimum value when the Maximum is reached and vice versa.

First, create the ViewModel with both IncreaseCommand and DecreaseCommand implementations:

<snippet id='numericinput-features-commands-viewmodel'/>

And define the NumericInput with the respective bindings:

<snippet id='numericinput-features-commands'/>

Where:

<snippet id='xmlns-telerikinput'/>

>You can find a working demo in the NumericInput/Features/Commands folder of the [SDK Samples Browser application]({%slug developer-focused-examples %}).

## See Also

- [Key Features]({%slug numericinput-key-features%})
- [Globalization]({%slug numericinput-globalization%})
