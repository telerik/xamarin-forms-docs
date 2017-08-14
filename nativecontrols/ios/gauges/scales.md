---
title: Scales
page_title: Gauges Scales
position: 3
---

# Gauges: Scales

<code>TKGauge</code>'s component TKGaugeScale provides two types of visual representation:

- Radial

<snippet id='gauge-radial-scale'/>

<snippet id='gauge-radial-scale-swift'/>

```C#
TKGaugeRadialScale scale = new TKGaugeRadialScale (new NSNumber (0), new NSNumber (6));
this.radialGauge.AddScale (scale);
```

- Linear

<snippet id='gauge-linear-scale'/>

<snippet id='gauge-linear-scale-swift'/>

```C#
TKGaugeLinearScale scale1 = new TKGaugeLinearScale ();
scale1.Range = new TKRange (new NSNumber(34), new NSNumber(40));
scale1.Ticks.Position = TKGaugeTicksPosition.Inner;
this.linearGauge.AddScale(scale1);
```

The scales appereance can be easily customized by adding different segments to it. 

<snippet id='gauge-segment-add'/>

<snippet id='gauge-segment-add-swift'/>

```C#
TKGaugeSegment blueSegment = new TKGaugeSegment ();
blueSegment.Range = new TKRange (new NSNumber(34), new NSNumber(36));
blueSegment.Location = 0.70f;
blueSegment.Width = 0.08f;
scale1.AddSegment(blueSegment);
```

<code>TKGauge</code> also allows applying multiple scales on a single gauge.

<code>TKGaugeScale</code> has various properties for customizing its ticks and labels. 

So, let's add a second scale and customize both:

<snippet id='gauge-second-add'/>

<snippet id='gauge-second-add-swift'/>

```C#
TKGaugeLinearScale scale2 = new TKGaugeLinearScale ();
scale2.Range = new TKRange (new NSNumber(93.2), new NSNumber(104));
scale2.Ticks.Position = TKGaugeTicksPosition.Outer;
scale2.Ticks.MajorTicksCount = 6;
scale2.Ticks.MinorTicksCount = 20;
scale2.Labels.Position = TKGaugeLabelsPosition.Outer;
scale2.Labels.LabelFormat = "%.01f";
scale2.Labels.Count = 6;
this.linearGauge.AddScale(scale2);

for(int i = 0; i< this.linearGauge.Scales.Length; i++) {
                
    TKGaugeLinearScale scale = this.linearGauge.Scales[i] as TKGaugeLinearScale;
    scale.Stroke = new TKStroke(UIColor.Gray, 2);
    scale.Ticks.MajorTicksStroke = new TKStroke(UIColor.Gray, 1);
    scale.Labels.Color = UIColor.Gray;
    scale.Ticks.Offset = 0;
    scale.Offset = i*0.12f + 0.60f;
}
```

<img src="../images/gauges-segments001.png">