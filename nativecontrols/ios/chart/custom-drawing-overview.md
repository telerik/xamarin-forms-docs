---
title: Custom Drawing
position: 14
---

## Chart for Xamarin.iOS: Custom Drawing

<code>TKChart</code> has a powerful drawing engine to help you customize your chart appearance. It allows you to:

- define different kinds of fills. Solid color, Linear gradient, Radial gradient, fill with image content.
- define strokes which contain information about stroke fill, dash pattern, line width etc.
- define fill & stroke's corner radius, which corners to apply that radius to. It also supports drawing insets.

## Working with fills##

There are several kinds of fills:

### Solid fill###

<code>TKSolidFill</code> is the simplest of all fills. It paints chart items with a single color. Here is how you define it:

```C#
var fill = new TKSolidFill (UIColor.Red);
```

After you set it to a palette (discussed later) you get result like this:

![](../images/chart-custom-drawing001.png)

You can also specify corner radius:

```C#
var fill = new TKSolidFill (UIColor.Red, 5.0f);
```

This results in columns looking like this:

![](../images/chart-custom-drawing002.png)

All fills and strokes allow you to specify not only corner radius, but also which corners to round. Semi-transparent red fill with only two corners rounded can be defined like this:

```C#
var fill = new TKSolidFill (new UIColor (1.0f, 0.0f, 0.0f, 0.5f), 8.0f);
fill.Corners = UIRectCorner.TopLeft | UIRectCorner.BottomRight;
```

There you get:

![](../images/chart-custom-drawing003.png)

### Linear gradient fill###

<code>TKLinearGradientFill</code> allows you to fill an item with color gradients. You can specify which colors to use and relative to the size positions of gradient stops.

Here is how you define linear gradient with 3 colors (green to red to blue) with transparency:

```C#
var fill = new TKLinearGradientFill (new UIColor[] {
    new UIColor (0.0f, 1.0f, 0.0f, 0.6f),
    new UIColor (1.0f, 0.0f, 0.0f, 0.6f),
    new UIColor (0.0f, 0.0f, 1.0f, 0.6f)
}, 
    new CGPoint(0, 0), 
    new CGPoint(1, 1));
```

![](../images/chart-custom-drawing004.png)

If you wish to distribute those colors unevenly and change gradient direction here is how to do it:

```C#
var fill = new TKLinearGradientFill (new UIColor[] {
    new UIColor (0.0f, 1.0f, 0.0f, 0.6f),
    new UIColor (1.0f, 0.0f, 0.0f, 0.6f),
    new UIColor (0.0f, 0.0f, 1.0f, 0.6f)
},
    new NSObject[] { new NSNumber(0.6), new NSNumber(0.8), new NSNumber(1.0) },
    new CGPoint(0, 0), 
    new CGPoint(1, 1));
```

Warning: All coordinates for locations, startPoint and endPoint parameters are relative to the size of drawing surface. The values of locations array must be monotonically increasing.

![](../images/chart-custom-drawing005.png)

### Radial gradient fill###

<code>TKRadialGradientFill</code> draws a fill with two colors using centers relative to the drawing size. Radius is set in different measures depending on TKGradientRadiusType parameter. It is hard to master and most of the time you can achieve the same functionality with linear gradient. Here is a possible usage:

```C#
var fill = new TKRadialGradientFill (new UIColor[] { 
    new UIColor (0.0f, 1.0f, 0.0f, 0.7f),
    new UIColor (1.0f, 0.0f, 0.0f, 0.0f) 
},
    new CGPoint (0.5f, 0.5f),
    0.7f,
    new CGPoint (0, 1),
    0.3f,
    TKGradientRadiusType.RectMax);
```

The resulting ghost column chart looks like this:

![](../images/chart-custom-drawing006.png)

### Image fill###

<code>TKImageFill</code> fills the drawing area with the content of an image. There is also a <code>ResizingMode</code> which specify how to draw image. Here is an example usage of tiled image:

```C#
var fill = new TKImageFill (new UIImage ("pattern1.png"), 4.0f);
fill.ResizingMode = TKImageFillResizingMode.Tile;
```

![](../images/chart-custom-drawing007.png)

this is the source (pattern) image to draw:

<img src="../images/chart-custom-drawing008.png"/> <= original&nbsp;&nbsp;&nbsp;&nbsp;<img width=24 height=24 src="../images/chart-custom-drawing008.png"/>  <= 8 times magnified version

Filling with images in stretch mode is even easier:

