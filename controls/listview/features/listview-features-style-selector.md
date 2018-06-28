---
title: Style Selector
page_title: Style Selector
position: 10
slug: listview-features-style-selector
---

# Style Selector

The **RadListView** component exposes conditional styling feature. It allows users to apply a different **Style** to each item depending on a specific condition. The following methods are related to the style selection feature: 
	
- **SelectStyle** (*object*, *ListViewStyleContext*): Select the style on the item and its context. 
- **OnSelectStyle** (*object*, *ListViewStyleContext*): Called when the style is applied to the item and its context.


## Example

The following example will demonstrate how to apply the **Conditional Styling** in the RadlistView control.

Lets add the RadlistView component and create a simple data.

Here is an example how to setup the ListView control:

<snippet id='listview-gettingstarted-listview-xaml'/>
<snippet id='listview-gettingstarted-listview-csharp'/>

and lets create a simple data for the ListView component:

<snippet id='listview-gettingstarted-source'>


We can set a different style on item using the ListViewStyleSelector class. The method that is related with this functionality is **OnSelectStyle** method. We can use it to change the SelectStyle of the items in the RadListView.

You can create a class deriving from the **ListViewStyleSelector** class and you can override its **OnSelectStyle** method. A sample implementation is shown below: 

<snippet id='listview-features-onselectstyle'/>

## Conditional Styling

This is how the **RadListView** control will look like when conditional styling is used.

![StyleSelector](images/listview-features-style-selector.png "Style Selector")

>important **SDK Browser** application contains an example that shows StyleSelector feature in RadListView cotrol. You can find the application in the **Examples** folder of your local **Telerik UI for Xamarin** installation.

## See Also

- [Selection]({%slug listview-features-selection%})
- [Styling]({%slug listview-features-styling%})
- [Reordering]({%slug listview-features-reorder-items%})
