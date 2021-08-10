---
title: Different functionalities on CellTap and CellDoubleTap in DataGrid
description:  Trigger two separate functions for when a user single taps vs when a user double taps on a datagrid cell
type: how-to
page_title: Add different functionalities on CellTap and CellDoubleTap in DataGrid
slug: datagrid-cell-tap-double-tap-different-options
position: 
tags: 
ticketid: 1526924
res_type: kb
---

## Environment
<table>
	<tbody>
		<tr>
			<td>Product Version</td>
			<td>2021.2.512.1</td>
		</tr>
		<tr>
			<td>Product</td>
			<td>DataGrid for Xamarin.Forms</td>
		</tr>
	</tbody>
</table>


## Description

This how-to article will showw you how to add separate functionalities on cell tap and cell double tap.

## Solution

RadDataGrid provides CellTap and CellDoubleTap commands that can be used to easily achieve the wanted result in three steps:

* You have to create a class that inherits from DataGridCommand. More information about [DataGrid commands](https://docs.telerik.com/devtools/xamarin/controls/datagrid/commands/commands).

* Then implement your custom logic into the Execute method and set this.Owner.CommandService.ExecuteDefaultCommand to DataGridCommandId.CellTap or DataGridCommandId.CellDoubleTap.

```C#
using System;
using Telerik.XamarinForms.DataGrid;
using Telerik.XamarinForms.DataGrid.Commands;
using Xamarin.Forms;

namespace App9
{
    public class CellTapUserCommand : DataGridCommand
    {
        public CellTapUserCommand()
        {
            Id = DataGridCommandId.CellTap;
        }

        public override bool CanExecute(object parameter)
        {
            return parameter is DataGridCellInfo;
        }

        public override void Execute(object parameter)
        {
            var info = (DataGridCellInfo)parameter;

            Device.StartTimer(TimeSpan.FromMilliseconds(50), () =>
            {
                if (!DoubleCellTapUserCommand.isDoubleTap)
                {
                    this.Owner.CommandService.ExecuteDefaultCommand(DataGridCommandId.CellTap, parameter);
                }
                else
                {
                    DoubleCellTapUserCommand.isDoubleTap = false;
                }

                return false;
            });
        }
    }

    public class DoubleCellTapUserCommand : DataGridCommand
    {
        internal static bool isDoubleTap;

        public DoubleCellTapUserCommand()
        {
            this.Id = DataGridCommandId.CellDoubleTap;
        }

        public override void Execute(object parameter)
        {
            isDoubleTap = true;
            Application.Current.MainPage.DisplayAlert("Double Tap", "Double tap OK?", "OK");
            this.Owner.CommandService.ExecuteDefaultCommand(DataGridCommandId.CellDoubleTap, parameter);
        }
    }
}
```

* Add the commands to the DataGrid.Commands:

```XAML
<ContentPage xmlns="http://xamarin.com/schemas/2014/forms"
             xmlns:x="http://schemas.microsoft.com/winfx/2009/xaml" 
             xmlns:local="clr-namespace:App9"
             xmlns:grid="clr-namespace:Telerik.XamarinForms.DataGrid;assembly=Telerik.XamarinForms.DataGrid"
             x:Class="App9.MainPage">
    <grid:RadDataGrid x:Name="grid"
                      ItemsSource="{Binding Items}"
                      SelectionUnit="Cell"
                      GridLinesVisibility="Both"
                      AutoGenerateColumns="False">
        <grid:RadDataGrid.Columns>
            <grid:DataGridTextColumn PropertyName="Title"/>
            <grid:DataGridNumericalColumn PropertyName="Author"/>
        </grid:RadDataGrid.Columns>
        <grid:RadDataGrid.Commands>
            <local:CellTapUserCommand/>
            <local:DoubleCellTapUserCommand/>
        </grid:RadDataGrid.Commands>
    </grid:RadDataGrid>
</ContentPage>
```

Set the BindingContext in code-behind:

```C#
public partial class MainPage : ContentPage
{
    public MainPage()
    {
        InitializeComponent();

        this.BindingContext = new ViewModel();
    }
}
```

Used ViewModel and Business Model:

```C#
public class Book
{
    public string Title { get; set; }

    public string Author { get; set; }
}

public class ViewModel
{
    public ObservableCollection<Book> Items { get; set; }

    public ViewModel()
    {
        this.Items = new ObservableCollection<Book>()
        {
            new Book{ Title = "The Fault in Our Stars ",  Author = "John Green"},
            new Book{ Title = "Divergent",  Author = "Veronica Roth"},
            new Book{ Title = "Gone Girl",  Author = "Gillian Flynn"},
            new Book{ Title = "Clockwork Angel",  Author = "Cassandra Clare"},
            new Book{ Title = "The Martian",  Author = "Andy Weir"},
            new Book{ Title = "Ready Player One",  Author = "Ernest Cline"},
            new Book{ Title = "The Lost Hero",  Author = "Rick Riordan"},
            new Book{ Title = "All the Light We Cannot See",  Author = "Anthony Doerr"},
            new Book{ Title = "Cinder",  Author = "Marissa Meyer"},
            new Book{ Title = "Me Before You",  Author = "Jojo Moyes"},
            new Book{ Title = "The Night Circus",  Author = "Erin Morgenstern"},
        };
    }
}
```