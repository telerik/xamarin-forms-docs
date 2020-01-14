---
title: Dynamic PropertyDataSource
page_title: Dynamic PropertyDataSource
slug: dataform-propertydatasourceprovider
position: 6
---

# Dynamic PropertyDataSource

Some DataForm Editors such as PickerEditor and SegmentedEditor allow the app user to choose a value from a predefined list of values. In this case RadDataForm provides a mechanism to set a data source to these editors through the **PropertyDataSourceProvider**. 

With R1 2020 release of Telerik UI for Xamarin RadDataForm provides means to refresh the data source of its Picker and Segmented editors. There are two ways to update the data source of a certain editor - either use an ObservableCollection, so that any changes are reflected to the underlying data source, or manually update it through the UpdatePropertyDataSource method. Both approaches are described in details in the next sections.

>tip Dynamic PropertyDataSourceProvider updates are supported only in **Manual** CommitMode. For more details on the commit modes of RadDataForm check [Validate and Commit]({%slug dataform-validate-and-commit%}) topic.

## Using ObservableCollection

Let's have the following source item for the DataForm:

<snippet id='dataform-propertydatasource-customer' />

For the *Country* and *City* properties you can use PickerEditors in order to provide a list the user can choose from. The cities will depend on the chosen Country, meaning that you would need to refresh the City PickerEditor every time the selected Country is changed.

Let's continue with the implementation - add the DataForm definition:

<snippet id='dataform-propertydatasource-observablecollection-xaml' />

Configure the DataForm Editors and set PropertyDataSourceProvider:

<snippet id='dataform-propertydatasource-setup' />

Next, create the LocationProvider class which inherits from PropertyDataSourceProvider and defines two ObservableCollections that should hold the Countries and Cities values:

<snippet id='dataform-propertydatasource-locationprovider' />

Lastly, add the EditorValueChanged event handler and in it update the City PickerEditor's Source depending on the selected Country:

<snippet id='dataform-propertydatasource-updatecities' />

## Using UpdatePropertyDataSource method

Through the UpdatePropertyDataSource method of the DataForm you can manually refresh the editor DataSource. The method received one argument - the name of the property corresponding to the editor.

Let's have the same scenario as in the first section with dependent Country-City Picker editors.  Here is the DataForm source class:

<snippet id='dataform-updatepropertydatasource-customer' />

And the DataForm definition:

<snippet id='dataform-propertydatasource-method-xaml' />

Next, setup the DataForm editors and define PropertyDataSourceProvider:

<snippet id='dataform-propertydatasource-method-setup' />

Here is the LocationProvider class definition - note that Countries and Cities are defined as Lists:

<snippet id='dataform-updatepropertydatasource-locationprovider' />

Lastly, add the EditorValueChanged event handler and in it call the **UpdatePropertyDataSource** method to force the update of the City PickerEditor data source:

<snippet id='dataform-updatepropertydatasource-event' />

## See Also

- [DataForm Layouts]({% slug dataform-group-layouts %})
- [Validate and Commit]({% slug dataform-validate-and-commit %})