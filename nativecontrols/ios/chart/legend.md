---
title: Legend
position: 10
---

## Chart for Xamarin.iOS: Legend

<code>TKChart</code> has built-in support for legends – descriptions about the charts on the plot. The items displayed in the legend are series specific i.e. for the pie chart the data points are shown in the legend, whereas for line series only one item is shown for each series.

## Configure legend##

If you would like to show the legend in <code>TKChart</code>, you should set its Hidden property to **false**. The default value is **true**. The legend supports showing a series title.

```C#
chart.Legend.Hidden = false;
```

You can alter the position and offset origin of legend by setting its Position property:

```C#
chart.Legend.Style.Position = TKChartLegendPosition.Right;
```

![](../images/chart-legend001.png)

The legend can be anchored to concrete side by using the following values <code>TKChartLegendPosition.Left</code>, <code>TKChartLegendPosition.Right</code>, <code>TKChartLegendPosition.Top</code> and <code>TKChartLegendPosition.SBottom</code>.

It can float by using <code>TKChartLegendPosition.Floating</code> value. In this case, you can offset its origin manually by setting its <code>Offset</code> and <code>OffsetOrigin</code> properties:

```C#
chart.Legend.Style.Position = TKChartLegendPosition.Floating;
chart.Legend.Style.OffsetOrigin = TKChartLegendOffsetOrigin.TopLeft;
chart.Legend.Style.Offset = new UIOffset(10, 10);
```

![](../images/chart-legend002.png)

## Customize legend##

You can alter visibility of the legend's title by changing <code>ShowTitle</code> property.

```C#
chart.Legend.TitleLabel.Text = "Companies";
chart.Legend.ShowTitle = true;
```

![](../images/chart-legend003.png)

In addition, you can disable the series selection via legend by setting <code>AllowSelection</code> property to **false**.

The legend can be customized by using its <code>Style</code> object. It contains the following properties:

- <code>Position</code> - Determines where the legend should be placed.
- <code>Offset</code> - Determines the offset at which to place the legend, according to the specified offsetOrigin.
- <code>OffsetOrigin</code> - Determines the starting point for the offset property.
- <code>Fill</code> - Gets or sets the fill color to be used as a background.
- <code>Stroke</code> -  Gets or sets stroke color to be used for the legend frame.

```C#
chart.Legend.Style.Fill = new TKSolidFill(UIColor.LightGray);
chart.Legend.Style.Stroke = new TKStroke(UIColor.DarkGray);
```

## Embedding legend outside TKChart##

You can use the legend outside the chart view. You should create an instance of <code>TKChartLegendView</code> and add it as subview to desired view.

```C#
var legendView = new TKChartLegendView (chart);
legendView.Frame = new CGRect (20, 20, 320, 100);
this.View.AddSubview(legendView);
legendView.ReloadItems ();
```

![](../images/chart-legend004.png)
