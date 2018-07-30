---
title: BusyIndicator Troubleshooting
description: BusyIndicator Troubleshooting
type: how-to
page_title: BusyIndicator Troubleshooting
slug: busyindicator-troubleshooting
position: 2
tags: busyindicator, exception, troubleshooting, databinding, data binding, listview
ticketid: 
res_type: kb
---

## Environment
<table>
	<tr>
		<td>Product</td>
		<td>BusyIndicator for Xamarin</td>
	</tr>
</table>


## Problem

An exception or undesired behavior occurs when  `BusyIndicator.Content` contains data bound controls and `IsBusy` value is toggled.

## Description

The View elements inside the RadBusyIndicator's **Content** are removed from the visual tree when `IsBusy=True`. This can cause issues on some platforms when the content contains a data bound control.

## Solution

To address these use cases, you can take the following approach:

1. Re-position the RadBusyIndicator on top of the content
2. Set the `BackgroundColor` with a semi-transparent color
3. Bind the `IsBusy` and `IsVisible` to the same property


#### Scenario Example:

A scenario this problem will occur is when the BusyIndicator Content contains a RadListView with a data-bound ItemsSource

**Before**

```XML
<primitives:RadBusyIndicator BackgroundColor="#AAFFFFFF"
                             IsBusy="{Binding IsBusy}">
    <primitives:RadBusyIndicator.Content>
        <Grid>
            <!-- RadListView is within the RadBusyIndicator.Content -->
            <dataControls:RadListView ItemsSource="{Binding MyItems}" />
        </Grid>
    </primitives:RadBusyIndicator.Content>
</primitives:RadBusyIndicator>

```

**After (*recommended*)**

```XML
<Grid>
    <!-- RadListView is the lowest visual element in the Grid's children -->
    <dataControls:RadListView ItemsSource="{Binding MyItems}" />

    <!-- The RadBusyIndicator is on top of the RadListView -->
    <primitives:RadBusyIndicator BackgroundColor="#AAFFFFFF"
                                 IsBusy="{Binding IsBusy}"
                                 IsVisible="{Binding IsBusy}"/>
</Grid>
```

#### Result   
![BusyIndicator example](../images/busyindicator-troubleshooting-0.png)

### See Also

- [Project Wizard]({% slug project-wizard %})
- [Getting Started on Windows]({% slug getting-started-windows %})
- [Getting Started on Mac]({% slug getting-started-mac %})
