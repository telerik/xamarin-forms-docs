---
title: Item Animation
page_title: RadListView Item Animation | Telerik UI for Xamarin.Android Documentation
description: An article about the item animations in RadListView for Android. This article demonstrates the different animations that can be used with RadListView.
slug: listview-itemanimations
tags: radlistview, animations, list
position: 5
publish: true
---

## ListView for Xamarin.Android: Item Animations

As **RadListView** extends **RecyclerView** it provides the same item animation mechanism. Namely &mdash; you can use the **setItemAnimator(ItemAnimator)** method to change the animator that is used.
The item animations are played each time an item is added to the list or when it is removed.
You can extend the **ItemAnimator** class and implement you own animator or use one of those that we have implemented: Fade, Slide and Scale.

## Getting Started

You can easily change that **DefaultItemAnimator** by the **setItemAnimator(ItemAnimator)**. The animators that are implemented are:

* **FadeItemAnimator**: This animator provides fading of the items that are added or removed.
* **SlideItemAnimator**: With this animator the items that are added or removed will slide in and out from the edges of the list view.
* **ScaleItemAnimator**: With this animator the items that are added or removed will gradually change their scale.

Note that this animations will be played when items are added or removed (for example by calling adapter's **add** or **remove** methods) and not when the items are loaded to populate the initial list.

## Fade

Here's how we can add a **FadeItemAnimator** to a list view instance:


```C#
FadeItemAnimator fadeItemAnimator = new FadeItemAnimator ();
listView.SetItemAnimator (fadeItemAnimator);
```

In order to see the effect, you can add a button somewhere and use it to add another item to the list by adapter's **add()** method.

By default the items will fade from `0` when they appear and fade to `0` when they disappear. You can change this by using FadeItemAnimator's **setAlpha(float)** method. The alpha value can be between `0` and `1`, where `0` means 
full transparency and `1` means no transparency.

## Slide

Here's how we can add a **SlideItemAnimator** to a list view instance:


```C#
SlideItemAnimator slideItemAnimator = new SlideItemAnimator ();
listView.SetItemAnimator (slideItemAnimator);
```

In order to see the effect, you can add a button somewhere and use it to add another item to the list by adapter's **add()** method.

By default the items will slide from and to the right. You can change this by using SlideItemAnimator's **setAnimateInDirection(int)** and **setAnimateOutDirection(int)**. Here are the constants that you can use:
SlideItemAnimator.DIRECTION_LEFT, SlideItemAnimator.DIRECTION_TOP, SlideItemAnimator.DIRECTION_RIGHT, SlideItemAnimator.DIRECTION_BOTTOM.

## Scale

Here's how we can add a **SlideItemAnimator** to a list view instance:


```C#
ScaleItemAnimator scaleItemAnimator = new ScaleItemAnimator ();
listView.SetItemAnimator (scaleItemAnimator);
```

In order to see the effect, you can add a button somewhere and use it to add another item to the list by adapter's **add()** method.

By default the items will scale from `0.3f` when you add them and to `0.3` when you remove them. The scale will be applied to both dimensions of the item (height and width). 
You can change these values by using ScaleItemAnimator's 
**setScaleX(float)** and **setScaleY(float)** methods. It you set one of the scales to `1.0f`, this means that the item will not scale at all in this dimension.

## Sets

You can use the **ItemAnimatorSet** class to combine the animators. Additionally the animators have a **setType** method that allows you to define whether an animator will be used for animation when an item is added or 
removed or both. Here's how to include use scale animator when an item is added and slide animator when an item is removed.


```C#
ScaleItemAnimator scaleItemAnimator = new ScaleItemAnimator();
scaleItemAnimator.Type = ListViewItemAnimator.Add;

SlideItemAnimator slideItemAnimator = new SlideItemAnimator();
slideItemAnimator.Type = ListViewItemAnimator.Remove;

ItemAnimatorSet itemAnimatorSet = new ItemAnimatorSet();
itemAnimatorSet.AddAnimator(scaleItemAnimator);
itemAnimatorSet.AddAnimator(slideItemAnimator);

listView.SetItemAnimator(itemAnimatorSet);
```