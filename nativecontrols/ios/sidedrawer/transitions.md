---
title: Transitions
page_title: TKSideDrawer Transitions
slug: ios-sidedrawer-transiions
position: 2
---

# TKSideDrawer for Xamarin.iOS: Transitions

<code>TKSideDrawer</code> transitions let you use different animation effects for showing/dismissing. You can also easily create your custom animation by subclassing the base class <code>TKSideDrawerTransition</code>.

<img src="../images/sidedrawer-transitions001.png"/>

## Transition Types

<table>

<tr>
<th>Transition Type</th>
<th>Figures</th>
</tr>

<tr>
<td>Push</td>
<td><img src="../images/sidedrawer-transitions-push.gif"/></td>
</tr>

<tr>
<td>Reveal</td>
<td><img src="../images/sidedrawer-transitions-reveal.gif"/></td>
</tr>

<tr>
<td>ReverseSlideOut</td>
<td><img src="../images/sidedrawer-transitions-reverseslideout.gif"/></td>
</tr>

<tr>
<td>SlideAlong</td>
<td><img src="../images/sidedrawer-transitions-slidealong.gif"/></td>
</tr>

<tr>
<td>SlideInOnTop</td>
<td><img src="../images/sidedrawer-transitions-slideinontop.gif"/></td>
</tr>

<tr>
<td>ScaleUp</td>
<td><img src="../images/sidedrawer-transitions-scaleup.gif"/></td>
</tr>

<tr>
<td>FadeIn</td>
<td><img src="../images/sidedrawer-transitions-fadein.gif"/></td>
</tr>

<tr>
<td>ScaleDownPusher</td>
<td><img src="../images/sidedrawer-transitions-scaledownpusher.gif"/></td>
</tr>

</table>

The default transition is *SlideInOnTop*. In order to change the transition type, you should set the <code>TransitionType</code> property of <code>TKSideDrawer</code>:

```C#
sideDrawer.TransitionType = TKSideDrawerTransitionType.Reveal;
```

## Transition Duration

You can configure the speed of the transition setting the <code>TransitionDuration</code> property of <code>TKSideDrawer</code>

```C#
sideDrawer.TransitionDuration = 0.5f;
```

> SideDrawer Transitions example can be found in our [Native Xamarin.iOS examples]({%slug developer-focused-examples%}#native-only-examples).

## Using Custom Transitions

You can create a custom transition by sublcassing <code>TKSideDrawerTransition</code> and overriding its methods. After you create your transtion you should tell the side drawer to use this transition by setting its <code>TransitionManager</code> property.

<img src="../images/sidedrawer-transitions002.png"/>

```C#
MyTransition transition = new MyTransition (sideDrawer);
sideDrawer.TransitionManager = transition;
```

Here is the MyTransition implementation:

```C#
public class MyTransition : TKSideDrawerTransition
{
	private CGPoint sideDrawerIdentityCenter;
	private CGPoint hostviewIdentityCenter;

	public MyTransition(TKSideDrawer sideDrawer) : base(sideDrawer)
	{
	}

	public override void Show ()
	{
		if (!this.SideDrawer.IsVisible) {
			this.SideDrawer.Frame = new CGRect (0, -this.SideDrawer.Superview.Bounds.Size.Height, this.SideDrawer.Width, this.SideDrawer.Superview.Bounds.Size.Height);
			sideDrawerIdentityCenter = this.SideDrawer.Center;
			hostviewIdentityCenter = this.SideDrawer.Hostview.Center;
		}

		this.TransitionBegan (true);
		UIView.Animate (this.SideDrawer.TransitionDuration, delegate {
			this.SideDrawer.Center = new CGPoint(sideDrawerIdentityCenter.X, sideDrawerIdentityCenter.Y + this.SideDrawer.Bounds.Size.Height);
			this.SideDrawer.Hostview.Center = new CGPoint(hostviewIdentityCenter.X + this.SideDrawer.Width, hostviewIdentityCenter.Y);
		}, delegate {
			this.TransitionEnded(true);
		});
	}

	public override void Dismiss ()
	{
		this.TransitionBegan (false);
		UIView.Animate (this.SideDrawer.TransitionDuration, delegate {
			this.SideDrawer.Center = new CGPoint(this.SideDrawer.Width / 2.0, -this.SideDrawer.Frame.Size.Height / 2.0);
			this.SideDrawer.Hostview.Center = new CGPoint(this.SideDrawer.Hostview.Superview.Bounds.Width / 2.0,
				this.SideDrawer.Hostview.Superview.Bounds.Height / 2.0);
		}, delegate {
			this.TransitionEnded(false);
		});
	}

	public override void TransitionBegan (bool showing)
	{
		if (showing) {
			this.SideDrawer.Hidden = false;
			this.SideDrawer.Superview.BringSubviewToFront (this.SideDrawer.Hostview);
			this.SideDrawer.Hostview.UserInteractionEnabled = false;
		}
	}

	public override void TransitionEnded (bool showing)
	{
		if (!showing) {
			this.SideDrawer.Hidden = true;
			this.SideDrawer.Hostview.UserInteractionEnabled = true;
		}
	}
}
```

> SideDrawer Custom Transition example can be found in our [Native Xamarin.iOS examples]({%slug developer-focused-examples%}#native-only-examples).
