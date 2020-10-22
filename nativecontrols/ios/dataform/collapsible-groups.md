---
title: Collapsible Groups
page_title: DataForm Collapsible Groups | Telerik UI for Xamarin.iOS Documentation
description: Check our Collapsible Groups documentation article for Telerik DataForm for Xamarin.iOS.
position: 4
---

## DataForm for Xamarin.iOS: Collapsible Groups

TKDataForm supports expand/collapse behavior for its property groups when the group's header is tapped. To allow expanding and collapsing groups, you should implement <code>UpdateGroupView</code> of <code>TKDataFormDelegate</code> and set the <code>Collapsible</code> property of the group view. In addition, you can customize the group header through the TitleView.Style property of the GroupView.

Check a sample implementation of UpdateGroupView below:

```C#
class MyDataFormDelegate : TKDataFormDelegate
{	
	public override void UpdateGroupView (TKDataForm dataForm, TKEntityPropertyGroupView groupView, uint groupIndex)
	{
		groupView.Collapsible = true;
		groupView.TitleView.Style.SeparatorColor = new TKSolidFill (new UIColor (0.784f, 0.780f, 0.8f, 1.0f));
	}
}
```
Just need to set the <code>MyDataFormDelegate</code> to TKDataForm instance:

```C#
dataForm.Delegate = new MyDataFormDelegate();
```

<img src="../images/dataform-collapsiblegroups001.png" />
