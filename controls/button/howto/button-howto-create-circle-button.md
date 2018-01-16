---
title: Create Circle Button
page_title: Create Circle Button
position: 0
slug: button-howto-create-circle-button
---

# Create Circle Button

&nbsp;

You could easily create circular Buttons with RadButton by adjusting its Width, Height and BorderRadius properties following the next instructions:

* Width should be equal to Height;
* BorderRadius should be set to half Width/Height value;

Here is a quick example:

	<telerikInput:RadButton WidthRequest="40" 
							HeightRequest="40"                                
							Text="up" 
							FontSize="Micro" 
							TextColor="White" 
							BackgroundColor="DarkBlue" 
							BorderRadius="20"  />

And the end result:

![Button Key Features Example](../images/button-howto-circlebutton.png)

## See Also

- [Button Getting Started]({% slug button-getting-started%})