```C#
var fill = new TKImageFill (new UIImage ("building1.png"), 4.0f);
```

![](../images/chart-custom-drawing009.png)

Sometimes you like to specify your own stretchable image. Stretching this <img src="../images/chart-custom-drawing011.png"/> image with your own code, leads to the following result:

```C#
UIImage image = new UIImage ("pattern2.png");
var fill = new TKImageFill (image.CreateResizableImage (new UIEdgeInsets (10, 10, 10, 10)));
fill.ResizingMode = TKImageFillResizingMode.None;
```

![](../images/chart-custom-drawing010.png)

## Adding stroke##

<code>TKStroke</code> is a powerful tool which allows you to customize how you apply strokes to your charts.

You can create a simple stroke like this:

```C#
var stroke = new TKStroke (UIColor.Blue);
```

With rounded corners:

```C#
var stroke = new TKStroke (UIColor.Blue, 1.0f);
stroke.CornerRadius = 5.0f;
```

With dash pattern:

```C#
var stroke = new TKStroke (UIColor.Blue, 1.0f);
stroke.CornerRadius = 5.0f;
stroke.DashPattern = new NSNumber[] { new NSNumber(2), new NSNumber(2), new NSNumber(5), new NSNumber(2) };
```

You can fill a stroke with a gradient:

<snippet id='chart-drawing-stroke-gradient'/>
<snippet id='chart-drawing-stroke-gradient-swift'/>
```C#
var fill = new TKLinearGradientFill (new UIColor[] {
    new UIColor (0.0f, 1.0f, 0.0f, 0.6f),
    new UIColor (1.0f, 0.0f, 0.0f, 0.6f),
    new UIColor (0.0f, 0.0f, 1.0f, 0.6f)
}, new CGPoint(0, 0), new CGPoint(1, 1));
var stroke = new TKStroke (fill, 1.0f);
stroke.CornerRadius = 5.0f;
```

Or combine most of it in one place:

<snippet id='chart-drawing-stroke-combined'/>
<snippet id='chart-drawing-stroke-combined-swift'/>
```C#
var fill = new TKLinearGradientFill(new UIColor[] {
    new UIColor (0.0f, 1.0f, 0.0f, 0.6f),
    new UIColor (1.0f, 0.0f, 0.0f, 0.6f),
    new UIColor (0.0f, 0.0f, 1.0f, 0.6f)
}, new CGPoint(0, 0), new CGPoint(1, 1));
var stroke = new TKStroke (fill, 1.0f);
stroke.CornerRadius = 5.0f;
stroke.DashPattern = new NSNumber[] { new NSNumber(2), new NSNumber(2), new NSNumber(5), new NSNumber(2) };
stroke.Corners = UIRectCorner.TopRight | UIRectCorner.BottomLeft;
```

And here is the result of all samples:

<img src="../images/chart-custom-drawing012.png"/>

or with line chart using strokes with width = 2

<img src="../images/chart-custom-drawing013.png"/>

## Customizing TKChart##

Customizing <code>TKChart</code> can be done using <code>TKChartPalette</code>. You can access the palette from <code>TKChartSeries</code> using series.Style.Palette variable. By default, palette is nil which means that <code>TKChart</code> will use its default theme. To specify your own, you need to create it:

```C#
TKChartSeries series = null;
series.Style.Palette = new TKChartPalette();
```

</code>TKChartPalette</code> is a collection of <code>TKChartPaletteItem</code> instances. Every item contains information about drawing the item at its index. By default, a palette item index addresses the order in which you add series. For example, you may have a palette with red and blue fills and two <code>TKChartColumnSeries</code> using this palette. The first series you add will be red and the second blue. However, <code>TKChartPieSeries</code> by default uses another mode when every palette item is used to display a data point at its index. You can explicitly set how you distribute a palette items using:

```C#
series.Style.PaletteMode = TKChartSeriesStylePaletteMode.UseItemIndex;
```

or

```C#
series.Style.PaletteMode = TKChartSeriesStylePaletteMode.UseSeriesIndex;
```

Whenever <code>TKChartPalette</code> runs out of colors (because there are more series or more data points than <code>TKChartPaletteItem</code> items inside) it starts over effectively cycling through its items.

To illustrate the difference between palette modes, consider the following setup:

