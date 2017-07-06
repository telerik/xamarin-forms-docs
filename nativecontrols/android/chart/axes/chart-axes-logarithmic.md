---
title: Logarithmic
page_title: LogarithmicAxis | RadChartView | Telerik UI for Android Documentation
description: A page desribing the LogarithmicAxis in RadChartView for Android. This article explains the most important things you need to know before using Value axes.
slug: chart-axes-logarithmic
tags: radchartview, valueaxes, value, chart, logarithmic
publish: true
position: 5
---

# RadChartView: LogarithmicAxis

**RadCartesianChartView** need an axis that can represent the values of the data points. The base class for the axes that can represent value is **NumericalAxis**.
It is an abstract class which extends the base **CartesianAxis** class and is used to represent the value of a data point.

The **LogarithmicAxis** is used to display values that cover several orders of magnitude in a more manageable way. This is a special **NumericalAxis** that transforms the actual values of the data points using logarithm function with a specific base. For example if the base of the logarithm is 10, then the axis will be scaled to show equally spaced powers of 10. The <a href="http://en.wikipedia.org/wiki/Richter_scale" target="_blank">Richter scale</a> and the <a href="http://en.wikipedia.org/wiki/Decibel_Scale" target="_blank">Decibel scale</a> are examples of logarithmic scale.

## Example

You can read from the [Getting Started]({% slug chart-gettingstarted %} "Read how to define the MonthResult type") page how to define the `MonthResult` type and declare the **initData()** method.

After you create the method for initialization of sample data, you can create a **RadCartesianChartView** with **LogarithmicAxis** by adding the following code to the **onCreate()** method of your Activity.

```Java
	initData();

	RadCartesianChartView chartView = new RadCartesianChartView(this);

	LineSeries lineSeries = new LineSeries();
	lineSeries.setCategoryBinding(new PropertyNameDataPointBinding("Month"));
	lineSeries.setValueBinding(new PropertyNameDataPointBinding("Result"));
	lineSeries.setData(this.monthResults);
	chartView.getSeries().add(lineSeries);

	CategoricalAxis horizontalAxis = new CategoricalAxis();
	chartView.setHorizontalAxis(horizontalAxis);

	LogarithmicAxis verticalAxis = new LogarithmicAxis();
	verticalAxis.setLogarithmBase(2);
	chartView.setVerticalAxis(verticalAxis);

	ViewGroup rootView = (ViewGroup)findViewById(R.id.container);
	rootView.addView(chartView);
```
```C#
	InitData();

	RadCartesianChartView chartView = new RadCartesianChartView(this);

	LineSeries lineSeries = new LineSeries();
	lineSeries.CategoryBinding = new MonthResultDataBinding ("Month");
	lineSeries.ValueBinding = new MonthResultDataBinding ("Result");
	lineSeries.Data = (Java.Lang.IIterable)this.monthResults;
	chartView.Series.Add(lineSeries);

	CategoricalAxis horizontalAxis = new CategoricalAxis();
	chartView.HorizontalAxis = horizontalAxis;

	LogarithmicAxis verticalAxis = new LogarithmicAxis();
	verticalAxis.LogarithmBase = 2;
	chartView.VerticalAxis = verticalAxis;

	ViewGroup rootView = (ViewGroup)FindViewById(Resource.Id.container);
	rootView.AddView(chartView);
```
## Customization

You can easily modify the base of the logarithmic function used to calculate the value by using the **setLogarithmBase(double)**. You can get the current value with **getLogarithmBase()**. The default value is `10`, but in our example we have set it to `2`, because our values are relatively small. You can also specify the exponent step between the axis ticks with the method **setExponentStep(double)**. You can get the current value with **getExponentStep()**. The default value of the exponent step is `0` which means that the axis itself will calculate an exponent step that will visualize the points in the best possible way.
