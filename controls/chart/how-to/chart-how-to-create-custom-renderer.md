---
title: How To Create Line Series With Animation
page_title: Xamarin Chart Documentation | How To Create Line Series With Animation
description: Check our &quot;How To Create Line Series With Animation&quot; documentation article for Telerik Chart for Xamarin control.
position: 3
slug: chart-how-to-create-custom-renderer
---

# Example

Let us consider the following example: we need to apply animation to **LineSeries** in **iOS**. Create a class which inherits from **Telerik.XamarinForms.ChartRenderer.iOS.CartesianChartRenderer** and override the **UpdateNativeWidget** and **CreateChartDelegate** methods:

```C#
	public class LineWithAnimationRenderer : CartesianChartRenderer
	{
		public LineWithAnimationRenderer()
		{
		}

		protected override void UpdateNativeWidget()
		{
			base.UpdateNativeWidget();
			this.Control.AllowAnimations = true;
		}

		protected override TKChartDelegate CreateChartDelegate(RadCartesianChart chart)
        {
            return new ChartWithAnimationDelegate(chart);
        }
	}
```

**UpdateNativeWidget** method takes care of allowing animations for the chart. **CreateChartDelegate** supplies an instance of a class that inherits from **TKChartDelegate**, configured with animations as per the [iOS chart help](https://docs.telerik.com/devtools/xamarin/nativecontrols/ios/chart/animations/custom). **ChartWithAnimationDelegate** inherits from Telerik.XamarinForms.ChartRenderer.iOS.CartesianChartDelegate, which in turn inherits from **TKChartdelegate**. This way you only need to extend it with the desired features:

```C#
	public class ChartWithAnimationDelegate : CartesianChartDelegate
	{
		public ChartWithAnimationDelegate()
		{
		}

		public override CAAnimation AnimationForSeries(TKChart chart, TKChartSeries series, TKChartSeriesRenderState state, CGRect rect)
		{
			var duration = 0.0;
			var animations = new List<CAAnimation>();
			for (int i = 0; i < (int)state.Points.Count; i++)
			{
				var pointKeyPath = state.AnimationKeyPathForPointAtIndex((uint)i);
				var keyPath = pointKeyPath + ".y";
				var point = state.Points.ObjectAtIndex((uint)i) as TKChartVisualPoint;
				var oldY = rect.Size.Height;

				if (i > 0)
				{
					var animation = new CAKeyFrameAnimation();
					animation.KeyPath = keyPath;
					animation.Duration = (double)(0.1 * i );
					animation.Values = new NSNumber[] { new NSNumber(oldY), new NSNumber(oldY), new NSNumber(point.Y) };
					animation.KeyTimes = new NSNumber[] { new NSNumber(0), new NSNumber(i / (i + 1.0)), new NSNumber(1.0) };
					animations.Add(animation);
					duration = animation.Duration;
				}
				else
				{
					var animation = new CABasicAnimation();
					animation.KeyPath = keyPath;
					animation.From = new NSNumber(oldY);
					animation.To = new NSNumber(point.Y);
					animation.Duration = 0.1;
					animations.Add(animation);
				}
			}

			var group = new CAAnimationGroup();
			group.Duration = duration;
			group.Animations = animations.ToArray();
			return group;
		}
	}
	chart.Palette = CustomPalettes.CustomDark;
```

Now you only need to register your custom renderer using the ExportRenderer assembly level attribute:

```C#	 
	[assembly: Xamarin.Forms.ExportRenderer(typeof(Telerik.XamarinForms.Chart.RadCartesianChart), typeof(LineWithAnimationRenderer))]
```

## See Also

- [Categorical Series Combine Mode]({%slug chart-series-combine-mode%})
- [Chart Legend]({%slug chart-features-legend%})
- [How To Create Custom Renderer]({%slug chart-how-to-create-custom-renderer%})
