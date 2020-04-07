---
title: Filtering
page_title: Filtering
description: Check our &quot;Filtering&quot; documentation article for Telerik DataGrid for Xamarin control.
position: 5
slug: datagrid-filtering-overview
---

# Filtering

**RadDataGrid** supports both [programmatic filtering](#programmatic-filtering) and such applied through the UI - [Filtering UI](#filtering-ui). 

## Programmatic Filtering 

Programmatic filtering is achieved by adding different filter descriptors in the **FilterDescriptor** collection of the control. The following descriptor types are supported:

* [**TextFilterDescriptor**](#text-filter-descriptor)
* [**NumericalFilterDescriptor**](#numerical-filter-descriptor)
* [**DateTimeFilterDescriptor**](#datetime-filter-descriptor)
* [**BooleanFilterDescriptor**](#boolean-filter-descriptor)
* [**CompositeFilterDescriptor**](#composite-filter-descriptor)
* [**DelegateFilterDescriptor**](#delegate-filter-descriptor)

All FilterDescriptors are located in the Telerik.XamarinForms.Common.Data namespace:

```XAML
xmlns:common="clr-namespace:Telerik.XamarinForms.Common.Data;assembly=Telerik.XamarinForms.Common"
```

### Text Filter Descriptor

Properties:

* **PropertyName**: Gets or sets the name of the property that is used to retrieve the value to filter by.
* **Operator**: Gets or sets the TextOperator value that defines how the Value member is compared with each value from the items source.
* **Value**: Gets or sets the value used in the comparisons. This is the right operand of the comparison.
* **IsCaseSensitive**: Gets or sets a value that determines whether the text comparisons will be case-sensitive. Default value is true.

To use **TextFilterDescriptor** you need to add its instance to the **RadDataGrid.FilterDescriptors** collection and to set its **PropertyName** property to associate it with the property from your custom objects. Then through the **Operator** and **Value** properties you need to set the filter condition and the value to compare. You can also take advantage of the **IsCaseSensitive** property to determine if the text comparisons will be case-sensitive or not.

<snippet id='datagrid-textfilterdescriptor-xaml'/>
```XAML
<common:TextFilterDescriptor PropertyName="Country"
                             Operator="StartsWith"
                             IsCaseSensitive="False" 
                             Value="En"/>
```

### Numerical Filter Descriptor

Represents a Descriptor which filters by property of numerical data type. It exposes the following properties.

* **PropertyName**: Gets or sets the name of the property that is used to retrieve the value to filter by.
* **Value**: Gets or sets the value used in the comparisons. This is the right operand of the comparison.
* **Operator**: Gets or sets the NumericalOperator value that defines the boolean logc behind the left and right operand comparison.

<snippet id='datagrid-numericalfilterdecsriptor-xaml'/>
```XAML
<common:NumericalFilterDescriptor PropertyName="StadiumCapacity"
                                  Operator="IsLessThan"
                                  Value="80000"/>
```

### DateTime Filter Descriptor

The DateTimeFilterDescriptor is a Descriptor which filters by property of System.DateTime data type. It exposes the following properties:

* **PropertyName**: Gets or sets the name of the property that is used to retrieve the value to filter by.
* **Value**: Gets or sets the value used in the comparisons. This is the right operand of the comparison.
* **Operator**: Gets or sets the NumericalOperator value that defines the boolean logic behind the left and right operand comparison.

<snippet id='datagrid-datetimefilterdescriptor-xaml'/>
```XAML	
<common:DateTimeFilterDescriptor PropertyName="Established"
                                 Operator="IsLessThan"
                                 Value="1900/01/01"/>
```

### Boolean Filter Descriptor

The BooleanFilterDescriptor is a Descriptor which filters by property of System.Boolean data type. It exposes the following properties:

* **PropertyName**: Gets or sets the name of the property that is used to retrieve the value to filter by.
* **Value**: Gets or sets the value used in the comparisons. This is the right operand of the comparison.

<snippet id='datagrid-booleanfilterdescriptor-xaml'/>
```XAML
<common:BooleanFilterDescriptor PropertyName="IsChampion"
                                Value="true"/>
```

### Composite Filter Descriptor

The CompositeFilterDescriptor represents a special FilterDescriptorBase that stores an arbitrary number of other Descriptors instances. The logical AND or OR operator is applied upon all composed filters to determine the result of the PassesFilter routine.

<snippet id='datagrid-compositefilterdescriptor-xaml'/>
```XAML
<common:CompositeFilterDescriptor Operator="And">
	<common:CompositeFilterDescriptor.Descriptors>
		<common:NumericalFilterDescriptor PropertyName="StadiumCapacity"
                                          Operator="IsGreaterThan"
                                          Value="55000"/>
			<common:NumericalFilterDescriptor PropertyName="StadiumCapacity"
                                              Operator="IsLessThan"
                                              Value="85000"/>
	</common:CompositeFilterDescriptor.Descriptors>
</common:CompositeFilterDescriptor>
```

### Delegate Filter Descriptor

The DelegateFilterDescriptor exposes the following property:

* **Filter**: Gets or sets the **IFilter** implementation used to check whether a data item passes the filter or not.

To use a **DelegateFilterDescriptor** you need to create a class that implements the **IFilter** interface which will return the **Key** you want to filter by.

Then you need to add a DelegateFilterDescriptor to the RadDataGrid.FilterDescriptors collection and set its Filter property.

The **CustomFilter** implementation:

<snippet id='datagrid-delegatefilterdescriptor-csharp'/>
```C#
class CustomFilter : IFilter
{
	public bool PassesFilter(object item)
 	{
		if ((item as Club).StadiumCapacity > 60000 && (item as Club).StadiumCapacity <85000)
        {
			return true;
        }
        else
        {
			return false;
        }
	}
}
```

Adding the **DelegateFilterDescriptor** to the **RadDataGrid**:

<snippet id='datagrid-delegatefilterdescriptor-added'/>
```C#
grid.FilterDescriptors.Add(new DelegateFilterDescriptor() { Filter = new CustomFilter()});
```

## Filtering UI

The filtering component(Filtering UI) appears when clicking the options icon on each column's header and it allows the user to easily filter data by column values. The Filtering UI exposes the following property:

* **UserFilterMode**: Defines whether the Filtering UI is enabled/disabled. The available options are *Auto/Enabled/Disabled*. The default value of the UserFilterMode is *Auto*.

The following property is used to enable/disable the filtering of a specific column:

* **CanUserFilter** (bool): Defines a value indicating whether the user can filter the column by using the Filtering UI. 

The appearance of the Filtering UI can be customized by inheriting the **DataGridFilterControlBase** class. For more details on this check [How to customize Filtering UI]({%slug datagrid-howto-customize-filtering-ui%}) article.


## Filtering for Template Column

Filtering for TemplateColumn is available since R2 2020 Official Release. More details how the filtering could be applied to the DataGrid TemplateColumn - check the [Filtering for TemplateColumn]({%slug datagrid-columns-template-column%}#filtering-for-templatecolumn) section from our documentation.

## See Also

- [Grouping]({%slug datagrid-grouping-overview%})
- [Sorting]({%slug datagrid-sorting-overview%})
- [Selection]({%slug datagrid-selection-overview%})
