---
title: Overview
page_title: Axes | RadChartView | Telerik UI for Android Documentation
description: A page desribing the types of axes in RadChartView for Android. This article explains the most important things you need to know about the different axes types.
slug: chart-axes-overview
tags: radchartview, axes, overview, chart
publish: true
position: 0
---

# RadChartView: Axes

**RadCartesianChartView** plots data points in a coordinate system defined by its two axes. Usually, one data point has category and value, which define its Cartesian coordinates. This means that your chart will need one axis that can visualize the category and another which can visualize the value. **CartesianAxis** is the base class for all axes that **RadCartesianChartView** can plot.

## Category axes

The axes that can be used to visualize the category of a data point are:

* [CategoricalAxis]({% slug chart-axes-categorical %} "Read more about CategoricalAxis"): The **CategoricalAxis** extends the **CartesianAxis**. It is the base axis that can be used to display category of any kind.
* [DateTimeCategoricalAxis]({% slug chart-axes-datetimecategorical %} "Read more about DateTimeCategoricalAxis"): The **DateTimeCategoricalAxis** extends the **CategoricalAxis**. It can be used if the category of the data points is of type `Calendar`.
* [DateTimeContinuousAxis]({% slug chart-axes-datetimecontinuous %} "Read more about DateTimeContinuousAxis"): The **DateTimeContinuousAxis** extends the **CartesianAxis**. It may be considered as a hybrid between a categorical and a numerical (linear) axis. **DateTimeContinuousAxis** works with categorical data but instead of categories, the axis builds time slots depending on its **Minimum**, **Maximum** and **MajorStep** values.

## Value axes

The axes that can be used to visualize the value of a data point extend the **NumericalAxis** class. They are:

* [LinearAxis]({% slug chart-axes-linear %} "Read more about LinearAxis"): The **LinearAxis** extends the **NumericalAxis** class and plots the associated data points using each point's actual value, provided for the axis.
* [LogarithmicAxis]({% slug chart-axes-logarithmic %} "Read more about LogarithmicAxis"): The **LogarithmicAxis** is used to display values that cover several orders of magnitude in a more manageable way. This is a special numerical axis that transforms the actual values of the data points using logarithm function with a specific base.

## Features

