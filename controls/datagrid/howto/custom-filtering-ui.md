---
title: Customize the Filtering UI
page_title: Xamarin DataGrid Documentation | Customize the Filtering UI
description: Check our &quot;Customize the Filtering UI&quot; documentation article for Telerik DataGrid for Xamarin control.
position: 1
slug: datagrid-howto-customize-filtering-ui
---

# How to Customize the Filtering UI #



You are free to customize the appearance of the filtering component which appears when clicking the options icon on each column's header. In order to create a custom filtering UI, you need to inherit from the **DataGridFilterControlBase** class. This article will guide you through the process of creating a custom control that will be used for applying the filtering. **Figure 1** shows the default appearance of the functionality

#### Figure 1: Default appearance of the filtering UI
![Default Filtering](../images/datagrid_defaultfiltering.png)


#### 1. The first step is to create the custom Control which will inherit from the **DataGridFilterControlBase** class:

<snippet id='datagrid-customfiltering-control-xaml'/>

<snippet id='datagrid-customfiltering-control-cs'/>

You should override the required methods as shown in the C# snippet above.

#### 2. Eventually, you need to set the already created component as a filtering control for the column you need to update. This is done by creating a custom **DataGridCommand**:

<snippet id='datagrid-customfiltering-customcommand-cs'/>

**Figure 2** shows the appearance of the control once the custom filtering control is set.

#### Figure 2: Appearance of the Filtering UI after applying the custom control
![Custom Filtering](../images/datagrid_customfiltering.png)

>important You can review an actual sample that shows how to achieve the functionality in the **Examples/DataGrid/FilteringUI** folder from the **SDK Samples Browser** application.

## See Also

* [DataGrid Filtering]({%slug datagrid-filtering-overview%})
* [DataGrid Grouping]({%slug datagrid-grouping-overview%})
