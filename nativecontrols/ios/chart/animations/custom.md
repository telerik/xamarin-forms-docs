---
title: Custom Animations
position: 1
---

## Chart for Xamarin.iOS: Custom Animations

<code>TKChart</code> uses the Core Animation infrastructure available on iOS that you use to animate the visual points in series. In order to enable the animations, you should set <code>AllowAnimations</code> property to **true**. In that case the default animations are performed for each series. If you handle the <code>TKChartDelegate</code> protocol and implement the <code>AnimationForSeries</code> method, you can perform custom animations. With Core Animation, most of the work required to draw each frame of an animation is done for you. All you have to do is configure a few animation parameters (such as the start and end points).

You can use most of the Core Animation framework to customize the visual points animation. You can read more about Core Animation at [Apple Developer website](https://developer.apple.com/library/mac/documentation/cocoa/Conceptual/CoreAnimation_guide/Introduction/Introduction.html).

## Configuration Prerequisites###

You should handle the <code>TKChartDelegate</code>'s method <code>AnimationForSeries</code> to create a custom animation. In addition, you should group the animation created for each point in CAAnimationGroup to apply animation sequentially. You can access old and new points collection by using the <code>TKChartSeriesRenderState</code> properties <code>OldPoints</code> and <code>Points</code>. It allows generation for value key path property for point at a specified index by calling the <code>animationKeyPathForPointAtIndex</code> method.

## Animating Line Series##

The code below animates the line series points by moving them from bottom to top.

```C#
public override CAAnimation AnimationForSeries (TKChart chart, TKChartSeries series, TKChartSeriesRenderState state, CGRect rect)
{
    double duration = 0;
    List<CAAnimation> animations = new List<CAAnimation> ();
            
    for (int i = 0; i<(int)state.Points.Count; i++) 
    {            
        TKChartVisualPoint point = (TKChartVisualPoint)state.Points.ObjectAtIndex ((uint)i);

        if (Grow) 
        {
            string keyPath = string.Format ("seriesRenderStates.{0}.points.{1}.x", series.Index, i);

            CABasicAnimation animation = (CABasicAnimation)CABasicAnimation.FromKeyPath(keyPath);
            animation.Duration = 0.1 *(i + 0.2);
            animation.From = new NSNumber(0);
            animation.To = new NSNumber(point.X);
            animation.TimingFunction = CAMediaTimingFunction.FromName (CAMediaTimingFunction.EaseOut);
            animations.Add(animation);
            
            duration = animation.Duration;
        }
        else 
        {
            string keyPath = string.Format ("seriesRenderStates.{0}.points.{1}.y", series.Index, i);
            nfloat oldY = rect.Height;
    
            if (i > 0) 
            {
                CAKeyFrameAnimation animation = (CAKeyFrameAnimation)CAKeyFrameAnimation.GetFromKeyPath(keyPath);
                animation.Duration = 0.1* (i + 1);
                animation.Values = new NSNumber[] { new NSNumber(oldY), new NSNumber(oldY), new NSNumber(point.Y) };
                animation.KeyTimes = new NSNumber[] { new NSNumber(0), new NSNumber(i/(i+1.0)), new NSNumber(1) };
                animation.TimingFunction = CAMediaTimingFunction.FromName(CAMediaTimingFunction.EaseOut);
                animations.Add (animation);
    
                duration = animation.Duration;
            }
            else 
            {
                CABasicAnimation animation = (CABasicAnimation)CABasicAnimation.FromKeyPath(keyPath);
                animation.From = new NSNumber(oldY);
                animation.To = new NSNumber(point.Y);
                animation.Duration = 0.1f;
                animations.Add(animation);
            }
        }
    }
            
    CAAnimationGroup group = new CAAnimationGroup ();
    group.Duration = duration;
    group.Animations = animations.ToArray();
            
    return group;
}
```

## Animating Pie Series##

The following lines of code animate the pie's segments by moving them to the pie center together with changing their opacity.

```C#
public override CAAnimation AnimationForSeries (TKChart chart, TKChartSeries series, TKChartSeriesRenderState state, CGRect rect)
{
    double duration = 0;
    List<CAAnimation> animations = new List<CAAnimation>();
    for (int i = 0; i<(int)state.Points.Count; i++) {
        string pointKeyPath = state.AnimationKeyPathForPointAtIndex ((uint)i);
    
        string keyPath = string.Format("{0}.distanceFromCenter", pointKeyPath);
        CAKeyFrameAnimation a = CAKeyFrameAnimation.GetFromKeyPath(keyPath);
        a.Values = new NSNumber[] { new NSNumber(50), new NSNumber(50), new NSNumber(0) };
        a.KeyTimes = new NSNumber[] { new NSNumber(0), new NSNumber(i/(i+1.0)), new NSNumber(1) };
        a.Duration = 0.3 * (i+1.1);
        animations.Add(a);
    
        keyPath = string.Format("{0}.opacity", pointKeyPath);
        a = CAKeyFrameAnimation.GetFromKeyPath(keyPath);
        a.Values = new NSNumber[] { new NSNumber(0), new NSNumber(0), new NSNumber(1) };
        a.KeyTimes = new NSNumber[] { new NSNumber(0), new NSNumber(i/(i+1.0)), new NSNumber(1) };
        a.Duration = 0.3 * (i+1.1);
        animations.Add(a);
    
        duration = a.Duration;
    }
    CAAnimationGroup g = new CAAnimationGroup();
    g.Duration = duration;
    g.Animations = animations.ToArray();
    return g;
}
```

