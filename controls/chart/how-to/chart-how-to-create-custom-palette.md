---
title: Custom Chart Palette
page_title: Xamarin Chart Documentation | Custom Chart Palette
description: Check our &quot;Custom Chart Palette&quot; documentation article for Telerik Chart for Xamarin control.
position: 1
slug: chart-how-to-create-custom-palette
---

# Custom Chart Palette

When you need to define custom sets of colors for the Chart series, you can take advantage of custom palettes. RadChart exposes the following properties for setting custom ChartPalettes:

* **Palette** (of type *ChartPalette*): Defines the default appearance of the Chart series/data points.

* **SelectionPalette** (of type *ChartPalette*): Defines the appearance of the Chart series/data points when selected.

Both properties should be set to a **ChartPalette** instance. The ChartPalette holds a collection of **PaletteEntry** objects where each PaletteEntry has FillColor and StrokeColor properties, thus defining the visual appearance of each series/data points of the Chart.

>tip For SelectionPalette you'd need to add the SelectionBehavior to the ChartBehaviors collection of the Chart instance. For more details on this refer to [Chart SelectionBehavior]({%slug chart-behaviors-selection%}) topic.

## Example

Here is an example how to create a CartesianChart with custom palettes:

First, create the needed business model:

<snippet id='categorical-data-model'/>

And here is the sample data used as binding context:

<snippet id='chart-customization-custompalette-viewmodel'/>

Finally, declare the RadCartesianChart in XAML or C#:

<snippet id='chart-customization-custompalette-xaml'/>
<snippet id='chart-customization-custompalette-csharp'/>

Here is the result:

![Custom Palette](images/chart-how-to-create-custom-palette.png)

## See Also

- [Chart SelectionBehavior]({%slug chart-behaviors-selection%})
- [Categorical Series Combine Mode]({%slug chart-series-combine-mode%})
- [Chart Legend]({%slug chart-features-legend%})
