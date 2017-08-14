---
title: DateTimeCategory
page_title: Date Time Category Axis
position: 6
---
# Chart Axes: Date Time Category

The <code>TKChartDateTimeCategoryAxis</code> is a special axis that is similar to <code>TKChartCategoryAxis</code> and adds notation for <code>NSCalendarUnit</code> enumeration. This axis uses the selected calendar units to extract a key from dates. The key is used to build categories. Once build, categories are sorted in chronological order.

The most important property of <code>TKChartDateTimeCategoryAxis</code> is the <code>dateComponent</code>. It is used to specify which parts of the date are important. Its default value is <code>TKCalendarUnitDate</code> which is a shortcut for <code>NSCalendarUnitDay|NSCalendarUnitMonth|NSCalendarUnitYear</code>.

 <img src="../../images/chart-axes-datetime-category001.png"/>

## Configure a TKChartDateTimeCategoryAxis##

You can configure a date time category axis by setting the <code>dateComponent</code> property. Optionally you can set propertie like <code>plotMode</code> and <code>labelFormatter</code> to control the appearance of the axis:

<snippet id='chart-axis-datetime-cat'/>
<snippet id='chart-axis-datetime-cat-swift'/>
```C#
var xAxis = new TKChartDateTimeCategoryAxis ();
var formatter = new NSDateFormatter ();
formatter.DateFormat = "d MMM";
xAxis.LabelFormatter = formatter;
```


