---
title: Commands
page_title: Commands
position: 1
slug: sidedrawer-features-commands
---

# Commands

The **RadSideDrawer** control exposes a **Commands** collection that allows you to
register custom commands with each control’s instance. The commands allow the user to easily change and extend the control default behavior.

Each element in the **Commands** collection should inherit from the **SideDrawerCommandBase** class, and can override the **CanExecute()** and **Execute()** methods. Each command is associated with a certain event, which is represented by the command **Id** property. You should set this property to one of the values listed below, otherwise the command service of the control will not execute the command.

- **Opening**: Executed when the side drawer is being visualized on the device screen.
- **Opened**: Executed when the side drawer is already visualized on the device screen.
- **Closing**: Executed when the side drawer is being hidden.
- **Closed**: Executed when the side drawer is already closed.

For your convenience we have created a special **SideDrawerUserCommand** class that also exposes a **Command** dependency property which can be set to an instance of type that implements the **ICommand** interface.

## Examples

### Inherit from the SideDrawerCommandBase class

You can create a class deriving from the **SideDrawerCommandBase** class and set its **Id** property to the respective command. Furthermore, you can override its **CanExecute()** and **Execute()** methods. A sample implementation is shown below:

	public class CustomUserCommand : SideDrawerCommandBase
	{
	    public CustomUserCommand()
	    {
	        this.Id = SideDrawerCommandId.Closed;
	    }
	
	    public override bool CanExecute(object parameter)
	    {
	        return true;
	    }
	
	    public override void Execute(object parameter)
	    {
	    }
	}

Once such command is created it can be used in XAML like this:

	<primitives:RadSideDrawer>
      <primitives:RadSideDrawer.Commands>
        <local:CustomUserCommand/>
      </primitives:RadSideDrawer.Commands>
      <primitives:RadSideDrawer.MainContent>
        ...
      </primitives:RadSideDrawer.MainContent>
      <primitives:RadSideDrawer.DrawerContent>
		...
      </primitives:RadSideDrawer.DrawerContent>
    </primitives:RadSideDrawer>

Where the *local* alias points to the namespace where the **CustomUserCommand** is defined.

### Using the SideDrawerUserCommand class

You can define a class that implements the **ICommand** interface:

	public class CustomCommand : ICommand
	{
	    public event EventHandler CanExecuteChanged;
	
	    public bool CanExecute(object parameter)
	    {
	        return true;
	    }
	
	    public void Execute(object parameter)
	    {
	    }
	}

After thet you can use this class with the **SideDrawerUserCommand** in XAML like this:

	<primitives:RadSideDrawer>
	  <primitives:RadSideDrawer.Commands>
	    <drawer:SideDrawerUserCommand Id="Opening">
	      <drawer:SideDrawerUserCommand.Command>
	        <local:CustomCommand/>
	      </drawer:SideDrawerUserCommand.Command>
	    </drawer:SideDrawerUserCommand>
	  </primitives:RadSideDrawer.Commands>
	</primitives:RadSideDrawer>

### Binding to a view model

You can also use the **SideDrawerUserCommand** to bind its **Command** property to a view model.

	public class ViewModel
	{
	    public ViewModel()
	    {
	        this.Command = new CustomCommand();
	    }
	
	    public ICommand Command { get; set; }
	}
	
	drawer.BindingContext = new ViewModel();
	
	<primitives:RadSideDrawer>
	  <primitives:RadSideDrawer.Commands>
	    <drawer:SideDrawerUserCommand Command="{Binding Command}" Id="Opening"/>
	  </primitives:RadSideDrawer.Commands>
	</primitives:RadSideDrawer>
