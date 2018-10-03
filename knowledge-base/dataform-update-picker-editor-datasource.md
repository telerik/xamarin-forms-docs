---
title: Dynamically Update DataForm Editor Data Sources
description: How to dynamically add or remove items from a PickerEditor or AutoCompleteEditor at runtime.
type: how-to
page_title: Dynamically Update DataForm Editor Data Sources
slug: Dynamically-Update-DataForm-Editor-Data-Sources
position: 
tags: DataForm, Editors, PropertyDataProvider, PickerEditor, AutoCompleteEditor, XamarinForms, XAML, Xamarin
ticketid: 1344967
res_type: kb
---

## Environment
<table>
	<tr>
		<td>Product Version</td>
		<td>2018.3.912.1</td>
	</tr>
	<tr>
		<td>Product</td>
		<td>DataForm for Xamarin Cross-Platform</td>
	</tr>
	<tr>
		<td>Xamarin Technology</td>
		<td>Xamarin.Forms</td>
	</tr>
</table>


## Description
This article will show you how to dynamically add or remove items from a PickerEditor or AutoCompleteEditor at runtime. First, we'll need to understand how to the DataForm works with data sources for picker type editors. 

The RadDataForm uses a `PropertyDataProvider` based class to fetch data items for editors that need an items source.
This is accomplished by using the **DataSourceKey** property decoration.

Using this Student model as example, let's say we want a **PickerEditor** with a list of campus locations. Therefore, the Campus property would have a DataSourceKey attribute:

```csharp
public class Student
{
    [DataSourceKey("CampusLocationsSource")]
    public string Campus { get; set; }
}
```

This DataSourceKey is used in the PropertyDataProvider class to determine what items to use:

```csharp
public class MyDataFormDataProvider : PropertyDataSourceProvider
{
    public override IList GetSourceForKey(object key)
    {
        if (key.ToString() == "CampusLocationsSource")
        {
            return new List<string> { "Boston", "NYC", "Dallas" };
        }

        return null;
    }
}
```


This loading only happens once, when the DataForm loads and it is not  possible to add new items after the picker has been rendered. 

## Solution

To be able to dynamically update PickerEditor's items, you can redesign where the data comes.  Instead of returning an explicitly defined list the PropertyDataProvider, you can move the responsibility of the data source to a separate class or service and return items from the service. 

### Example
In this example, we'll use a `CampusLocationsDataService` class to provide the data. It has two public methods:

- **GetCampusLocations** - Returns the current locations list
- **AddCampusLocation** - Adds an item to the locations list

```csharp
public class CampusLocationsDataService
{
    private static CampusLocationsDataService _instance;
    private readonly List<string> _locations;
    
    public CampusLocationsDataService()
    {
        _locations = new List<string> { "Boston", "NYC", "Dallas", "Chicago" };
    }

    public static CampusLocationsDataService Instance => _instance ?? (_instance = new CampusLocationsDataService());

    // This method is called by the DataForm's PropertyDataProvider
    public List<string> GetCampusLocations()
    {
        return _locations;
    }

    public void AddCampusLocation(string location)
    {
        if(!_locations.Contains(location))
            _locations.Add(location);
    }
}
```

Next, the **GetSourceForKey** method in the  `MyDataFormDataProvider` class can use the data service's **GetCampusLocations** method:

```csharp
public class MyDataFormDataProvider : PropertyDataSourceProvider
{
    public override IList GetSourceForKey(object key)
    {
        if (key.ToString() == "CampusLocationsSource")
        {
            return CampusLocationsDataService.Instance.GetCampusLocations();
        }

        return null;
    }
}
```


Finally, in the View, to demonstrate updating the data source, we'll use a Button clicked event handler to add an item to the data service and then reload the DataForm.

#### XAML

```xml
<ContentPage xmlns="http://xamarin.com/schemas/2014/forms"
             xmlns:x="http://schemas.microsoft.com/winfx/2009/xaml"
             xmlns:telerikInput="clr-namespace:Telerik.XamarinForms.Input;assembly=Telerik.XamarinForms.Input"             x:Class="PopulatorButton.Portable.MainPage">
    <Grid>
        <Grid.RowDefinitions>
            <RowDefinition Height="*" />
            <RowDefinition Height="Auto" />
        </Grid.RowDefinitions>

        <telerikInput:RadDataForm x:Name="dataForm" />

        <telerikInput:RadButton Text="Add Campus Location" Clicked="AddCampusButton_OnClicked" Grid.Row="1"/>
    </Grid>
</ContentPage>
```

#### Code Behind
```csharp
public partial class MainPage : ContentPage
{
    public MainPage()
    {
        InitializeComponent();
        
        dataForm.Source = new Student();
        dataForm.RegisterEditor(nameof(Student.Campus), EditorType.PickerEditor);
        dataForm.PropertyDataSourceProvider = new MyDataFormDataProvider();
    }


    private void AddCampusButton_OnClicked(object sender, EventArgs e)
    {
        // Add the item to the data source
        CampusLocationsDataService.Instance.AddCampusLocation("Paris");

        // Reload the DataForm
        dataForm.Reload();
    }
}
```


If you run the application, the initial **PickerEditor** will show three items:
- "Boston"
- "NYC"
- "Dallas"

After you click the button, the location "Paris" is added to the data source:

```csharp
CampusLocationsDataService.Instance.AddCampusLocation("Paris");
```


Finally, the RadDataForm's **Reload** method is called:

```csharp
dataForm.Reload()
```

This forces the DataForm to recreate the editors, which causes the **PropertyDataProvider** calling the `GetCampusLocations` method again and the PickerEditor will now have the lastet items:

- "Boston"
- "NYC"
- "Dallas"
- **"Paris"**

 


## See Also
also goes here
