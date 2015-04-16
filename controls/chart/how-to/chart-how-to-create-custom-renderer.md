---
title: How To Create Custom Renderer
slug: chart-how-to-create-custom-renderer
---

# Custom Chart Renderer #
Sometimes, you might find that certain feature is available in the native control on a given platform, but is not exposed in Xamarin Forms. This is when you would need to create a custom renderer. This will allow you to access the native control and configure it as per your needs.

## Example ##

Let us consider the following example: we need to apply animation to LineSeries in iOS. Create a class which inherits from Telerik.XamarinForms.ChartRenderer.iOS.CartesianChartRenderer and override the UpdataNativeWidget and CreateChartDelegateOverride methods:

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

		protected override CartesianChartDelegate CreateChartDelegateOverride()
		{
			return new ChartWithAnimationDelegate();
		}
	}

UpdateNativeWidget method takes care of allowing animations for the chart. CreateChartDelegateOverride supplies an instance of a class that inherits from TKChartDelegate, configured with animations as per the [iOS chart help](http://docs.telerik.com/devtools/ios/Chart/Animations/custom). ChartWithAnimationDelegate inherits from Telerik.XamarinForms.ChartRenderer.iOS.CartesianChartDelegate, which in turn inherits from TKChartdelegate. This way you only need to extend it with the desired features:

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

Now you only need to register your custom renderer using the ExportRenderer assembly level attribute:
	 
	[assembly: Xamarin.Forms.ExportRenderer(typeof(Telerik.XamarinForms.Chart.RadCartesianChart), typeof(LineWithAnimationRenderer))]