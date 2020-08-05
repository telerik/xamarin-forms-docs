---
title: Bubble
page_title: Bubble Series
position: 1
---

## Chart for Xamarin.iOS: Bubble Series


<code>TKChartBubbleSeries</code> derives from <code>TKChartScatterSeries</code> and it represents a bubble chart. Bubble series visualizes <code>TKChartBubbleDataPoint</code> which has three parameters - <code>DataXValue</code>, <code>DataYValue</code> and <code>Area</code>. The <code>Scale</code> and <code>BiggestBubbleDiameterForAutoscale</code> properties determine the diameter of a bubble on the chart.

Here is an example of a bubble chart:

```C#
Random r = new Random ();
for (int i = 0; i < 2; i++) {
    List<TKChartBubbleDataPoint> list = new List<TKChartBubbleDataPoint> ();
    for (int j = 0; j < 20; j++) {
        list.Add (new TKChartBubbleDataPoint (new NSNumber (r.Next () % 1450), new NSNumber (r.Next () % 150), new NSNumber (r.Next () % 200)));
    }

    TKChartBubbleSeries series = new TKChartBubbleSeries (list.ToArray());
```

![](../../images/chart-series-bubble001.png)
