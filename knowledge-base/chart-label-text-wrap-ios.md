---
title: Wrap Label Text on iOS
description: Enabing text wrapping inside a data point or axis tick label.
type: how-to
page_title: How to enable text wrapping in Label on iOS
slug: chart-label-text-wrap-ios
position: 
tags: chart, series, axes, labels, custom
res_type: kb
---

## Environment
<table>
	<tbody>
		<tr>
			<td>Product Version</td>
			<td>2020.1.318</td>
		</tr>
		<tr>
			<td>Product</td>
			<td>RadChart for Xamarin</td>
		</tr>
	</tbody>
</table>

## Description

How to wrap text inside an axis tick label or a series data point label on iOS.

## Solution

You can use `Environment.NewLine` and break up the text to wrap it inside the label. This can be done witout needing a custom renderer by inheriting `LabelFormatterBase<T>` and splitting up the long text into new lines.  

Before getting started with this tutorial, please visit the [RadChart Axes Features LabelFormatter]({%slug axes-overview%}#common-axis-features) documentation to understand how to use a LabelFormatter.


### Custom LabelFormatter

In that documenation article's tutorial, the bound value for the axis was **DateTime**. Therefore, we needed to use `LabelFormatterBase<DateTime>` for the base class.  In this example, the category value is a **string**, so we will change that to `LabelFormatterBase<string>`.

```csharp
public class LongTextLabelFormatter : LabelFormatterBase<string>
{
    public override string FormatTypedValue(string text)
    {
        ...
    }
}
```
Now would be a good time to add extra properties that give you more flexibility. For example:

* `MaxLineLength` property to set the width of each line before a line break.
* `MaxLength` to set the overall maximum length.

```csharp
public class LongTextLabelFormatter : LabelFormatterBase<string>
{
    public int MaxLineLength { get; set; } = 12;

    public int MaxLength { get; set; } = 100;

    public override string FormatTypedValue(string text)
    {
        ...
    }
}
```
Finally, in the `FormatTypedValue` method override, break up the text into several lines.

```csharp
public class LongTextLabelFormatter : LabelFormatterBase<string>
{
    public int MaxLineLength { get; set; } = 12;

    public int MaxLength { get; set; } = 100;

    public override string FormatTypedValue(string text)
    {
        // Condition 1
        // If the label text is less than the line length, just return it.
        if (text.Length <= MaxLineLength)
            return text;

        // Condition 2
        // If the text is longer than the desired line length, we need to split it into separate lines.

        // Clean up double spaces between words.
        text = text.Replace("  ", " ");

        // Get a list of the words.
        string[] words = text.Split(' ');

        // This holds the final output.
        var sb1 = new StringBuilder();

        // This holds the current working value.
        var sb2 = new StringBuilder();

        // Create the new lines
        foreach (var word in words)
        {
            if (sb2.Length + word.Length + 1 < MaxLineLength)
            {
                sb1.AppendFormat(" {0}", word);
                sb2.AppendFormat(" {0}", word);
            }
            else
            {
                sb2.Clear();
                sb1.AppendFormat("{0}{1}", Environment.NewLine, word);
                sb2.AppendFormat(" {0}", word);
            }
        }

        // Trim the end depending on the maximum desired length of the label.
        if (sb1.Length > MaxLength)
        {
            return sb1.ToString().Substring(0, MaxLength) + " ...";
        }

        // Trim the result and return it.
        return sb1.ToString().TrimStart().TrimEnd();
    }
}
```
> You can use any text splitting logic you prefer, our example is based on [this StackOverflow answer](https://stackoverflow.com/a/16504017/1406210). The main takeaway is that the string is split up using `Environment.NewLine` or explicit `\r\n` characters, allowing it to fit in the label's bounds.

## Examples

### Axis Labels

To use this formatter class for axis tick labels, use it as an axis **LabelFormatter**. For example, here it is being used on a `CategoricalAxis`:

```xml
<telerikChart:RadCartesianChart>
    <telerikChart:RadCartesianChart.HorizontalAxis>
        <telerikChart:CategoricalAxis ShowLabels="True">
            <telerikChart:CategoricalAxis.LabelFormatter>
                <!-- Custom label formatter -->
                <formatters:LongTextLabelFormatter MaxLineLength="12" MaxLength="100" />
            </telerikChart:CategoricalAxis.LabelFormatter>
        </telerikChart:CategoricalAxis>
    </telerikChart:RadCartesianChart.HorizontalAxis>
    <telerikChart:RadCartesianChart.VerticalAxis>
        <telerikChart:NumericalAxis />
    </telerikChart:RadCartesianChart.VerticalAxis>

    <telerikChart:RadCartesianChart.Series>
        <telerikChart:BarSeries ItemsSource="{Binding BarSeriesData}" ShowLabels="True">
            <telerikChart:BarSeries.ValueBinding>
                <telerikChart:PropertyNameDataPointBinding PropertyName="Value" />
            </telerikChart:BarSeries.ValueBinding>
            <telerikChart:BarSeries.CategoryBinding>
                <telerikChart:PropertyNameDataPointBinding PropertyName="Category" />
            </telerikChart:BarSeries.CategoryBinding>
            <telerikChart:BarSeries.LabelBinding>
                <telerikChart:PropertyNameDataPointBinding PropertyName="Category" />
            </telerikChart:BarSeries.LabelBinding>
        </telerikChart:BarSeries>
    </telerikChart:RadCartesianChart.Series>
</telerikChart:RadCartesianChart>
```

### Series Point Labels

You can also use this same technique on series data point labels by setting the series **LabelFormatter** property. For example, here it is being used on a `SplineAreaSeries`:

```xml
<telerikChart:RadCartesianChart>
    <telerikChart:RadCartesianChart.HorizontalAxis>
        <telerikChart:CategoricalAxis ShowLabels="True" />
    </telerikChart:RadCartesianChart.HorizontalAxis>
    <telerikChart:RadCartesianChart.VerticalAxis>
        <telerikChart:NumericalAxis />
    </telerikChart:RadCartesianChart.VerticalAxis>

    <!-- Series -->
    <telerikChart:RadCartesianChart.Series>
        <telerikChart:SplineAreaSeries ItemsSource="{Binding SplineAreaSeriesData}" ShowLabels="True">
            <telerikChart:SplineAreaSeries.LabelFormatter>
                <!-- Custom label formatter -->
                <formatters:LongTextLabelFormatter MaxLineLength="12" MaxLength="100" />
            </telerikChart:SplineAreaSeries.LabelFormatter>
            <telerikChart:SplineAreaSeries.ValueBinding>
                <telerikChart:PropertyNameDataPointBinding PropertyName="Value" />
            </telerikChart:SplineAreaSeries.ValueBinding>
            <telerikChart:SplineAreaSeries.CategoryBinding>
                <telerikChart:PropertyNameDataPointBinding PropertyName="Category" />
            </telerikChart:SplineAreaSeries.CategoryBinding>
            <telerikChart:SplineAreaSeries.LabelBinding>
                <telerikChart:PropertyNameDataPointBinding PropertyName="Category" />
            </telerikChart:SplineAreaSeries.LabelBinding>
        </telerikChart:SplineAreaSeries>
    </telerikChart:RadCartesianChart.Series>
</telerikChart:RadCartesianChart>
```

## See Also

* [Axes Overview]({%slug axes-overview%})
* [Series Features - Labels Customization]({%slug chart-series-features%}#labels-customization)
