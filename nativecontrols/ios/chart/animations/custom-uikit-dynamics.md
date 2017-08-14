---
title: UIKit Dynamics Animations
position: 2
---

# Chart Animations: UIKit Dynamics Animations

<code>TKChart</code> can uses the UIKit Dynamics physics engine integrated in iOS 7.0 to animate the points in series. It allows you to create interfaces that feel real by adding behaviors such as gravity, attachments (springs) and forces. You define the physical traits that you would like your interface elements to adopt, and the dynamics engine takes care of the rest.

You should set the <code>allowAnimations</code> property to *YES* to enable UIKit Dynamics animations.

## Configuration###

The approach below shows how you can apply a fall down animation to the visual points in line series.

<snippet id='chart-anim-gravity'/>

<snippet id='chart-anim-gravity-swift'/>

```C#
animator = new UIDynamicAnimator (chart.PlotView);
TKChartVisualPoint[] points = chart.VisualPointsForSeries (chart.Series [0]);
TKChartVisualPoint point = points [4];

for (int i=0; i<originalValues.Count; i++) {
    TKChartVisualPoint pt = points [i];
    if (pt.Animator != null) {
        pt.Animator.RemoveAllBehaviors();
        pt.Animator = null;
    }
    pt.Center = ((CGPoint)originalValues[i]);
}

point.Center = new CGPoint (originalLocation.X, 0);

UICollisionBehavior collision = new UICollisionBehavior (points);
collision.TranslatesReferenceBoundsIntoBoundary = true;

UIGravityBehavior gravity = new UIGravityBehavior (points);
gravity.GravityDirection = new CGVector (0.0f, 2.0f);

UIDynamicItemBehavior dynamic = new UIDynamicItemBehavior (points);
dynamic.Elasticity = 0.5f;

animator.AddBehavior(dynamic);
animator.AddBehavior(gravity);
animator.AddBehavior(collision);
```