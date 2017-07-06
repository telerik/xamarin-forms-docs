---
title: Features
page_title: RadSideDrawer Features | Telerik UI for Android Documentation
description: This article walks developers through the complete RadSideDrawer api.
slug: sidedrawer-features
tags: radsidedrawer, features, drawer
position: 3
publish: true
---

## RadSideDrawer: Features

# Using transitions
RadSideDrawer provides many transitions out of the box. Some of them slide the drawer on top of the main content. Others push the main content to the side and so on. Here are a few transitions classes:
PushTransition, FallDownTransition, RevealTransition, SlideAlongTransition, ScaleUpTransition...
The rest can be found in the **com.telerik.android.primitives.widget.sidedrawer.transitions** package.

To set a transition simply create a new instance of the transition of choice and pass it to the drawer.setDrawerTransition() method.
```Java
drawer.setDrawerTransition(new PushTransition());
```

```C#
drawer.DrawerTransition = new PushTransition();
```

Each transition can have a specific duration (setDuration()) and an interpolator (setInterpolator()) that determines the behavior of the animations it encapsulates.
Developers can also listen for the end of the transition by setting a DrawerTransitionEndedListener (addTransitionEndedListener()).

# Adding drawer change listeners

RadSideDrawer exposes notifications for when the drawer is opened, closed, opening and closing. The opened and closed notifications are invoked after the open or close transition has ended whereas
opening and closing are invoked as soon as the close/open operation is started and provide means to cancel the open/close operation. For example:

```Java
drawer.addChangeListener(new DrawerChangeListener() {
		@Override
		public boolean onDrawerOpening(RadSideDrawer drawer) {
			// Return true to cancel opening.
			return false;
		}

		@Override
		public void onDrawerOpened(RadSideDrawer drawer) {

		}

		@Override
		public boolean onDrawerClosing(RadSideDrawer drawer) {
		// Return true to cancel closing.
			return false;
		}

		@Override
		public void onDrawerClosed(RadSideDrawer drawer) {

		}
	});
```

```C#
public class DrawerListener : Java.Lang.Object, IDrawerChangeListener
{
	public void OnDrawerClosed (RadSideDrawer p0)
	{
		
	}

	public bool OnDrawerClosing (RadSideDrawer p0)
	{
		// Return true to cancel closing.
		return false;
	}

	public void OnDrawerOpened (RadSideDrawer p0)
	{
		
	}

	public bool OnDrawerOpening (RadSideDrawer p0)
	{
		// Return true to cancel opening.
		return false;
	}
}

drawer.AddChangeListener (new DrawerListener());
```

# Customizing the fade layer

RadSideDrawer's fade layer can be swapped with any View object. From simple views with a background to complex custom renderings if required. The fade layer can be changed by calling **drawer.setFadeLayer();** with the
specified view. When the drawer is opened, this fade layer is stretched over the main content and animated to an opacity of 0.6 by default.

# Setting the drawer location and using gestures

The side drawer can be shown from all edges of the screen, not just the left side. For example:

```Java
drawer.setDrawerLocation(DrawerLocation.RIGHT);
```

```C#
drawer.DrawerLocation = DrawerLocation.Right;
```

The gesture can only be initiated from the edge of the screen and the touchable area can be tweaked with the setTouchTargetThreshold() method. It accepts the number of pixels from the screen that will be treated as touchable. By
default it is **20dp**.

```Java
drawer.setTouchTargetThreshold(Util.getDimen(TypedValue.COMPLEX_UNIT_DIP, 30));
```

```C#
drawer.TouchTargetThreshold = (int)Com.Telerik.Android.Common.Util.GetDimen ((int)Android.Util.ComplexUnitType.Dip, 30.0f);
```

Also once the drawer is opened, developers decide if they want the drawer closed on outside tap or not:

```Java
drawer.setTapOutsideToClose(true);
```

```C#
drawer.TapOutsideToClose = true;
```

Another way to close the drawer is to use the back button on the device.
Cosing on back press can be enabled or disabled with setCloseOnBackPress().

```Java
drawer.setCloseOnBackPress(true);
```

```C#
drawer.CloseOnBackPress = true;
```

Finally the side drawer can be locked in place. It can be locked in both the closed and opened states. The lock only affects screen gestures. The lock can be **bypassed** through code if the developer decides to call setIsOpen().

```Java
drawer.setIsLocked(true);
```

```C#
drawer.IsLocked = true;
```

# Setting drawer size

The drawer content by default is left to be auto sized in the main dimension. The main dimension is dictated by the drawer location. For example if the drawer is on the left or right the main dimension would the x axis (the width),
otherwise it would be the y axis (height). The content by default will take as much space as it needs. By set calling setDrawerSize(); with a number different than 0 the drawer content will be arranged with the provided size.
Setting the drawer size back to 0 reverts the drawer content to being auto sized.

```Java
drawer.setDrawerSize(Util.getDimen(TypedValue.COMPLEX_UNIT_DIP, 300));
```

```C#
drawer.DrawerSize = (int)Com.Telerik.Android.Common.Util.GetDimen ((int)Android.Util.ComplexUnitType.Dip, 300.0f);
```

# Toolbar/ActionBar integration

RadSideDrawer can be used with the native Toolbar and ActionBar components. To make the connection between RadSideDrawer and the toolbar developers need to use the SideDrawerToggle class.
For example:

```Java
SideDrawerToggle drawerToggle = new SideDrawerToggle(drawer, toolbar);
// To use SideDrawerToggle with ActionBar instead of Toolbar, the "new SideDrawerToggle(drawer)" constructor must be used and
// the activity must be an ActionBarActivity.
```

```C#
SideDrawerToggle drawerToggle = new SideDrawerToggle(drawer, toolbar);
```

Then the drawerToggle variable should be kept in memory for the toolbar/drawer interaction to remain automatic.
Developers also have to call toggle.setDrawerOpenIcon() with a drawable or a resource id so that the toolbar/action bar displays
the proper drawer toggle icon (commonly a hamburger icon).

>SideDrawerToggle can only be used with the Toolbar class from the support library. android.support.v7.widget.Toolbar to be more specific.