---
title: Type not found Exception
page_title: Type Not Found Exception
slug: troubleshooting-type-not-found-exception
---

# Type not found Exception

&nbsp;

In some cases you might come across such exception that concerns a specific control from the **Telerik UI for Xamarin** suite. For example, the following exception might be thrown if you add a Gauge control in your XAML without setting its x:Name attribute:

>important Type telerikGauges:RadRadialGauge not found in xmlns:clr-namespace:Telerik.XamarinForms.DataVisualization.Gauges;assembly=Telerik.XamarinForms.DataVisualization 

There are a couple of approaches you can take in order to resolve the issue:

### Add XamlCompilation attribute for the portable assembly

The following snippet shows how to add the XamlCompilation attribute in the page code-behind:
	
<snippet id='common-type-not-found-csharp'/>

### Add x:Name for the control

Simply add an x:Name for the control, no matter what type it is. The example shows how to do it for a **RadCalendar**:

<snippet id='calendar-gettingstarted-xaml'/>

