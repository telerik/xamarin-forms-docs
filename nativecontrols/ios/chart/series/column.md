---
title: Column
page_title: Column Series
position: 3
---

## Chart for Xamarin.iOS: Column Series

<code>TKChartColumnSeries</code> are used to visualize data points as column blocks where the height of each bar denotes the magnitude of its value. The following snippet demonstrates how to manually populate one Column series:

```C#
Random r = new Random ();
List<TKChartDataPoint> list = new List<TKChartDataPoint> ();
for (int i = 0; i < 8; i++) {
    list.Add(new TKChartDataPoint (new NSNumber (i+1), new NSNumber (r.Next () % 100)));
}

TKChartColumnSeries series = new TKChartColumnSeries (list.ToArray());
series.Style.PaletteMode = TKChartSeriesStylePaletteMode.UseItemIndex;
series.Selection = TKChartSeriesSelection.DataPoint;

series.MaxColumnWidth = 50;
series.MinColumnWidth = 20;

chart.AddSeries(series);
```

![](../../images/chart-series-column001.png)

## Configure clustering of column series

If you want to cluster multiple column series side by side, they should use a shared x-axis:

```C#
Random r = new Random();
for (int i = 0; i < 4; i++) {
    List<TKChartDataPoint> list = new List<TKChartDataPoint>();
    for (int j = 0; j < 8; j++) {
        list.Add(new TKChartDataPoint(new NSNumber(j), new NSNumber(r.Next() % 100)));
    }

    TKChartColumnSeries series = new TKChartColumnSeries (list.ToArray ());
    series.Title = String.Format ("Series %d", i);
    series.StackInfo = stackInfo;
    series.Selection = TKChartSeriesSelection.Series;
    chart.AddSeries (series);
}
```

![](../../images/chart-series-column002.png)

## Configure stacking of column series

The <code>TKChartColumnSeries</code> can be combined by using different stack modes, such as *Stack* and *Stack100*.

The Stack plots the points on top of each other.

```C#
var stackInfo = new TKChartStackInfo (new NSNumber (1), TKChartStackMode.Stack);

var seriesForIncome = new TKChartAreaSeries (pointsWithCategoriesAndValues.ToArray ());
seriesForIncome.StackInfo = stackInfo;

var seriesForExpenses = new TKChartAreaSeries (pointsWithCategoriesAndValues2.ToArray ());
seriesForExpenses.StackInfo = stackInfo;

chart.BeginUpdates ();
chart.AddSeries (seriesForIncome);
chart.AddSeries (seriesForExpenses);
chart.EndUpdates ();
```

![](../../images/chart-series-column003.png)

The Stack100 displays the value as percent.

![](../../images/chart-series-column004.png)

## Configure visual appearance of column series

If you want to customize the appearance of a column series, you should change its <code>Style</code> properties.

You can change the fill and stroke in the following manner:

```C#
series.Style.Palette = new TKChartPalette ();

var paletteItem = new TKChartPaletteItem ();
paletteItem.Fill = new TKSolidFill (UIColor.Red);
paletteItem.Stroke = new TKStroke (UIColor.Black);
series.Style.Palette.AddPaletteItem (paletteItem);
chart.AddSeries (series);
```

![](../../images/chart-series-column005.png)

You can change the gap between columns with the <code>GapLength</code> property.

```C#
series.GapLength = 0.6f;
```

>GapLength value should be between 0 and 1, where a value of 0 means that a bar would take the entire space between two ticks, while a value of 1 means the bar will have zero width as all the space should appear as a gap.

![](../../images/chart-series-column006.png)

If you need to limit the width of the columns you can set the series <code>MaxColumnWidth</code> and <code>MinColumnWidth</code> properties. These properties allow you to have required minimum and possible maximum width for your series.

```C#
series.MaxColumnWidth = 50;
series.MinColumnWidth = 20;
```