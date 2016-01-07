---
title: Cell Styling
page_title: Cell Styling
position: 3
slug: calendar-styling-cell
---

## Cell Styling
 
- **SetStyleForCell** (Func&lt;CalendarCell, CalendarCellStyle&gt;): This property should be assigned to a method that returns a CalendarCellStyle object. The method will be called for every calendar cell and the returned style will be applied. If the return value is null, the default style of the cell will be used.
 
Here are all properties defined in the the **CalendarCellStyle** class:

 - **BackgroundColor** (Color)
 - **BorderColor** (Color)
 - **BorderThickness** (Thickness)
 - **FontSize** (double)
 - **FontWeight** (FontWeight): Bold or Normal.
 - **ForegroundColor** (Color)

You can find more information about the calendar cells in this article: [Calendar Cell Types]({% slug calendar-cell-types %}) 

#### Example ####

This example demonstrates how you can change the style of the cells of type DayName and a specific date:

    var calendar = new RadCalendar();
    calendar.SetStyleForCell = this.EvaluateCellStyle;

And this is the method:

    private CalendarCellStyle EvaluateCellStyle(CalendarCell cell)
    {
        if (cell.Type == CalendarCellType.DayName)
        {
            return new CalendarCellStyle
            {
                BackgroundColor = Color.White,
                ForegroundColor = Color.FromRgb(163, 118, 222),
                FontSize = 15,                   
                FontWeight = FontWeight.Bold
            };
        }

    
        var dayCell = cell as CalendarDayCell;
        if(dayCell != null && dayCell.Date.Date == new DateTime(2015, 3, 14))
        {
            return new CalendarCellStyle
            {
                BackgroundColor = Color.White,
                ForegroundColor = Color.FromRgb(218, 112, 214),
                FontSize = 20,
                FontWeight = FontWeight.Bold,
                BorderColor = Color.FromRgb(218, 112, 214),
                BorderThickness = 3
            }; 
        }
    
        return null;
    }

Here is the result:

![Cell Styling](images/calendar-cell-styling.png "Cell styling example")