Each axis several important properties that developers can use to customize their axis as required. These properties can be either visual or functional. Here is a list of all properties that can be set on an
Axis object:
<a href="http://docs.telerik.com/devtools/android/AndroidControlsDoc/com/telerik/widget/chart/visualization/common/Axis.html#setLabelFont(android.graphics.Typeface)" target="_blank">LabelFont</a>
<a href="http://docs.telerik.com/devtools/android/AndroidControlsDoc/com/telerik/widget/chart/visualization/common/Axis.html#setLabelMargin(float)" target="_blank">LabelMargin</a>
<a href="http://docs.telerik.com/devtools/android/AndroidControlsDoc/com/telerik/widget/chart/visualization/common/Axis.html#setLabelTextColor(int)" target="_blank">LabelTextColor</a>
<a href="http://docs.telerik.com/devtools/android/AndroidControlsDoc/com/telerik/widget/chart/visualization/common/Axis.html#setLabelFontStyle(int)" target="_blank">LabelFontStyle</a>
<a href="http://docs.telerik.com/devtools/android/AndroidControlsDoc/com/telerik/widget/chart/visualization/common/Axis.html#setLabelSize(float)" target="_blank">LabelSize</a>
<a href="http://docs.telerik.com/devtools/android/AndroidControlsDoc/com/telerik/widget/chart/visualization/common/Axis.html#setLabelValueToStringConverter(com.telerik.android.common.Function)" target="_blank">LabelValueToStringConverter</a>
<a href="http://docs.telerik.com/devtools/android/AndroidControlsDoc/com/telerik/widget/chart/visualization/common/Axis.html#setLabelRotationAngle(float)" target="_blank">LabelRotationAngle</a>
<a href="http://docs.telerik.com/devtools/android/AndroidControlsDoc/com/telerik/widget/chart/visualization/common/Axis.html#setLastLabelVisibility(com.telerik.widget.chart.engine.axes.common.AxisLastLabelVisibility)" target="_blank">LastLabelVisibility</a>
<a href="http://docs.telerik.com/devtools/android/AndroidControlsDoc/com/telerik/widget/chart/visualization/common/CartesianAxis.html#setLabelFormat(java.lang.String)" target="_blank">LabelFormat</a>
<a href="http://docs.telerik.com/devtools/android/AndroidControlsDoc/com/telerik/widget/chart/visualization/common/Axis.html#setMajorTickOffset(int)" target="_blank">MajorTickOffset</a>
<a href="http://docs.telerik.com/devtools/android/AndroidControlsDoc/com/telerik/widget/chart/visualization/common/Axis.html#setLabelOffset(int)" target="_blank">LabelOffset</a>
<a href="http://docs.telerik.com/devtools/android/AndroidControlsDoc/com/telerik/widget/chart/visualization/common/Axis.html#setShowLabels(boolean)" target="_blank">ShowLabels</a>
<a href="http://docs.telerik.com/devtools/android/AndroidControlsDoc/com/telerik/widget/chart/visualization/common/Axis.html#setLabelFitMode(com.telerik.widget.chart.engine.axes.common.AxisLabelFitMode)" target="_blank">LabelFitMode</a>
<a href="http://docs.telerik.com/devtools/android/AndroidControlsDoc/com/telerik/widget/chart/visualization/common/Axis.html#setLabelLayoutMode(com.telerik.widget.chart.engine.axes.AxisLabelLayoutMode)" target="_blank">LabelLayoutMode</a>
<a href="http://docs.telerik.com/devtools/android/AndroidControlsDoc/com/telerik/widget/chart/visualization/common/Axis.html#setTickThickness(float)" target="_blank">TickThickness</a>
<a href="http://docs.telerik.com/devtools/android/AndroidControlsDoc/com/telerik/widget/chart/visualization/common/Axis.html#setTickColor(int)" target="_blank">TickColor</a>
<a href="http://docs.telerik.com/devtools/android/AndroidControlsDoc/com/telerik/widget/chart/visualization/common/Axis.html#setLabelInterval(int)" target="_blank">LabelInterval</a>
<a href="http://docs.telerik.com/devtools/android/AndroidControlsDoc/com/telerik/widget/chart/visualization/common/Axis.html#setLabelRenderer(com.telerik.widget.chart.visualization.common.renderers.ChartLabelRenderer)" target="_blank">LabelRenderer</a>

Below is a description with examples of several properties which accept complex objects instead of simple values.

# LabelValueToStringConverter
This is an interface that can be used to convert the actual label to value to an arbitrary string before rendering.
```Java
	LinearAxis axis = new LinearAxis();
	axis.setLabelValueToStringConverter(new Function<Object, String>() {
		@Override
		public String apply(Object argument) {
			Double labelValue = ((MajorTickModel)argument).value();
			// Insert formatting logic here.
			String format = "Value is: %s";
			return String.format(format, labelValue);
		}
	});
```
```C#
	LinearAxis verticalAxis = new LinearAxis();
    verticalAxis.LabelValueToStringConverter = new LabelValueConverter();

    private class LabelValueConverter : Java.Lang.Object, IFunction
    {
        public Java.Lang.Object Apply(Java.Lang.Object argument)
        {
            double labelValue = (argument.JavaCast<MajorTickModel>()).Value();
            String format = "Value is: {0}";
            return String.Format(format, labelValue);
        }
    }
```

