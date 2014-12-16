---
title: Calendar Features
page_title: Calendar Features
position: 4
slug: calendar-features
---

## Appointments ##

### Properties: ###

 - **AppointmentsSource** (IEnumerable<IAppointment>): Gets or sets an enumerable of objects, that implement IAppointment.

## Additional classes / enums  ##

### Classes ###

ValueChangedEventArgs<T> 
T PreviousValue 
T NewValue 

IAppointment 
Defines a contract, which should be satisfied by an object, candidate to be part of the AppontmentsSource collection 
PROPERTIES: 
StartDate (DateTime): defines the starting date of the appointment 
EndDate (DateTime): defines the ending date of the appointment 
Title (string): defines the title of the appontment 
