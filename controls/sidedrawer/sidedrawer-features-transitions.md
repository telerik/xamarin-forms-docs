---
title: Transitions
page_title: Transitions
position: 3
slug: sidedrawer-features-transitions
---

Transitions are the animation effects applied to the side drawer while it is being opened and closed. The **RadSideDrawer** component exposes several predefined transitions that can be used by customers. To do this users can set the **RadSideDrawer.DrawerTransitionType** property. It is enumeration which exposes the following members:

- Fade
- Push
- Reveal
- ReverseSlideOut
- ScaleUp
- SlideAlong
- SlideInOnTop
- Custom

If however, non of these predefined transitions fits users' scenario they are allowed to create custom animation effect. Next is a demonstration of how customers can create their own transition.



First step is to set the **DrawerTransitionType** property to **Custom**. Second step is to create custom SideDrawerRenderer (in both Android and iOS platforms) which will allow customers to apply custom transition.



Lets break down these steps and see the specifics in each of the platforms.



## Create Custom Transition in Android

Creating custom renderer is simple. Just create a class and derive it from the **SideDrawerRenderer**. Furthermore, customers should override the **CreateFadeLayer()** and **CreateCustomTransition()** methods. Those methods are the necessary extensibility points for such customization. Here is a sample implementation of a custom renderer:



	public class CustomSideDrawerRenderer : SideDrawerRenderer
	{
	    protected override Native.IDrawerFadeLayer CreateFadeLayer()
	    {
	        return new Native.BlurFadeLayer(Forms.Context, RenderScript.Create(Forms.Context))
	        {
	            Background = new Drawables.ColorDrawable(Color.FromRgb(255, 200, 255).ToAndroid())
	        };
	    }
	
	    protected override Native.IDrawerTransition CreateCustomTransition()
	    {
	        return new FallDownTransition();
	    }
	}

>**BlurFadeLayer** requires reference to **Xamarin.Android.Support.v8.RenderScript**



Once users have this class created, they need to register the renderer. This can be done in the **MainActivity.cs** file of the Android project and use the following code:



	[assembly: ExportRenderer(typeof(RadSideDrawer), typeof(CustomSideDrawerRenderer))]



This must replace the registration of our **SideDrawerRenderer**

## Create Custom Transition in iOS

In iOS the creation of custom animation effect is very similar to the process in Android. The steps are the same but are executed in a bit different way.

When creating the custom renderer users should override only the **CreateCustomTransition()** method. Here is a sample implementation:

	public class CustomSideDrawerRenderer : SideDrawerRenderer
	{
	    protected override TKSideDrawerTransition CreateCustomTransition(TKSideDrawer drawer)
	    {
	        return new CustomTransition(drawer);
	    }
	}

Registering the custom renderer can be done by adding the following code in the **AppDelegate.cs** file:

	[assembly: ExportRenderer(typeof(RadSideDrawer), typeof(CustomSideDrawerRenderer))]
