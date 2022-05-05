---
title: Calendar appointment rounded corner
description: create rounded corners in calendar appointments in day view or multiday view
type: how-to
page_title: Appointments with rounded corners
slug: calendar-appointment-rounded-corners
position: 
tags: calendar, appointments, rounded corners
ticketid: 1563999
res_type: kb
---

## Environment
<table>
	<tbody>
		<tr>
			<td>Product Version</td>
			<td>2022.1.331.1</td>
		</tr>
		<tr>
			<td>Product</td>
			<td>Calendar for Xamarin Cross-Platform</td>
		</tr>
	</tbody>
</table>


## Description

This article explains how to apply corner radius to calendar appointments in day view or multiday view modes. 

## Solution

1. Use [Calendar AppointmentTemplate]({%slug calendar-appointments-template%}) feature.

>important The AppointmentContentTemplate property is applied to the appointment content, not to the template itself, and the border corner radius is applied only to the content inside the template. 

1. Add Border inside the template and set corner radious to the border. The appointment template is defined inside the page's resources.

 ```XAML
 <ContentPage.Resources>
        <ResourceDictionary>
            <!-- >> calendar-appointments-template-selector -->
            <local:RoundedAppointmentTemplateSelector x:Key="RoundedAppointmentTemplateSelector">
                <local:RoundedAppointmentTemplateSelector.AllDay>
                    <DataTemplate>
                        <primitives:RadBorder BackgroundColor="{Binding MainBackgroundColor}" 
                                                  CornerRadius="5"
                                                  BorderColor="Black">
                            <Label Text="{Binding Title}" FontSize="16" TextColor="Black"/>
                        </primitives:RadBorder>
                    </DataTemplate>
                </local:RoundedAppointmentTemplateSelector.AllDay>
                <local:RoundedAppointmentTemplateSelector.NotAllDay>
                    <DataTemplate>
                        <primitives:RadBorder BackgroundColor="{Binding MainBackgroundColor}" 
                                              CornerRadius="5">
                            <Grid>
                                <Grid.ColumnDefinitions>
                                    <ColumnDefinition/>
                                    <ColumnDefinition/>
                                </Grid.ColumnDefinitions>
                                <StackLayout>
                                    <Label Text="{Binding Title}" FontSize="20" TextColor="Black"/>
                                    <Label Text="{Binding Detail}" FontSize="14" TextColor="Black"/>
                                </StackLayout>
                                <Image Source="favourite.png" VerticalOptions="Center" HorizontalOptions="Center" Grid.Column="1"/>
                            </Grid>
                        </primitives:RadBorder>
                    </DataTemplate>
                </local:RoundedAppointmentTemplateSelector.NotAllDay>
            </local:RoundedAppointmentTemplateSelector>
            <!-- << calendar-appointments-template-selector -->
        </ResourceDictionary>
    </ContentPage.Resources>
 ```

And the RoundedAppointmentTemplateSelector implementation

 ```C#
public class RoundedAppointmentTemplateSelector : DataTemplateSelector
{
	public DataTemplate AllDay { get; set; }
	public DataTemplate NotAllDay { get; set; }

	protected override DataTemplate OnSelectTemplate(object item, BindableObject container)
	{
		var appointmentsTemplate = item as Appointment;

		if (appointmentsTemplate.IsAllDay)
		{
			return this.AllDay;
		}
		return this.NotAllDay;
	}
}
 ```

1. Create a class that inherits from `Telerik.XamarinForms.Input.Appointment` class and define a `Color` property. For example, 

 ```C#
public class Mainappointment : Appointment
{
	public Color MainBackgroundColor { get; set; }
}
 ```

 1. Set the Appointment Color property to `Transparent` for all appointments and set different colors to the `MainBackgroundColor`.

 ```C#
public class AppointmentsTemplateViewModel
{
	public AppointmentsTemplateViewModel()
	{
		var date = DateTime.Today;
		this.Appointments = new ObservableCollection<Mainappointment>
		{
			new Mainappointment{ Title = "Tom Birthday", IsAllDay = true, Color = Color.Transparent, Detail ="Buy present!", StartDate = date, EndDate = date.AddHours(12), MainBackgroundColor = Color.LightCyan},
			new Mainappointment{ Title = "Lunch with Sara", IsAllDay = false, Color = Color.Transparent, Detail ="Discuss the new marketing strategy", StartDate = date.AddDays(1).AddHours(12), EndDate = date.AddDays(1).AddHours(13).AddMinutes(30), MainBackgroundColor = Color.LightGray},
			new Mainappointment{ Title = "Security Training", IsAllDay = false, Color = Color.Transparent, Detail ="Details for the event come here", StartDate = date.AddHours(15), EndDate = date.AddHours(16), MainBackgroundColor = Color.LightCoral},
			new Mainappointment{ Title = "Elle Birthday", IsAllDay = true, Color = Color.Transparent, Detail ="Buy present!", StartDate = date.AddDays(1), EndDate = date.AddDays(1).AddHours(12), MainBackgroundColor = Color.LightGreen},
		};
	}
	public ObservableCollection<Mainappointment> Appointments { get; set; }
}
 ```

1. Bind the `MainBackgroundColor` to the `RadBorder` `BackgroundColor` property, to grid `BackgroundColor`, or stack `BackgroundColor`, etc. The RadCalendar definition with Appointment ContentTemplate set for DayView, MultiDayView and binded Border Color: 

 ```XAML
<telerikInput:RadCalendar x:Name="calendar"
					ViewMode="Day"
					AppointmentsSource="{Binding Appointments}"
					SchedulingUiEnabled="True">
    <telerikInput:RadCalendar.BindingContext>
        <local:AppointmentsTemplateViewModel/>
    </telerikInput:RadCalendar.BindingContext>
    <telerikInput:RadCalendar.MultiDayViewSettings>
        <telerikInput:MultiDayViewSettings AppointmentContentTemplate="{StaticResource RoundedAppointmentTemplateSelector}"/>
    </telerikInput:RadCalendar.MultiDayViewSettings>
    <telerikInput:RadCalendar.DayViewSettings>
        <telerikInput:DayViewSettings AppointmentContentTemplate="{StaticResource RoundedAppointmentTemplateSelector}"/>
    </telerikInput:RadCalendar.DayViewSettings>
</telerikInput:RadCalendar>
 ```