```C#
List<TKChartDataPoint> gdpInPoundsPoints = null;

var series = new TKChartColumnSeries (gdpInPoundsPoints.ToArray());
series.Style.Palette = new TKChartPalette ();

var redFill = new TKSolidFill (UIColor.Red);
series.Style.Palette.AddPaletteItem (new TKChartPaletteItem (redFill));

var blueFill = new TKSolidFill (UIColor.Blue);
series.Style.Palette.AddPaletteItem (new TKChartPaletteItem (blueFill));

var greenFill = new TKSolidFill (UIColor.Green);
series.Style.Palette.AddPaletteItem (new TKChartPaletteItem (greenFill));

series.Style.PaletteMode = TKChartSeriesStylePaletteMode.UseItemIndex;
chart.AddSeries (series);
```

As you see we are using <code>TKChartSeriesStylePaletteModeUseItemIndex</code> palette mode and the result is:

<img src="../images/chart-custom-drawing014.png"/>

Here the palette items are used to color the different data points. Since palette items inside are 3 and data points are 5, the palette starts over reusing the items it has. If you remove the line:

<snippet id='chart-drawing-pallete-mode-index'/>
<snippet id='chart-drawing-pallete-mode-index-swift'/>
```C#
series.Style.PaletteMode = TKChartSeriesStylePaletteMode.UseItemIndex;
```

or change it to:

<snippet id='chart-drawing-pallete-mode-series'/>
<snippet id='chart-drawing-pallete-mode-series-swift'/>
```C#
series.Style.PaletteMode = TKChartSeriesStylePaletteMode.UseSeriesIndex;
```

you will get:

<img src="../images/chart-custom-drawing015.png"/>

This is because you have added only one series. Adding a second series with the same palette will make its data points blue. Adding a third series will make its data points green and fourth would be red again.

### Palette items###

<code>TKChartPaletteItem</code> is the building block of <code>TKChartPalette</code> and contains information about how to draw items. The simple way to use it is to specify a fill and/or stroke. Consider one of the following constructors:

```C#
var paletteItem1 = new TKChartPaletteItem (new TKSolidFill (UIColor.Red));
var paletteItem2 = new TKChartPaletteItem(new TKStroke(UIColor.Blue));
var plaetteItem3 = new TKChartPaletteItem(new TKStroke(UIColor.Blue), new TKSolidFill(UIColor.Red));

series.Style.Palette.AddPaletteItem (paletteItem1);
```

When you initialize a palette item with stroke and fill the stroke is always drawn last.

There is also an alternative and a more flexible way to create a palette item by specifying an array of fills and strokes in the order you would like them to be drawn:

```C#
series.Style.Palette = new TKChartPalette ();
var redFill = new TKSolidFill (UIColor.Red, 2.0f);
var stroke1 = new TKStroke (UIColor.Yellow, 1.0f);
stroke1.CornerRadius = 2.0f;
stroke1.Insets = new UIEdgeInsets (1, 1, 1, 1);
var stroke2 = new TKStroke (UIColor.Black, 1.0f);
stroke2.CornerRadius = 2.0f;
series.Style.Palette.AddPaletteItem(new TKChartPaletteItem(new TKDrawing[] { redFill, stroke1, stroke2 }));
```

here you create a palette item with red fill and two borders. The sample also shows another powerful feature: insets. Insets can be applied to both fills and strokes. Here is the final result:

<img src="../images/chart-custom-drawing016.png"/>

### Customizing line series###

<code>TKChartLineSeries</code> uses only TKStroke instances of <code>TKChartPaletteItem</code> and ignores any fills. You can specify a wide first stroke and thin second stroke if you need more than one stroke.

### Customizing area series###

<code>TKChartAreaSeries</code> uses TKStroke instances of <code>TKChartPaletteItem</code> for the line and fills for area part.

### Customizing scatter series###

<code>TKChartScatterSeries</code> uses palette items to draw its shapes. However you might also change shape's type using code like:

<snippet id='chart-drawing-pallete-point'/>
<snippet id='chart-drawing-pallete-point-swift'/>
```C#
series.Style.PointShape = new TKPredefinedShape (TKShapeType.Rhombus, new CGSize (15, 15));
```

series.Style.PointShape also applies to line and area series in case you need to show shapes on data points.

### Customizing pie series###

TKChartPieSeries always use <code>series.Style.PaletteMode = TKChartSeriesStylePaletteModeUseItemIndex;</code>. If you have strokes with insets, only Insets.Top value will be used and will be applied relatively to the outer radius of the pie chart slices.

@warning Customization is a very powerful feature of TKChart. However, we recommend using that feature at an acceptable rate. Using too many fills and strokes may affect performance. Combining all features like a dashed stroke with gradient plus several semi transparent fills will draw much slower than a simple solid color fill.
