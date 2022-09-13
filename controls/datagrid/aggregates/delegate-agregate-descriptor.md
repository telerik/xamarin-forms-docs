---
title: Delegate Aggregate Descriptor
page_title: Xamarin DataGrid Documentation - Delegate Aggregate Descriptor
description: "Check our Delegate Aggregate Descriptor documentation article for Telerik DataGrid for Xamarin control."
position: 2
slug: datagrid-delegate-aggregate-descriptor
---

# DelegateAggregateDescriptor

The `DelegateAggregateDescriptor` allows you to define property look-up logic and a custom function that are applied over the property values of the DataGrid, which accumulates an aggregated result based on the component data.

To set up the `DelegateAggregateDescriptor`, use the following properties:

* `ValueLookup`&mdash;Defines an `IKeyLookup` instance, which retrieves the value from the underlying `ViewModel` that is used for computing the aggregated value.
* `Function`&mdash;Defines an `IAggregateFunction` instance that performs the aggregation of the values as specified by the `ValueLookup` property.
* `Format`&mdash;Defines the string format that will be applied over the aggregated value.

The following example uses the `DelegateAggregateDescriptor` and a custom implementation for a `SumIf` function which sums the values in a range that meet a certain criteria:

**1.** First, create a class that inherits from the `IKeyLookup` interface. It will return the values of a Price property declared in our business model that is of type double.

<snippet id='datagrid-delegate-aggregate-key'/>

**2.** Then, declare a class that inherits from the `IAggregateFunction` interface. This class will contain our logic for the SumIf function which we will later implement through XAML:

<snippet id='datagrid-delegate-aggregate-function'/>

**3.** Declare the `DelegateAggregateDescriptor` in XAML.

```XAML
<telerikDataGrid:RadDataGrid x:Name="dataGrid"
                        UserGroupMode="Disabled"
                        AutoGenerateColumns="False"
                        UserEditMode="Cell"
                        ShowColumnFooters="True">
    <telerikDataGrid:RadDataGrid.Columns>
        <telerikDataGrid:DataGridTextColumn PropertyName="Name" />
        <telerikDataGrid:DataGridNumericalColumn PropertyName="Price"
                                            CellContentFormat="{}{0:C}">
            <telerikDataGrid:DataGridNumericalColumn.AggregateDescriptors>
                <telerikCommon:DelegateAggregateDescriptor>
                    <telerikCommon:DelegateAggregateDescriptor.ValueLookup>
                        <local:SumIfKeyLookUp/>
                    </telerikCommon:DelegateAggregateDescriptor.ValueLookup>
                    <telerikCommon:DelegateAggregateDescriptor.Function>
                        <local:SumIfAggregateFunction GreaterThanValue="100"/>
                    </telerikCommon:DelegateAggregateDescriptor.Function>
                </telerikCommon:DelegateAggregateDescriptor>
            </telerikDataGrid:DataGridNumericalColumn.AggregateDescriptors>
        </telerikDataGrid:DataGridNumericalColumn>
    </telerikDataGrid:RadDataGrid.Columns>
</telerikDataGrid:RadDataGrid>
```

And the namespaces used:

```XAML
xmlns:telerikDataGrid="clr-namespace:Telerik.XamarinForms.DataGrid;assembly=Telerik.XamarinForms.DataGrid" 
xmlns:telerikCommon="clr-namespace:Telerik.XamarinForms.Common.Data;assembly=Telerik.XamarinForms.Common"
```

## See Also

- [Property Aggregate Descriptor]({%slug datagrid-property-aggregate-descriptor%})