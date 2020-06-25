---
title: Disable bounce in iOS ListView for Xamarin.Forms
description: 
type: how-to
page_title: Disable ListView bounce on iOS Xamarin
slug: listview-ios-disable-bounce
position: 
tags: listview, xamarin, ios, disale, bounce, bounces
ticketid: 1473448
res_type: kb
---

## Environment
<table>
	<tbody>
		<tr>
			<td>Product Version</td>
			<td>2020.2.624.1</td>
		</tr>
		<tr>
			<td>Product</td>
			<td>ListView for Xamarin Cross-Platform</td>
		</tr>
	</tbody>
</table>


## Description

The purpose of this article is to show you how to disable the listview bounce on iOS. In addition you can also disable the scrolling.

## Solution

The scenario could be achieved using custom renderer for iOS. Create a class inside the iOS project, for example CustomListViewRenderer which inherits from ListViewRenderer. Then override the OnElementchangedMethod and inside it disable the bounces. 

Here is the custom renderer implementation:

```C#
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Foundation;
using ListView.iOS;
using Telerik.XamarinForms.DataControlsRenderer.iOS;
using UIKit;
using Xamarin.Forms;
using Xamarin.Forms.Platform.iOS;

[assembly: ExportRenderer(typeof(Telerik.XamarinForms.DataControls.RadListView), typeof(CustomListViewRenderer))]

namespace ListView.iOS
{
    public class CustomListViewRenderer : Telerik.XamarinForms.DataControlsRenderer.iOS.ListViewRenderer
    {
        protected override void OnElementChanged(ElementChangedEventArgs<Telerik.XamarinForms.DataControls.RadListView> e)
        {
            base.OnElementChanged(e);

            var control = this.Control as TKExtendedListView;
            if(control != null)
            {
                control.Layout.CollectionView.Bounces = false;
				
				// in additiona you can disable the scrolling setting the scrollenabled to false. Check the commened code below:
                //control.Layout.CollectionView.ScrollEnabled = false;
            }
        }
    }
}
```