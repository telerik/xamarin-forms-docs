---
title: UINavigationController with TKSideDrawer
page_title: UINavigationController with TKSideDrawer
position: 6
---

# TKSideDrawer: SideDrawer with UINavigationController

Sometimes, you may want to use UINavigationController to navigate in your app and also have a TKSideDrawer that slides on top of it. Such scenario can be achieved easily using TKSideDrawerController. TKSideDrawerController is a content controller that will present your UINavigationController and also has a <code>sideDrawer</code> property which is accessible from every UIViewController you push in the stack. To set up the <code>TKSideDrawerController</code>, open your AppDelegate and paste the code below inside <code>application:didFinishLaunchingWithOptions:

<snippet id='sidedrawer-appdelegate'/>
<snippet id='sidedrawer-appdelegate-swift'/>
```C#
[Register ("AppDelegate")]
public partial class AppDelegate : UIApplicationDelegate
{
    // class-level declarations

    public override UIWindow Window {
        get;
        set;
    }

    public override bool FinishedLaunching (UIApplication application, NSDictionary launchOptions)
    {
        SideDrawerGettingStarted main = new SideDrawerGettingStarted ();
        TKSideDrawerController sideDrawerController = new TKSideDrawerController (main);
        this.Window.RootViewController = sideDrawerController;

        return true;
    }

    //..
}
```

In this example, <code>SideDrawerGettingStarted</code> is a <code>UIViewController</code> subclass which is the initially displayed controller by the UINavigationController. From there on you can set up the side drawer inside the SideDrawerController's <code>viewDidLoad</code>:

<snippet id='sidedrawer-appdelegate-ctrl'/>
<snippet id='sidedrawer-appdelegate-ctrl-swift'/>
```C#
public class SideDrawerGettingStarted : UIViewController
{
    TKSideDrawer SideDrawer;

    public override void ViewDidLoad ()
    {
        base.ViewDidLoad ();

        this.View.BackgroundColor = UIColor.Gray;

        UINavigationBar navBar = new UINavigationBar (new CGRect (0, 0, this.View.Frame.Size.Width, 64));
        UINavigationItem navItem = new UINavigationItem ("Getting Started");
        UIBarButtonItem showSideDrawerButton = new UIBarButtonItem ("Show", UIBarButtonItemStyle.Plain, this, new Selector ("ShowSideDrawer"));
        navItem.LeftBarButtonItem = showSideDrawerButton;
        navBar.Items = new UINavigationItem[]{ navItem };
        this.View.AddSubview (navBar);

        this.SideDrawer = TKSideDrawer.FindSideDrawer (0, this);
        TKSideDrawerSection sectionPrimary = this.SideDrawer.AddSection ("Primary");
        sectionPrimary.AddItem ("Social");
        sectionPrimary.AddItem ("Promotions");

        TKSideDrawerSection sectionLabels = this.SideDrawer.AddSection ("Labels");
        sectionLabels.AddItem ("Important");
        sectionLabels.AddItem ("Starred");
        sectionLabels.AddItem ("Sent Mail");
        sectionLabels.AddItem ("Drafts");
    }

    [Export ("ShowSideDrawer")]
    public void ShowSideDrawer ()
    {
        this.SideDrawer.Show ();
    }
}
```
