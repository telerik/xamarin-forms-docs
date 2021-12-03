---
title: Add text next to Chart Cartesian GridLine Annotation
description: text annotation to chart griline annotation
type: how-to
page_title: Add text to chart annotation
slug: chart-text-annotation-gridline
position: 
tags: chart, text, annoation
ticketid: 1544231
res_type: kb
---

## Environment
<table>
	<tbody>
		<tr>
			<td>Product Version</td>
			<td>2021.3.1110.1</td>
		</tr>
		<tr>
			<td>Product</td>
			<td>Chart for Xamarin Cross-Platform</td>
		</tr>
	</tbody>
</table>


## Description

This article will show you how-to add a text to the chart gridline annotation.

## Solution

There isn't a built-in API that allows you to add text on the annotation. for iOS and Android you need to implement a custom annotation using [custom renderer]({%slug chart-how-to-register-custom-renderer%}).

### For Android

You need to use the [CartesianCustomAnntoation](https://docs.telerik.com/devtools/xamarin/nativecontrols/android/chart/chart-annotations#custom-text-annotation) to add a text anotation. 

Create a custom renderer for Android. For example create a class `CustomChartRenderer` inside the Android project. The class must inhetirs from `CartesianChartRenderer`. 

Then override the `OnElementChanged` method and create the custom annotation:

```C#
public class CustomChartRenderer : CartesianChartRenderer
{
	public CustomChartRenderer(Context context) : base(context)
	{

	}

	protected override void OnElementChanged(ElementChangedEventArgs<RadCartesianChart> e)
	{
		base.OnElementChanged(e);

		if (this.Control != null)
		{
			var annotationValue = 30;
			var annotationCategory = "Greenings";
			var annotationContent = "TARGET";

			var annotation = new CartesianCustomAnnotation(
				this.Control.VerticalAxis,
				this.Control.HorizontalAxis,
				annotationValue,
				annotationCategory,
				annotationContent);
			annotation.ContentRenderer = new CustomTextRenderer();

			this.Control.Annotations.Add(annotation);
		}
	}
}
```

And the CustomTextRenderer class which is used for creating the text for the custom annotation:

```C#
public class CustomTextRenderer : Java.Lang.Object, ICustomAnnotationRenderer
{
    private readonly Paint contentPaint = new Paint();

    public CustomTextRenderer()
    {
        contentPaint.TextSize = 36;
        contentPaint.Color = Android.Graphics.Color.Red;
        contentPaint.SetTypeface(Typeface.Create("sans-serif-light", TypefaceStyle.Normal));
    }

    public RadSize MeasureContent(Java.Lang.Object content)
    {
        if (content == null)
        {
            return RadSize.Empty;
        }

        var text = content.ToString();
        var textBounds = new Android.Graphics.Rect();

        contentPaint.GetTextBounds(text, 0, text.Length, textBounds);

        return new RadSize(textBounds.Width(), textBounds.Height());
    }

    public void Render(
        Java.Lang.Object content,
        RadRect layoutSlot,
        Canvas canvas,
        Paint paint)
    {

        if (content == null)
        {
            return;
        }

        var text = content.ToString();

        canvas.DrawText(
            text,
            (float)layoutSlot.GetX() - (float)(layoutSlot.Width / 2.0),
            (float)layoutSlot.Bottom - (float)layoutSlot.Height / 2,
            contentPaint);
    }
}
```

### For iOS

You need to use one of the annotations described here: [Annotations](https://docs.telerik.com/devtools/xamarin/nativecontrols/ios/chart/annotations). For example, [Layer and View annotation](https://docs.telerik.com/devtools/xamarin/nativecontrols/ios/chart/annotations#layer-and-view-annotations) or [TKChartBalloonAnnotation](https://docs.telerik.com/devtools/xamarin/nativecontrols/ios/chart/annotations#balloon-annotation).

When using Layer annotation, the example shows how to add image to the chart: 

```C#
UIImageView imageView = new UIImageView ();
imageView.Image = UIImage.FromBundle ("logo.png");
imageView.Bounds = new CGRect (0, 0, imageView.Image.Size.Width, imageView.Image.Size.Height);
imageView.Alpha = 0.7f;
chart.AddAnnotation (new TKChartViewAnnotation(imageView, new NSNumber(550), new NSNumber(90), chart.Series[0]));
```

Replace the image with UILabel, so you can display text inside the TKChartViewAnnotation.