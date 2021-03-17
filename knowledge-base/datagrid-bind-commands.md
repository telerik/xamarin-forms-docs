---
title: How to bind DataGrid built-in commands in the ViewModel
description: I need to hook the view model ICommand to the DataGrid commands
type: how-to
page_title: How to implement command binding of DataGrid commands to ICommand in ViewModel
slug: datagrid-bind-commands
position: 
tags: commands, binding, datagrid, viewmodel
ticketid: 1510741
res_type: kb
---

## Environment
<table>
	<tbody>
		<tr>
			<td>Product Version</td>
			<td>R1 2021</td>
		</tr>
		<tr>
			<td>Product</td>
			<td>DataGrid for Xamarin</td>
		</tr>
	</tbody>
</table>


## Description

RadDataGrid exposes a few predefined commands, such as CellTap, ColumnHeaderTap, BeginEdit etc, associated with various user-actions over the grid. You can easily handle any of these commands by creating a custom command class that derives from `DataGridCommand` class, set its CommandId and implement Execute and CanExecute methods. For detailed information on this, check [Commands Overview]({%slug datagrid-commands-overview %}) topic.

This topic demonstrates a sample approach for handling the DataGrid commands inside the ViewModel through an additional class used for the command binding. For the purpose of the example, we'll use [CommitEdit]({%slug datagrid-commands-editing %}) command which is raised as soon as a cell value has been modified by the user.

## Solution

Let's start with creating the CustomDataGridCommand which derives from `DataGridCommand`:

```C#
public class CustomDataGridCommand : DataGridCommand
{
	public static readonly BindableProperty CommandProperty = BindableProperty.Create(
		nameof(Command), typeof(ICommand), typeof(CustomDataGridCommand), null);

	public ICommand Command
	{
		get { return (ICommand)this.GetValue(CommandProperty); }
		set { this.SetValue(CommandProperty, value); }
	}

	public override bool CanExecute(object parameter)
	{
		bool canExecuteDefaultCommand = this.Owner?.CommandService?.CanExecuteDefaultCommand(this.Id, parameter) ?? false;
		bool canExecuteCommand = this.Command?.CanExecute(parameter) ?? true;
		return canExecuteDefaultCommand && canExecuteCommand;
	}

	public override void Execute(object parameter)
	{
		this.Owner?.CommandService?.ExecuteDefaultCommand(this.Id, parameter);
		this.Command?.Execute(parameter);
	}
}
```

Then, create a sample ViewModel class  - add a CommitEditCommand property of type `ICommand`:

```C#
public class ViewModel : NotifyPropertyChangedBase
{
    private ICommand _commitEditCommand;
    public ViewModel()
    {
        this.Source = new ObservableCollection<Data>()
        {
            new Data { Country = "India", Capital = "New Delhi"},
            new Data { Country = "South Africa", Capital = "Cape Town"},
            new Data { Country = "Nigeria", Capital = "Abuja" },
            new Data { Country = "Singapore", Capital = "Singapore" }
        };

        this.CommitEditCommand = new Command(this.CommitEditExecute);
    }
    public ObservableCollection<Data> Source { get; set; }

    public ICommand CommitEditCommand
    {
        get { return this._commitEditCommand; }
        set
        {
            if (this._commitEditCommand != value)
            {
                this._commitEditCommand = value;
                this.OnPropertyChanged();
            }
        }
    }

    private void CommitEditExecute(object param)
    {
        var context = (EditContext)param;           
    }
}
```

The used `Data` class:

```C#
public class Data
{
	public string Country { get; set; }
	public string Capital { get; set; }
}
```

Lastly, add the RadDataGrid instance with the CustomDataGridCommand attached to its Commands collection:

```XAML
<telerikDataGrid:RadDataGrid x:Name="dataGrid"
							 ItemsSource="{Binding Source}"
							 UserEditMode="Cell">
	<telerikDataGrid:RadDataGrid.Commands>               
		<local:CustomDataGridCommand Id="CommitEdit" Command="{Binding CommitEditCommand}" />
	</telerikDataGrid:RadDataGrid.Commands>
</telerikDataGrid:RadDataGrid>
```

The final step is to set the ViewModel class as a BindingContext:

```C#
this.BindingContext = new ViewModel();
```

As soon as the user edits a value, there will be notification in the ViewModel CommitEditExecute method with information on the updated bits (through the EditContext parameter).