# LabelRenderer
An interface that allows developers to swap the label rendering with their own implementation.
```Java
	public class MyLabelRenderer extends CartesianAxisLabelRenderer {
		public MyLabelRenderer(CartesianAxis axis) {
			super(axis);
		}
		
		@Override
		protected void renderLabelNoFitMode(Canvas canvas, RadRect layoutSlot, String labelContent, AxisLabelModel labelModel) {
			// Draw something only when label fit mode is NONE
			Paint pink = new Paint();
			pink.setColor(Color.parseColor("#ff69b4"));
			canvas.drawRect(Util.convertToRectF(layoutSlot), pink);
			super.renderLabelNoFitMode(canvas, layoutSlot, labelContent, labelModel);
		}
		
		@Override
		protected void renderLabelMultiLine(Canvas canvas, RadRect layoutSlot, String labelContent, AxisLabelModel labelModel) {
			// Draw something only when label fit mode is MULTILINE
			Paint khaki = new Paint();
			khaki.setColor(Color.parseColor("#F0E68C"));
			canvas.drawRect(Util.convertToRectF(layoutSlot), khaki);
			super.renderLabelMultiLine(canvas, layoutSlot, labelContent, labelModel);
		}
		
		@Override
		protected void renderLabelRotate(Canvas canvas, RadRect layoutSlot, String labelContent, AxisLabelModel labelModel) {
			// Draw something only when label fit mode is ROTATE
			Paint moccasin = new Paint();
			moccasin.setColor(Color.parseColor("#ffe4b5"));
			canvas.drawRect(Util.convertToRectF(layoutSlot), moccasin);
			super.renderLabelRotate(canvas, layoutSlot, labelContent, labelModel);
		}
		
		@Override
		public void renderLabel(Canvas canvas, ChartNode dataPoint) {
			// Always draw something before the given label is drawn.
			super.renderLabel(canvas, dataPoint);
		}
		
		@Override
		public RadSize measureLabel(AxisLabelModel label, Object content) {
			// Plug some logic when the label is being measured.
			return super.measureLabel(label, content);
		}
	}
```
```C#
	public class MyLabelRenderer : CartesianAxisLabelRenderer
	{
		public MyLabelRenderer(CartesianAxis axis):base(axis)
		{
		}
	
		protected override void RenderLabelNoFitMode(Android.Graphics.Canvas canvas,
			RadRect p1, string p2, AxisLabelModel p3)
		{
			// Draw something only when label fit mode is None
			Paint pink = new Paint();
			pink.Color = Color.ParseColor("#ff69b4");
			canvas.DrawRect(new RectF((float)p1.GetX(), (float)p1.GetY(), (float)p1.Right, (float)p1.Bottom), pink);
			base.RenderLabelNoFitMode(canvas, p1, p2, p3);
		}
	
		protected override void RenderLabelMultiLine(Canvas canvas, RadRect p1, string p2, AxisLabelModel p3)
		{
			// Draw something only when label fit mode is Multiline
			Paint khaki = new Paint();
			khaki.Color = Color.ParseColor("#f0e68c");
			canvas.DrawRect(new RectF((float)p1.GetX(), (float)p1.GetY(), (float)p1.Right, (float)p1.Bottom), khaki);
			base.RenderLabelMultiLine(canvas, p1, p2, p3);
		}
	
		protected override void RenderLabelRotate(Canvas canvas, RadRect p1, string p2, AxisLabelModel p3)
		{
			// Draw something only when label fit mode is ROTATE
			Paint moccasin = new Paint();
			moccasin.Color = Color.ParseColor("#ffe4b5");
			canvas.DrawRect(new RectF((float)p1.GetX(), (float)p1.GetY(), (float)p1.Right, (float)p1.Bottom), moccasin);
			base.RenderLabelRotate(canvas, p1, p2, p3);
		}
	
		public override void RenderLabel(Canvas p0, ChartNode p1)
		{
			// Always draw something before the given label is drawn.
			base.RenderLabel(p0, p1);
		}
	
		public override Com.Telerik.Android.Common.Math.RadSize MeasureLabel(AxisLabelModel p0, Java.Lang.Object p1)
		{
			// Plug some logic when the label is being measured.
			return base.MeasureLabel(p0, p1);
		}
	}
```

Finally, developers can use this custom label renderer by calling `axis.setLabelRenderer(new MyLabelRenderer(axis))` or `axis.LabelRenderer = new MyLabelRenderer(axis);` for Xamarin.

