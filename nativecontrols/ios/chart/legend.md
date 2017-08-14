---
title: Legend
position: 10
---

# Chart: Legend

<code>TKChart</code> has built-in support for legends – descriptions about the charts on the plot. The items displayed in the legend are series specific i.e. for the pie chart the data points are shown in the legend, whereas for line series only one item is shown for each series.

## Configure legend##

If you would like to show the legend in <code>TKChart</code>, you should set its hidden property to NO. The default value is YES. The legend supports showing a series title.

<snippet id='chart-legend'/>
<snippet id='chart-legend-swift'/>
```C#
chart.Legend.Hidden = false;
```

You can alter the position and offset origin of legend by setting its position:

<snippet id='chart-legend-position'/>
<snippet id='chart-legend-position-swift'/>
```C#
chart.Legend.Style.Position = TKChartLegendPosition.Right;
```

<img src="../images/chart-legend001.png"/>

The legend can be anchored to concrete side by using the following values <code>TKChartLegendPositionLeft</code>, <code>TKChartLegendPositionRight</code>, <code>TKChartLegendPositionTop</code> and <code>TKChartLegendPositionBottom</code>.

It can float by using <code>TKChartLegendPositionFloat</code> value. In this case, you can offset its origin manually by setting its <code>offset</code> and <code>offsetOrigin</code> properties:

<snippet id='chart-legend-offset-pos'/>
<snippet id='chart-legend-offset-pos-swift'/>
```C#
chart.Legend.Style.Position = TKChartLegendPosition.Floating;
chart.Legend.Style.OffsetOrigin = TKChartLegendOffsetOrigin.TopLeft;
chart.Legend.Style.Offset = new UIOffset(10, 10);
```

<img src="../images/chart-legend002.png"/>

## Customize legend##

You can alter visibility of the legend's title by changing <code>showTitle</code> property.

<snippet id='chart-legend-title'/>
<snippet id='chart-legend-title-swift'/>
```C#
chart.Legend.TitleLabel.Text = "Companies";
chart.Legend.ShowTitle = true;
```

<img src="../images/chart-legend003.png"/>

In addition, you can disable the series selection via legend by setting <code>allowSelection</code> property to *NO*.

The legend can be customized by using its style object. It contains the following properties:

- <code>position</code> - Determines where the legend should be placed.
- <code>offset</code> - Determines the offset at which to place the legend, according to the specified offsetOrigin.
- <code>offsetOrigin</code> - Determines the starting point for the offset property.
- <code>fill</code> - Gets or sets the fill color to be used as a background.
- <code>stroke</code> -  Gets or sets stroke color to be used for the legend frame.

## Embeding legend outside TKChart##

You can use the legend outside the chart view. You should create an instance of <code>TKChartLegendView</code> and add it as subview to desired view.

<snippet id='chart-legend-outside'/>
<snippet id='chart-legend-outside-swift'/>
```C#
var legendView = new TKChartLegendView (chart);
legendView.Frame = new CGRect (20, 20, 320, 100);
this.View.AddSubview(legendView);
legendView.ReloadItems ();
```

<img src="../images/chart-legend004.png"/>
