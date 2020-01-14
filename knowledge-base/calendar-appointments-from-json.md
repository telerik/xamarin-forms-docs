---
title: Load calendar appoinments data from JSON
description: deserialize appointment objects from JSON file
type: how-to
page_title: RadCalendar appointment from JSON
slug: appointment-from-json
position: 
tags: calendar, appointment, JSON, deserialize, xamarin, telerik ui for xamarin, events, newtonsoft
ticketid: 1417911
res_type: kb
---

## Environment
<table>
    <tbody>
	    <tr>
	    	<td>Product Version</td>
	    	<td>2019.3.1004.1</td>
	    </tr>
	    <tr>
	    	<td>Product</td>
	    	<td>Calendar for Xamarin</td>
	    </tr>
    </tbody>
</table>


## Description

This article shows how to deserialize appointment objects from JSON.

## Solution

First, download NuGet packages for NewtonSoft library. More information about NewtonSoft can be found [here](https://www.newtonsoft.com/json).

Create new JSON file with name "Source.json" to our project and change its Build Action to "Embedded resource".

Here is a sample how our JSON file is stuctured.

```JSON
[
  {
    "Title": "Meeting with Tom",
    "Detail": "Sea Garden",
    "StartDate": "2019-10-07T00:00:00Z",
    "EndDate": "2019-10-07T01:00:00Z",
    "Color":  "Red",
    "IsAllDay": true
  },
  {
    "Title": "Lunch with Sara",
    "Detail": "Restaurant",
    "StartDate": "2019-10-08T00:00:00Z",
    "EndDate": "2019-10-08T01:00:00Z",
    "Color": "Blue",
    "IsAllDay": true
  },
  {
    "Title": "Elle Birthday",
    "StartDate": "2019-10-09T00:00:00Z",
    "EndDate": "2019-10-09T01:00:00Z",
    "Color": "Green",
    "IsAllDay": false
  }
]
```

Add the RadCalendar in the Main.xaml file.

```XAML
<telerikInput:RadCalendar x:Name="calendar"/>
```

After that lets create a class that will convert inconsistent JSON data like Colors.

```C#
public class AppointmentJsonConverter : JsonConverter<Appointment>
{
    public override Appointment ReadJson(JsonReader reader, Type objectType, Appointment existingValue, bool hasExistingValue, JsonSerializer serializer)
    {
        JObject jObject = JObject.Load(reader);
        var title = jObject["Title"].Value<string>();
        String detail = null;
        if (jObject["Detail"] != null)
        {
            detail = jObject["Detail"].Value<string>();
        }
           
        var startDate = jObject["StartDate"].Value<DateTime>();
        var endDate = jObject["EndDate"].Value<DateTime>();

        var colorTypeConverter = new ColorTypeConverter();
        var color = (Color)colorTypeConverter.ConvertFromInvariantString(jObject["Color"].Value<string>());

        return new Appointment()
        {
            Title = title,
            Detail = detail,
            StartDate = startDate,
            EndDate = endDate,
            Color = color
        };
    }

    public override void WriteJson(JsonWriter writer, Appointment value, JsonSerializer serializer)
    {
        throw new NotImplementedException();
    }
}
```
 
Finally, create a method named "GetJsonData()" which uses NewtonSoft library and deserializes the appointment objects in it.

```C#
public partial class MainPage : ContentPage
{
    public MainPage()
    {
        InitializeComponent();
        this.GetJsonData();
    }

    private void GetJsonData()
    {
        string jsonFileName = "Source.json";
        ObservableCollection<Appointment> objAppointmentList = new ObservableCollection<Appointment>();
        var assembly = typeof(MainPage).GetTypeInfo().Assembly;
        Stream stream = assembly.GetManifestResourceStream($"{assembly.GetName().Name}.{jsonFileName}");
        using (var reader = new System.IO.StreamReader(stream))
        {
            var jsonString = reader.ReadToEnd();
            objAppointmentList = JsonConvert.DeserializeObject<ObservableCollection<Appointment>>(jsonString, new AppointmentJsonConverter());
        }
        this.calendar.AppointmentsSource = objAppointmentList;
    }
}
```



