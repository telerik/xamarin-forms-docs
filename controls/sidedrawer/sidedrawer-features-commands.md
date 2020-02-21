---
title: Commands
page_title: Commands
description: Check our &quot;Commands&quot; documentation article for Telerik SideDrawer for Xamarin control.
position: 5
slug: sidedrawer-features-commands
---

# Overview

The **RadSideDrawer** control exposes a **Commands** collection that allows you to
register custom commands with each control’s instance. The commands allow the user to easily change and extend the control default behavior.

Each element in the **Commands** collection should inherit from the **SideDrawerCommandBase** class, and can override the **CanExecute()** and **Execute()** methods. Each command is associated with a certain event, which is represented by the command **Id** property. You should set this property to one of the values listed below, otherwise the command service of the control will not execute the command.

- **Opening**: Executed when the side drawer is being visualized on the device screen.
- **Opened**: Executed when the side drawer is already visualized on the device screen.
- **Closing**: Executed when the side drawer is being hidden.
- **Closed**: Executed when the side drawer is already closed.
- **Unknown**

For your convenience we have created a special **SideDrawerUserCommand** class that also exposes a **Command** dependency property which can be set to an instance of type that implements the **ICommand** interface.

# Examples

The following examples will demonstrate how to use the RadSideDrawer commands in different scenarios.

## Inheriting from the SideDrawerCommandBase class

You can create a class deriving from the **SideDrawerCommandBase** class and set its **Id** property to the desired command trigger event. Furthermore, you can override its **CanExecute()** and **Execute()** methods. A sample implementation is shown below:

```C#
public class CustomDrawerCommand : SideDrawerCommandBase
{
    public CustomDrawerCommand()
    {
        this.Id = SideDrawerCommandId.Closed;
    }

    public override bool CanExecute(object parameter)
    {
        return true;
    }

    public override void Execute(object parameter)
    {
		// implement your custom logic here
    }
}
```

Once such command is created it can be used in XAML like this:

```XAML
<telerikPrimitives:RadSideDrawer>
  <telerikPrimitives:RadSideDrawer.Commands>
    <local:CustomDrawerCommand/>
  </telerikPrimitives:RadSideDrawer.Commands>
  <telerikPrimitives:RadSideDrawer.MainContent>
     <Label Text="Main content" />
  </telerikPrimitives:RadSideDrawer.MainContent>
  <telerikPrimitives:RadSideDrawer.DrawerContent>
 	<Label Text="Drawer content" />
  </telerikPrimitives:RadSideDrawer.DrawerContent>
</telerikPrimitives:RadSideDrawer>
```

You will need to add the following namespaces:

```XAML
xmlns:telerikPrimitives="clr-namespace:Telerik.XamarinForms.Primitives;assembly=Telerik.XamarinForms.Primitives"
```

Where the *local* alias points to the namespace where the **CustomUserCommand** is defined.

## Using the SideDrawerUserCommand class

You can define a class that implements the **ICommand** interface:

```C#
public class CustomCommand : ICommand
{
    public event EventHandler CanExecuteChanged;

    public bool CanExecute(object parameter)
    {
        return true;
    }

    public void Execute(object parameter)
    {
		// implement your custom logic here
    }
}
```

After thet you can use this class with the **SideDrawerUserCommand** in XAML like this:

```XAML
<telerikPrimitives:RadSideDrawer>
  <telerikPrimitives:RadSideDrawer.Commands>
    <sidedrawer:SideDrawerUserCommand Id="Opening">
      <sidedrawer:SideDrawerUserCommand.Command>
        <local:CustomCommand/>
      </drawer:SideDrawerUserCommand.Command>
    </drawer:SideDrawerUserCommand>
  </telerikPrimitives:RadSideDrawer.Commands>
</telerikPrimitives:RadSideDrawer>
```

You will need to add the following namespaces:

```XAML
xmlns:telerikPrimitives="clr-namespace:Telerik.XamarinForms.Primitives;assembly=Telerik.XamarinForms.Primitives"
xmlns:sidedrawer="clr-namespace:Telerik.XamarinForms.Primitives.SideDrawer;assembly=Telerik.XamarinForms.Primitives"
```

and the *local* alias points to the namespace where the **CustomCommand** is defined.

## Binding to a ViewModel

You can also use the **SideDrawerUserCommand** to bind its **Command** property to a view model.

Here is how the ViewModel is defined:

```C#
public class ViewModel
{
    public ViewModel()
    {
        this.Command = new CustomCommand();
    }

    public ICommand Command { get; set; }
}
```

```C#
public class CustomCommand : ICommand
{
    public event EventHandler CanExecuteChanged;

    public bool CanExecute(object parameter)
    {
        return true;
    }

    public void Execute(object parameter)
    {
		// implement your custom logic here
    }
}
```

```XAML
<telerikPrimitives:RadSideDrawer x:Name="drawer" DrawerLength="200">
    <telerikPrimitives:RadSideDrawer.BindingContext>
        <local:ViewModel/>
    </telerikPrimitives:RadSideDrawer.BindingContext>
    <telerikPrimitives:RadSideDrawer.Commands>
        <sidedrawer:SideDrawerUserCommand Command="{Binding Command}" Id="Opening"/>
    </telerikPrimitives:RadSideDrawer.Commands>
    <telerikPrimitives:RadSideDrawer.MainContent>
        <Label Text="Main content" />
    </telerikPrimitives:RadSideDrawer.MainContent>
    <telerikPrimitives:RadSideDrawer.DrawerContent>
        <StackLayout>
            <Button Text="Mail" />
            <Button Text="Calendar" />
            <Button Text="People" />
            <Button Text="Tasks" />
        </StackLayout>
    </telerikPrimitives:RadSideDrawer.DrawerContent>
</telerikPrimitives:RadSideDrawer>
```

You will need to add the following namespaces:

```XAML
xmlns:telerikPrimitives="clr-namespace:Telerik.XamarinForms.Primitives;assembly=Telerik.XamarinForms.Primitives"
xmlns:sidedrawer="clr-namespace:Telerik.XamarinForms.Primitives.SideDrawer;assembly=Telerik.XamarinForms.Primitives"
```

and the *local* alias points to the namespace where the **CustomCommand** and **ViewModel** are defined.
