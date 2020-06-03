---
title: Introduction
page_title: Introduction | Telerik UI for Xamarin.iOS Documentation
description: Telerik UI for Xamarin.iOS features components that decrease development time and help teams build stunning iOS apps.
slug: ios-introduction
tags: introduction
position: 0
publish: true
---

## Xamarin.iOS Wrappers

**Telerik UI for Xamarin** suite includes Xamarin.iOS wrappers built on top of truly native iOS components, allowing you to build unique and visually stunning iOS applications. Our controls give you great customization flexibility to accommodate as many app scenarios as possible. 

To read more about the benefits of using Telerik UI for Xamarin, please visit the [product overview page](http://www.telerik.com/xamarin-ui).

<style>
/* Xamarin download trial button */
div#xamarin_trial {
	text-align: center !important;
}

div#xamarin_trial .xamarin_download_btn {	
	color: #fff;
	background-color: #e74b3c;
	padding:.44em .9em .52em;
	font-size: 20px;
	font-weight:400;
	letter-spacing:-.025em;
	position:relative;
	display:inline-block;
	line-height:1.2;
	-webkit-transition:color .2s ease,background-color .2s ease;
	transition:color .2s ease,background-color .2s ease;
	border-radius:2px;
	-webkit-appearance:none;
	font-family:Metric,Arial,Gadget,sans-serif;
	text-align:center	
}
</style>

<script type="text/javascript">

  $(document).ready(function(){
	  var mac = navigator.userAgent.match(/(Mac)/i);
	  var $btnWin = $(".js-btnWin");
	  var $btnOSX = $(".js-btnOSX");

	  if (mac) {
		$btnOSX.show();
		$btnWin.hide();
	  } else {
		$btnOSX.hide();
		$btnWin.show();
	  }
  });

</script>

<div id="xamarin_trial">
<br />
<a href="https://www.telerik.com/download-trial-file/v2-b/ui-for-xamarin" class="xamarin_download_btn js-btnWin" style="display: none">Download Free Trial</a>
<a href="https://www.telerik.com/download-trial-file/v2-b/ui-for-xamarin?file=pkg" class="xamarin_download_btn js-btnOSX" style="display: none">Download Free Trial</a>
</div>

## Controls Overview

Our suite features the following controls for development with Xamarin.iOS:

* [Alert]({%slug ios-alert-overview %}): Highly customizable alert view component that offers different predefined animations, easy to use Block API, many customization options. 

* [AutoCompleteTextView]({%slug ios-autocompletetextview-overview %}): An input control that provides users with suggestions, based on the text or characters they’ve already typed into the search bar. Once the autocomplete shows a list of suggestions, the user can select one or more of them. The control provides means for easy customization and data management. To make working with data easier for developers, <code>TKAutoCompleteTextView</code> works seamlessly with the Telerik DataSource control which serves as a mediator between the raw suggestions data and the UI component which serves as suggestion view.

* [Calendar]({%slug ios-chart-overview%}): A calendar control that features week, month and year views as well as multiple dates selection and flexible API for customization.

* [Chart]({%slug ios-chart-overview%}): A versatile charting component that offers full customization, great performance and intuitive object model. Its API allows creating complex charts with stunning animations and appearance.

* [DataForm]({%slug ios-dataform-overview%}): A customizable component that allows you to easily create a form for collecting or editing business object data. It is ideal for settings or registration/login pages. TKDataForm supports different commit modes allowing you to commit property values one by one or commit the whole form at once. You could also determine at what moment the properties should be validated choosing between three validation modes. The control lets you use rich set of editors out of the box. 

* [DataSource]({%slug ios-datasource-overview%}): It is a non-visual component that consumes data from various sources. It supports data shaping operations like sorting, filtering and grouping. It adopts the most used data enabled UI controls in iOS: UITableView and UICollectionView to automate the presentation of its data. TKDataSource works perfectly with TKListView, TKChart and TKCalendar too.

* [Gauges]({%slug ios-gauges-overview%}): A highly customizable component that allows you to show the current status of a value within a range of upper and lower bounds, illustrate progress towards a goal or a summary of a fluctuating metric. 

* [ListView]({%slug ios-listview-overview%}): Provides the most frequently used functionalities associated with a ListView scenario in one framework, eliminating the overhead of integrating multiple solutions from different authors. To make working with data easier for developers, the control works seamlessly with the **DataSource** control, which serves as a mediator between the raw data that needs to be displayed and the UI component. 

* [SideDrawer]({%slug ios-sidedrawer-overview%}): Helps you add extra space to your application. It extends the popular slide-out design pattern which is mainly associated with navigational purposes. The control is highly customizable and allows developers to embed any type of content inside the sliding panel.

## Trial Version and Commercial License

Telerik UI for Xamarin library is a commercial UI library. You are welcome to explore its full functionality and get technical support from the team when you register for a free 30-day trial. To use it commercially, you need to [purchase a license](https://www.telerik.com/purchase/xamarin-ui). Feel free to review the Telerik UI for Xamarin [License Agreement](https://www.telerik.com/purchase/license-agreement/ui-for-xamarin) to get acquainted with the full terms of use.

## Support Options

For any issues you might encounter while working with Telerik UI for Xamarin, use any of the available support channels:

* UI for Xamarin license holders and active trialists can take advantage of the outstanding customer support delivered by the developers building the library. To submit a support ticket, use the [UI for Xamarin dedicated support](https://www.telerik.com/account/support-tickets?pid=1534) system.
* [UI for Xamarin forums](https://www.telerik.com/forums/xamarin) are part of the free support you can get from the community and from the UI for Xamarin team on all kinds of general issues.
* [UI for Xamarin feedback portal](https://feedback.telerik.com/xamarin) provides information on the features in discussion and also the planned ones for release.
* You may still need a tailor-made solution for your project. In such cases, go straight to [Progress Services](https://www.progress.com/services).

## Learning Resources

* [Knowledge Base](https://docs.telerik.com/devtools/xamarin/knowledge-base)
* [Support Resources Hub Page](https://www.telerik.com/support/xamarin-ui)

