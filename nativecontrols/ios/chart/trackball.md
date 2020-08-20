---
title: Trackball
position: 15
---

## Chart for Xamarin.iOS: Trackball

<code>TKChart</code> provides a trackball behavior through the <code>TKChartTrackball</code> class. The trackball can be used to display a vertical (or horizontal) line across the chart plot area and also to display little visual indicators (circles by default) at points where the trackball line crosses the visualization of a series object. 

For example when the trackball line crosses a line series line segment, a small circle is drawn highlighting the value of the series at this point. A screenshot should best explain this:

![](../images/chart-trackball003.png)

The last capability of the trackball is to display a small tooltip in order to provide more detailed information about the closest points to the trackball line's cross section, as can be seen in the screenshot above.

The trackball behavior is activated by setting the <code>AllowTrackball</code> property of TKChart to *true*. The trackball is accessible by using the <code>Trackball</code> property of <code>TKChart</code>. It activates automatically when you touch the chart for a few seconds, however it can be shown/hidden programmatically by calling its <code>ShowAtPoin</code> and </code>Hide</code> methods.

The trackball exposes four properties that could be used to control its appearance and behavior. These are:

### SnapMode

<code>SnapMode</code> property determines how the trackball line will be snapped to the chart's data points. Valid property values are <code>TKChartTrackballSnapMode.ClosestPoint</code> and <code>TKChartTrackballSnapMode.AllClosestPoints</code> with <code>TKChartTrackballSnapMode.ClosestPoint</code> snapping to the closest point of all data points in the chart and <code>TKChartTrackballSnapMode.AllClosestPoints</code> snapping to the closest point from each series object in the chart, that is, it snaps to multiple data points at once. Again, a few screenshots will best describe the different values of <code>SnapMode</code>:

#### With SnapMode set to ClosestPoint:

![](../images/chart-trackball004.png)

#### With SnapMode set to AllClosestPoints:

![](../images/chart-trackball005.png)

### Orientation

<code>Оrientation</code> property determines whether the trackball will track points horizontally or vertically. When the orientation is set to <code>TKChartTrackballOrientation.Vertical</code>, which is the default option, it will search within the touched area for points with similar x-coordinates by different y-coordinate and the trackball line will be vertical. If the property is set to <code>TKChartTrackballOrientation.Horizontal</code>, the trackball will compare y-coordinates instead and the trackball line will be horizontal.

### Line

<code>Line</code> property represents the trackball line. Its <code>Style</code> property could be used to customize the line appearance. For example, its color and crossing point shape:

```C#
chart.Trackball.Line.Hidden = false;
chart.Trackball.Line.Style.VerticalLineStroke = new TKStroke(UIColor.Red);
chart.Trackball.Line.Style.PointShape = new TKPredefinedShape(TKShapeType.Rhombus, new SizeF(10, 10));
chart.Trackball.Line.Style.PointShapeFill = new TKSolidFill(UIColor.Red);
chart.Trackball.Line.Style.PointShapeStroke = new TKStroke(UIColor.Red);
```

![](../images/chart-trackball001.png)

### Tooltip

<code>Tooltip</code> property represents the tooltip that shows information about the crossing points. As usual its <code>Style</code> property could be used to customize its appearance. The <code>PinPosition</code> property determines where the trackball tooltip should be located. The available pin positions are specified below:

- <code>TKChartTrackballPinPosition.None</code> - The tooltip will appear next to the selected point.
- <code>TKChartTrackballPinPosition.Left</code> - The tooltip will appear on the left side of the plot area.
- <code>TKChartTrackballPinPosition.Right</code> - The tooltip will appear on the right side of the plot area.
- <code>TKChartTrackballPinPosition.Top</code> - The tooltip will appear on the top side of the plot area.
- <code>TKChartTrackballPinPosition.Bottom</code> - The tooltip will appear on the bottom side of the plot area.

The </code>TrackballDidTrackSelection</code> method of the chart delegate will be called as the users drag their finger across the chart area. The selection argument of this method contains information about the selected points for every touch position. This method could be used to customize the tooltip text, for example:

```C#
class ChartDelegate: TKChartDelegate
{
    public override void TrackballDidTrackSelection (TKChart chart, TKChartSelectionInfo[] selection)
    {
        StringBuilder str = new StringBuilder();
        bool first = true;
        foreach (TKChartSelectionInfo info in selection) {
            var point = info.DataPoint as TKChartDataPoint;
            if (!first) {
                str.Append ("\n");
            } else {
                first = !first;
            }
            str.Append (string.Format ("Day {0} series {1} - {2}", point.DataXValue, info.Series.Index + 1, point.DataYValue));
        }
        chart.Trackball.Tooltip.Text = str.ToString();
    }
}
```

![](../images/chart-trackball002.png)
