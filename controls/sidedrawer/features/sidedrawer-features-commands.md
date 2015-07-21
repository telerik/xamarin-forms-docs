---
title: Commands
page_title: Commands
position: 1
slug: sidedrawer-features-commands
---

The **RadSideDrawer** exposes commands that can be used by customers to implement their requirements. Currently users can take advantage of the following commands:

1. **Opening** - triggered when the side drawer is being visualized on the device screen.
2. **Opened** - triggered when the side drawer is already visualized on the device screen.
3. **Closing** - triggered when the side drawer is being hidden.
4. **Closed** - triggered when the side drawer is already closed.

To get advantage of these commands users should create a class deriving from the **SideDrawerCommandBase** class and set its **Id** property to the respective command. Furthermore, they can override its **CanExecute()** and **Execute()** methods. A sample implementation is shown below:

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

If creating a class and deriving it from our **SideDrawerCommandBase** is not convenient for customers they are allowed to utilize the SideDrawer commands in yet another way. They can take advantage of the **SideDrawerUserCommand** class. It exposes the following properties:

1. **Id** - of type SideDrawerCommandId which gets or sets a value indicating when the command should be triggered.
2. **Command** - of type ICommand which gets or sets the custom command which will be triggered.

This class can be defined in XAML like this:

	<primitives:RadSideDrawer>
	  <primitives:RadSideDrawer.Commands>
	    <drawer:SideDrawerUserCommand Id="Opening">
	      <drawer:SideDrawerUserCommand.Command>
	        <local:CustomCommand/>
	      </drawer:SideDrawerUserCommand.Command>
	    </drawer:SideDrawerUserCommand>
	  </primitives:RadSideDrawer.Commands>
	</primitives:RadSideDrawer>

Where the *CustomCommand* class is defined like this:

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

