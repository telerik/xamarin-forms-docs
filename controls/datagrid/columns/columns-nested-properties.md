---
title: Nested Properties
page_title: Nested Properties Support
position: 1
slug: datagrid-nested-properties
---

# Nested Properties Support

With R3 2018 RadDataGrid provides support for nested properties - this allows binding of complex objects to the grid columns.

In addition to the nested properties support, the RadDataGrid control provides the following property:  
* **EnableLiveUpdates***(bool)*: Allows the DataGrid to listen for changes of the nested properties' values. By default it is *true*. 

>tip In case you don't need live updates of the nested properties, you could disable this feature due to optimization purposes.

## Example

Here is an example how to implement a Nested Properties in DataGrid: 

Use the following snippet to declare a RadDataGrid in XAML: 
<snippet id='datagrid-nested-property-xaml'/>

Where the **telerikGrid** namespace is the following:

```xml
xmlns:telerikGrid="clr-namespace:Telerik.XamarinForms.DataGrid;assembly=Telerik.XamarinForms.DataGrid"
```

The **ViewModel** class is declared as following:

<snippet id='datagrid-nested-property-viewmodel'/>
	
Create a class **Person** that inherits from the NotifyPropertyChangedBase class

<snippet id='datagrid-nested-property-person'/>

and uses the following namespace:

```C#
using Telerik.XamarinForms.Common;
```

then create another class **Address** that also inherits from the NotifyPropertyChangedBase class and uses the same namespace

<snippet id='datagrid-nested-proprty-address'/>

Here is how tha DataGrid looks:

![DataGrid Nested Properties](../images/datagrid-nested-properties.png)

>important An example how to apply nested properties to RadDataGrid control can be found in the DataGrid/NestedProperty folder of the [SDK Samples Browser application]({%slug developer-focused-examples%}).

## See Also

-[Picker Column]({%slug datagrid-columns-picker-column %})
-[Template Column]({%slug datagrid-columns-template-column %})
-[Text Column]({%slug datagrid-columns-text-column %})
