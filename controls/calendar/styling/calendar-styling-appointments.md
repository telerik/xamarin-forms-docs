---
title: Calendar Appointments Styling
page_title: Calendar Appointments Styling
position: 4
slug: calendar-styling-appointments
---

# Calendar Appointments Styling

> Appointments cannot be customized in WindowsPhone. This is why the following properties are applicable for iOS and Android, only.

This article's purpose is to get users familiar with the **AppointmentsStyle** property of the RadCalendar component. It is of type **CalendarAppointmentsStyle** and gets or sets the visual representation of the appointments of the calendar. This is how the appointments are positioned inside a calendar cell.

![Display Mode](images/text.png "Cell Structure")

Here are the properties exposed by the style:

 - **MaxCount** (*int*): Gets or sets the maximum count of displayed events. 
 - **Padding** (*Thickness*): Gets or sets the padding of the rectangle that holds the events.
 - **ShapeSize** (*Size*): Gets or sets the dimensions that will be user when drawing the separate shapes.
 - **Spacing** (*double*): Gets or sets the empty space between two appointments in the same date.
 - **FontSize** (*double*): Gets or sets a value controlling the size of the text of an appointment. 
 - **TextColor** (*Color*): Gets or sets the color for all appointments that are **not** marked as all day. This color will be applied if the *TextColorFromAppointment* property is set to false.
 - **AllDayTextColor** (*Color*): Gets or sets the text color for the all-day appointments. 
 - **MoreTextColor** (*Color*): Gets or sets the color for the text indicating  there are appointments that are not displayed due to lack of space. 
 - **AllDayTextPadding** (*Thickness*): Gets or sets the padding of the all-day appointments text. 
 - **TextPadding** (*Thickness*): Gets or sets the padding of the appointments text.
 - **TextColorFromAppointment** (*bool*): Gets or sets a boolean value indicating whether the appointment text should take its color from the *IAppointment.Color* value or the *TextColor* property value should be used.
 - **TextVerticalLocation** (*VerticalLocation*): Gets or sets the vertical position of the text.
 - **TextHorizontalLocation** (*HorizontalLocation*): Gets or sets the horizontal position of the text.
 - **BackgroundRectBorderRadius** (*double*): Gets or sets the border radius of the text background rectangle.
 - **MoreTextFormatString** (*string*): Gets or sets the format string that will be used to modify the text displaying how many appointments remain hidden, e.g.: " **{0} more**"
 - **AllDayIndicatorWidth** (*double*): Gets or sets the width of the all-day indicator. It will take all available space for its other dimension depending on its location.
 - **AllDayIndicatorPadding** (*Thickness*): Gets or sets the padding of the all-day indicator rectangle. 
 - **ShapesVerticalLocation** (*VerticalLocation*): Gets or sets the vertical position of the events shapes.
 - **ShapesHorizontalLocation** (*HorizontalLocation*): Gets or sets the horizontal position of the events shapes.
 - **ShapeSize** (*Size*): Gets or sets the size of the events shapes.
 - **ShapesOrientation** (*Orientation*): Gets or sets the orientation of the shapes.
 - **AllDayShapesDisplayMode** (*AllDayDisplayMode*): Gets or sets a value defining how the all-day events will be visualized.
	 - Indicator
	 - WithShapes


 - **DisplayMode** (*AppointmentDisplayMode*): Gets or sets how the appointments are visualized.
	 - Text
	 - TextWithShape
	 - TextWithBackground
	 - Shape

![Display Mode](images/calendar-cell-style-display-mode.png "DisplayMode = Shape")

 - **ShapeType** (*CalendarAppointmentShapeType*): Gets or sets the shape representing an appointment.
	 - Rectangle
	 - Ellipse
	 - TriangleUp
	 - TriangleDown
	 - Rhombus

![Shape Type](images/calendar-cell-style-shape-type.png "ShapeType = Rhombus")

 - **AllDayIndicatorLocation** (*Location*): Gets or sets the location where the all day indicators are visualized.
	 - None
	 - Top
	 - Bottom
	 - Left
	 - Right
	 - All
 
![AllDay Indicator Location](images/calendar-cell-style-all-day-indicator-location.png "AllDayIndicatorLocation = Left")

#### Example

	var r = new Random();
    var appointments = new ObservableCollection<Appointment>();
    for (int i = 0; i < 30; i++)
    {
        var start = DateTime.Now.AddDays((double)r.Next(-30, 3)).AddHours((double)r.Next(-12, 12));
        appointments.Add(new Appointment() 
        { 
            Color = Color.FromRgb((double)r.Next(0,100)/100,(double)r.Next(0,100)/100,(double)r.Next(0,100)/100),
            StartDate = start,
            EndDate = start.AddDays((double)r.Next(0, 3)).AddHours((double)r.Next(0, 24)),
            IsAllDay = r.Next(0,100) % 3 == 0 ? true : false,
            Title = i + " appointment title"
        });
    }

	this.calendar.AppointmentsSource = appointments;
    this.calendar.AppointmentsStyle = new CalendarAppointmentsStyle
    {
        DisplayMode = AppointmentDisplayMode.Shape,
        Padding = new Thickness(5, 25, 5, 5),
        MaxCount = 20,
        Spacing = 1,
        ShapesHorizontalLocation = HorizontalLocation.Right,
        ShapesVerticalLocation = VerticalLocation.Bottom,
        ShapesOrientation = Orientation.Vertical,
        ShapeSize = new Size(6, 4),
        ShapeType = CalendarAppointmentShapeType.Rectangle,
        AllDayShapesDisplayMode = AllDayDisplayMode.Indicator,
        AllDayIndicatorLocation = Location.Top,
        AllDayIndicatorPadding = new Thickness(5, 2),
        AllDayIndicatorWidth = 2,
    };

The result should be similar to this:

![Styling Appointments](images/calendar-calendar-appointments-style-ios.png "iOS")

![Styling Appointments](images/calendar-calendar-appointments-style-android.png "Android")