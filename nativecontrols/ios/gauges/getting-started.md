---
title: Getting Started
page_title: Gauges Getting Started
position: 1
---

# Gauges: Getting Started

This quick start tutorial demonstrates how to create a simple gauge view with <code>TKGauge</code>.


## Setting up TKGauge

Now that our project is created and the TelerikUI.framework is added, we can start referencing and using the TelerikUI types:

Open your **ViewController.m** file and add a reference to the chart header file:

    #import <TelerikUI/TelerikUI.h>

Note that starting with Xcode 6 Apple doesn't generate the precompiled headers file automatically. That is why you should add import the UIKit framework before importing TelerikUI:

    #import <UIKit/UIKit.h>

If you are writing Swift, add the same line in your bridging header.

If you are using Xamarin, add a reference to TelerikUI.dll in your project and use the using directive:

    using TelerikUI;


You can start by creating a <code>TKGauge</code> view object in <code>ViewDidLoad()</code> method. TelerikUI supports radial and linear type of gauge. You can instantiate TKRadialGauge by using the following lines:

<snippet id='gauge-radial'/>

<snippet id='gauge-radial-swift'/>

```C#
radialGauge = new TKRadialGauge ();
this.radialGauge.Delegate = new GaugeDelegate ();
this.View.AddSubview (this.radialGauge);
```

TKGauge is created with flexibility in mind. There is few tipes of components - scales, segments and indicators - allowing you to fully customize the overall look and feel.

Let's add scale to TKGauge:

<snippet id='gauge-radial-scale'/>

<snippet id='gauge-radial-scale-swift'/>

```C#
TKGaugeRadialScale scale = new TKGaugeRadialScale (new NSNumber (0), new NSNumber (6));
this.radialGauge.AddScale (scale);
```

<img src="../images/gauges-gettingstarted001.png" />

Now add a segment to the scale:

<snippet id='gauge-segment'/>

<snippet id='gauge-segment-swift'/>

```C#
TKGaugeSegment segment = new TKGaugeSegment (new NSNumber(-10), new NSNumber(18));
segment.Location = 0.56f;
segment.Width = 0.05f;
segment.Width2 = 0.05f;
segment.Cap = TKGaugeSegmentCap.Round;
```

<img src="../images/gauges-gettingstarted002.png" />

Add an indicator to the scale:

<snippet id='gauge-needle'/>

<snippet id='gauge-needle-swift'/>

```C#
TKGaugeNeedle needle = new TKGaugeNeedle();
needle.Width = 3;
needle.TopWidth = 3;
needle.Length = 0.6f;
needle.ShadowOffset = new CGSize(1, 1);
needle.ShadowOpacity = 0.8f;
needle.ShadowRadius = 1.5f;
scale.AddIndicator(needle);
```
		
<img src="../images/gauges-gettingstarted003.png" />

