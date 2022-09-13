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

```C#
public class SumIfKeyLookUp : IKeyLookup
{
    public object GetKey(object instance) => ((Data)instance).Price; 
}
```

**2.** Then, declare a class that inherits from the `IAggregateFunction` interface. This class will contain our logic for the SumIf function which we will later implement through XAML:

```C#
public class SumIfAggregateFunction : IAggregateFunction
{
    private double value;
    public double GreaterThanValue { get; set; }

    public object GetValue() => $"SumIf (Price > {this.GreaterThanValue}): " + string.Format("{0:C}", this.value);

    public IAggregateFunction Clone() => new SumIfAggregateFunction() { GreaterThanValue = this.GreaterThanValue };

    public void Accumulate(object value)
    {
        var price = (double)value;
        if (price > this.GreaterThanValue)
        {
            this.value += price;
        }
    }

    public void Merge(IAggregateFunction aggregateFunction)
    {
        var myFunction = aggregateFunction as SumIfAggregateFunction;
        if (myFunction != null)
        {
            this.value += myFunction.value;
        }
    }
}
```

**3.** DataGrid ItemsSource:

```C#
this.dataGrid.ItemsSource = new List<Data>
{
    new Data { Name = "KeyBoard", Price = 24.6, DeliveryPrice = 2, Quantity = 32 },
    new Data { Name = "Mouse", Price = 30.9, DeliveryPrice = 2, Quantity = 54 },
    new Data { Name = "Video Card", Price = 760.7, DeliveryPrice = 3, Quantity = 17 },
    new Data { Name = "Motherboard", Price = 210.4, DeliveryPrice = 4, Quantity = 12 },
    new Data { Name = "SSD", Price = 42.9, DeliveryPrice = 3, Quantity = 88 },
    new Data { Name = "RAM", Price = 50, DeliveryPrice = 4, Quantity = 126 }
};
```

**4.** Declare the `DelegateAggregateDescriptor` in XAML.

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