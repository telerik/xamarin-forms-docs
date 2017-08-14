---
title: Swipe Actions
page_title: Swipe Actions Behavior | Telerik UI for Xamarin.Android Documentation
description: A help topic about SwipeActionsBehavior in RadListView for Android.
slug: listview-behaviors-swipeactions
tags: radlistview, behaviors, swipeexecute, list, listview
publish: true
position: 6
---

# SwipeActionsBehavior: Overview
RadListView's `SwipeActionsBehavior` is an upgraded version of the `SwipeExecuteBehavior` addressing animation glitches and introducing new capabilities. With `SwipeExecuteBehavior` the dragged item was basically a screenshot of the actual `View` which prevented the end-user from interacting with the content in it. With `SwipeActionsBehavior` this is no longer the case, as the end-user drags the actual `View`. The way `SwipeActionsBehavior` is used is very similar to the approach with `SwipeExecuteBehavior` so you will be familiar with most of the APIs.

# SwipeActionsBehavior: Getting Started
To get started using the `SwipeActionsBehavior` you need to create an instance of it, provide a listener for the swipe events and add it to the `RadListView` instance. Additionally, you need to override the `onCreateSwipeContentHolder` and `onBindSwipeContentHolder` methods in your adapter and provide a `View` that will represent the swipe actions.

## Callbacks
The following code snippet demonstrates how to instantiate the `SwipeAcitonsBehavior` and provide a listener for its callbacks:

```Java
this.sab = new SwipeActionsBehavior();
this.sab.addListener(new SwipeActionsBehavior.SwipeActionsListener() {

    @Override
    public void onSwipeStarted(SwipeActionsBehavior.SwipeActionEvent swipeActionEvent) {
        // Fired when the user starts swiping an item.
    }

    @Override
    public void onSwipeProgressChanged(SwipeActionsBehavior.SwipeActionEvent swipeActionEvent) {
        // Continuously fired while the user swipes an item.
    }

    @Override
    public void onSwipeEnded(SwipeActionsBehavior.SwipeActionEvent swipeActionEvent) {
        // Fired when the user releases the item being swiped.
    }

    @Override
    public void onExecuteFinished(SwipeActionsBehavior.SwipeActionEvent swipeActionEvent) {
        // Fired when the swipe-execute procedure has ended, i.e. the item being swiped is at
        // its original position.
    }

    @Override
    public void onSwipeStateChanged(SwipeActionsBehavior.SwipeActionsState swipeActionsState, SwipeActionsBehavior.SwipeActionsState swipeActionsState1) {

    }

});

this.listView.addBehavior(this.sab);
```
```C#
public class ListViewSwipeActionsGettingStartedFragment : Fragment, ExampleFragment, SwipeActionsBehavior.ISwipeActionsListener
{
    private RadListView listView;
    private SwipeActionsBehavior sap;

    public override View OnCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState)
    {
        View rootView = inflater.Inflate(Resource.Layout.fragment_list_view_example, container, false);

        this.listView = (RadListView)rootView.FindViewById(Resource.Id.listView).JavaCast<RadListView>();

        ArrayList dataSource = new ArrayList();

        EmailMessage message = new EmailMessage();
        message.title = "Tech news";
        message.content = "Here is your daily LinkedIn feed with news about .NET, Java, iOS and more...";
        dataSource.Add(message);

        message = new EmailMessage();
        message.title = "Awaiting Payment";
        message.content = "Monthly bills summary: water supply, electricity, earth gas...";
        dataSource.Add(message);

        message = new EmailMessage();
        message.title = "Greetings from Hawai";
        message.content = "Hey Betty, we've just arrived! What a flight!...";
        dataSource.Add(message);

        this.listView.SetAdapter(new ListViewSwipeActionsAdapter(dataSource));

        sap = new SwipeActionsBehavior();

        sap.AddListener(this);

        this.listView.AddBehavior(sap);

        return rootView;
    }

    public void OnExecuteFinished(SwipeActionsBehavior.SwipeActionEvent p0)
    {
    }

    public void OnSwipeEnded(SwipeActionsBehavior.SwipeActionEvent p0)
    {
    
    }

    public void OnSwipeProgressChanged(SwipeActionsBehavior.SwipeActionEvent p0)
    {

    }

    public void OnSwipeStarted(SwipeActionsBehavior.SwipeActionEvent p0)
    {

    }

    public void OnSwipeStateChanged(SwipeActionsBehavior.SwipeActionsState p0, SwipeActionsBehavior.SwipeActionsState p1)
    {

    }

    public string Title()
    {
        return "Swipe Actions Getting Started";
    }
}
```

There are four callbacks exposed by the `SwipeActionsListener` that are called depending on the state of the `SwipeActionsBehavior`:
- `onSwipeStarted` - called when the user starts swiping an item
- `onSwipeProgressChanged` - continuously called while the user swipes the item
- `onSwipeEnded` - called when the user stops swiping the item
- `onExecuteFinished` - called when the swiped item is returned back to its original position
- `onSwipeStateChanged` - called when the state of the `SwipeActionsBehavior` instance changes as a result of a user action

All of these callbacks provide a reference to an instance of the `SwipeActionEvent` class which exposes the following getters:
- `swipePositionWhenReleased()` - returns the swiped item's offset at the moment the user released it
- `swipedItemPosition()` - returns the index of the corresponding data item being swiped in the data source assigned to the `RadListView` instance
- `swipeView()` - returns the `View` that is shown below the main content that is swiped. This view comes from the `onCreateSwipeContentHolder()` override. This view gives you access to the elements that represent the swipe actions.
- `mainView()` - returns the `View` that represents the main content of the item being swiped
- `currentOffset()` - returns the current offset of the item being swiped
- `isThresholdPassed()` - returns a boolean value determining whether the threshold specified on the `SwipeActionsBehavior` instance has been passed

All of these getters are helpful when implementing various Swipe Actions scenarios.

## Adapter overrides
Besides implementing the `SwipeActionsListener` interface you will also need to extend the adapter assigned to `RadListView` by overriding the `onBindSwipeContentHolder` and `onCreateSwipeContentHolder` methods:

```Java
@Override
public ListViewHolder onCreateSwipeContentHolder(ViewGroup viewGroup) {
    LayoutInflater inflater = LayoutInflater.from(viewGroup.getContext());
    View swipeContentView = inflater.inflate(R.layout.example_list_view_swipe_actions_gs_swipe_content, viewGroup, false);
    MySwipeContentViewHolder vh = new MySwipeContentViewHolder(swipeContentView);
    return vh;
}

@Override
public void onBindSwipeContentHolder(final ListViewHolder viewHolder, final int position) {
    final EmailMessage currentMessage = (EmailMessage)getItem(position);
    MySwipeContentViewHolder swipeContentHolder = (MySwipeContentViewHolder)viewHolder;
}
```
```C#
class ListViewSwipeActionsAdapter : ListViewAdapter
{

    public ListViewSwipeActionsAdapter(IList items) : base(items)
    {
    }

    public override Android.Support.V7.Widget.RecyclerView.ViewHolder OnCreateViewHolder(ViewGroup p0, int p1)
    {
        LayoutInflater inflater = LayoutInflater.From(p0.Context);
        View itemView = inflater.Inflate(Resource.Layout.example_list_view_item_swipe_layout, p0, false);
        SwipeToExecuteCustomViewHolder customHolder = new SwipeToExecuteCustomViewHolder(itemView);
        return customHolder;
    }


    public override void OnBindListViewHolder(ListViewHolder p0, int p1)
    {
        SwipeToExecuteCustomViewHolder customVH = (SwipeToExecuteCustomViewHolder)p0;
        EmailMessage message = (EmailMessage)this.GetItem(p1);
        customVH.txtTitle.Text = message.title;
        customVH.txtContent.Text = message.content;
    }


    public override ListViewHolder OnCreateSwipeContentHolder(ViewGroup viewGroup)
    {
        LayoutInflater inflater = LayoutInflater.From(viewGroup.Context);
        View swipeContentView = inflater.Inflate(Resource.Layout.example_list_swipe_actions_static, viewGroup, false);
        ListViewHolder vh = new ListViewHolder(swipeContentView);
        return vh;
    }


    public override void OnBindSwipeContentHolder(ListViewHolder viewHolder, int position)
    {
        View swipeContent = viewHolder.ItemView;

        EmailMessage currentDataItem = (EmailMessage)this.GetItem(position);
    
    }
}
```

What these overrides do is return a container for the swipe actions and bind it to the corresponding data item.

## Thresholds and limits
The `SwipeActionsBehavior` exposes the following properties via getters and setters:
- `swipeThresholdStart` - defines the threshold at the start of the item beyond which the item, when released, will stick open
- `swipeThresholdEnd` - defines the threshold at the end of the item beyond which the item, when released, will stick open.
- `swipeLimitStart` - defines the limit from the start (near end of the item) beyond which the item cannot be swiped
- `swipeLimitEnd` - defines the limit from the start (far end of the item) beyond which the item cannot be swiped.

## States
While performing a swipe action the `SwipeActionsBehavior` switches between different swipe states. The current swipe state is accessible vie the `getSwipeState()` method. The `getSwipeState()` method returns an instance of the `SwipeActionsState` enum. The following swipe states are defined:
- `IDLE` - this state is active when the user is not interacting with the list and there is no a pending swiping procedure
- `SWIPING` - this state is active when the user is swiping and item
- `RESETTING` - this state is active when the user has released the item being swiped and it is animated to its final position
- `ACTIVE` - this state is active when the swiped item has been released and animated to its sticky position, i.e. the swipe actions are visible but there's no user interaction

## Terminating the swipe procedure
The `SwipeActionsBehavior` exposes the `endExecute()` method which, when called, returns the item being swiped to its original position and resets the swipe state.

## Dock mode
The Swipe Dock Mode is used to determine where the swiped item will be docked once released. There are two possible options:
- `DockAtLimit` - the default option. The swiped item is animated so that it docks at the swipe limit, if defined.
- `DockAtThreshold` - the swiped item is animated so that it docks at the swipe threshold position, if defined.

# SwipeActionsBehavior: Advanced scenarios
Using the `SwipeActionsBehavior` API you can implement various Swipe Actions scenarios found in many modern mobile applications including but not limited to:
- trigger a specific action when the user swipes left or right beyond a given threshold
- display a set of actions when the user swipes beyond a given threshold
- delete an item from the list when the user swipes an item out of the view port
- indicate that a given action will happen while the user swipes the item
- animate the contents of the main view or the swipe view while the user swipes the item  

Some of the scenarios are demonstrated in the SDK examples of UI for Android available on GitHub here: https://github.com/telerik/Android-samples/tree/master/Samples-Java.

## Sticky swipe actions
Using the `SwipeActionsListener` you can implement the popular scenario in which the swipe actions displayed below the item's main content are animated while swiping. Here's a basic example:

```Java
this.sab = new SwipeActionsBehavior();
this.sab.addListener(new SwipeActionsBehavior.SwipeActionsListener() {
    private int leftWidth = -1;
    private int rightWidth = -1;
    private ViewGroup swipeView;
    private View leftActionView;
    private View rightActionView;

    @Override
    public void onSwipeStarted(SwipeActionsBehavior.SwipeActionEvent swipeActionEvent) {
        this.swipeView = (ViewGroup)swipeActionEvent.swipeView();
        this.leftActionView = this.swipeView.getChildAt(0);
        this.rightActionView = this.swipeView.getChildAt(1);

        if (leftWidth == -1) {
            leftWidth = this.leftActionView.getWidth();
        }

        if (rightWidth == -1) {
            rightWidth = this.rightActionView.getWidth();
        }
    }

    @Override
    public void onSwipeProgressChanged(SwipeActionsBehavior.SwipeActionEvent swipeActionEvent) {

        if (swipeActionEvent.currentOffset() > leftWidth){
            ViewGroup.LayoutParams lp = this.leftActionView.getLayoutParams();
            lp.width = swipeActionEvent.currentOffset();
            this.leftActionView.setLayoutParams(lp);
        }

        if (swipeActionEvent.currentOffset() < -rightWidth){
            ViewGroup.LayoutParams lp = this.rightActionView.getLayoutParams();
            lp.width = -swipeActionEvent.currentOffset();
            this.rightActionView.setLayoutParams(lp);
        }
    }

    @Override
    public void onSwipeEnded(SwipeActionsBehavior.SwipeActionEvent swipeActionEvent) {
        // Fired when the user releases the item being swiped.
    }

    @Override
    public void onExecuteFinished(SwipeActionsBehavior.SwipeActionEvent swipeActionEvent) {
        // Fired when the swipe-execute procedure has ended, i.e. the item being swiped is at
        // its original position.
        this.leftWidth = -1;
        this.rightWidth = -1;
    }

    @Override
    public void onSwipeStateChanged(SwipeActionsBehavior.SwipeActionsState swipeActionsState, SwipeActionsBehavior.SwipeActionsState swipeActionsState1) {

    }

});

this.listView.addBehavior(this.sab);
```
```C#
public void OnExecuteFinished(SwipeActionsBehavior.SwipeActionEvent p0)
{
    // Fired when the swipe-execute procedure has ended, i.e. the item being swiped is at
    // its original position.
    this.leftWidth = -1;
    this.rightWidth = -1;
}

public void OnSwipeEnded(SwipeActionsBehavior.SwipeActionEvent p0)
{

}

public void OnSwipeStateChanged(SwipeActionsBehavior.SwipeActionsState oldState, SwipeActionsBehavior.SwipeActionsState newState)
{
}

public void OnSwipeProgressChanged(SwipeActionsBehavior.SwipeActionEvent swipeActionEvent)
{
    if (swipeActionEvent.CurrentOffset() > this.leftWidth)
    {
        ViewGroup.LayoutParams lp = this.leftActionView.LayoutParameters;
        lp.Width = swipeActionEvent.CurrentOffset();
        this.leftActionView.LayoutParameters = lp;
    }

    if (swipeActionEvent.CurrentOffset() < -rightWidth)
    {
        ViewGroup.LayoutParams lp = this.rightActionView.LayoutParameters;
        lp.Width = -swipeActionEvent.CurrentOffset();
        this.rightActionView.LayoutParameters = lp;
    }
}

public void OnSwipeStarted(SwipeActionsBehavior.SwipeActionEvent swipeActionEvent)
{
    ViewGroup swipeView = (ViewGroup)swipeActionEvent.SwipeView();
    this.leftActionView = swipeView.GetChildAt(0);
    this.rightActionView = swipeView.GetChildAt(1);

    if (leftWidth == -1)
    {
        leftWidth = this.leftActionView.Width;
    }

    if (rightWidth == -1)
    {
        rightWidth = this.rightActionView.Width;
    }
}
```

In short, the `onSwipeStarted` callback is used to acquire the two `View` instances that represent the left and right swipe actions. Their initial size is also stored to be able to reset it at the end of the swipe procedure. Then, using the `onSwipeProgressChanged` callback we track the swipe offset and once it goes beyond one of the swipe actions' default size we start resizing the corresponding `View`.

## Swipe thresholds
By using the `swipeThresholdStart` and `swipeThresholdEnd` properties we can implement a behavior in which the item being swiped sticks open revealing an action or set of actions. Similar to popular Mail apps, we can implement a scenario which allows the end user to archive or delete an item from the list by using the thresholds. Take a look at the source below:

```Java
this.sab = new SwipeActionsBehavior();
this.sab.addListener(new SwipeActionsBehavior.SwipeActionsListener() {
    private int leftContentSize = -1;
    private int rightContentSize = -1;
    @Override
    public void onSwipeStarted(SwipeActionsBehavior.SwipeActionEvent swipeActionEvent) {
        View swipeView = swipeActionEvent.swipeView();
        if (this.leftContentSize == -1 || rightContentSize == -1) {
            sab.setSwipeThresholdStart((((ViewGroup)swipeView).getChildAt(0)).getWidth());
            sab.setSwipeThresholdEnd((((ViewGroup)swipeView).getChildAt(1)).getWidth());
        }
    }

    @Override
    public void onSwipeProgressChanged(SwipeActionsBehavior.SwipeActionEvent swipeActionEvent) {

    }

    @Override
    public void onSwipeEnded(SwipeActionsBehavior.SwipeActionEvent swipeActionEvent) {

    }

    @Override
    public void onExecuteFinished(SwipeActionsBehavior.SwipeActionEvent swipeActionEvent) {

    }

    @Override
    public void onSwipeStateChanged(SwipeActionsBehavior.SwipeActionsState swipeActionsState, SwipeActionsBehavior.SwipeActionsState swipeActionsState1) {

    }

});

this.listView.addBehavior(this.sab);
```
```C#
public void OnExecuteFinished(SwipeActionsBehavior.SwipeActionEvent p0)
{
}

public void OnSwipeEnded(SwipeActionsBehavior.SwipeActionEvent p0)
{

}

public void OnSwipeProgressChanged(SwipeActionsBehavior.SwipeActionEvent swipeActionEvent)
{
}

public void OnSwipeStateChanged(SwipeActionsBehavior.SwipeActionsState oldState, SwipeActionsBehavior.SwipeActionsState newState)
{
}

public void OnSwipeStarted(SwipeActionsBehavior.SwipeActionEvent swipeActionEvent)
{
    View swipeView = swipeActionEvent.SwipeView();
    if (this.leftContentSize == -1 || rightContentSize == -1)
    {
        sap.SetSwipeThresholdStart((((ViewGroup)swipeView).GetChildAt(0)).Width);
        sap.SetSwipeThresholdEnd((((ViewGroup)swipeView).GetChildAt(1)).Width);
    }
}
```
<snippet id='list-swipe-actions-thresholds-xamarin-1'/>

## Action animations
A popular scenario with Swipe Actions is to animate the swipe content once the user reaches beyond a given threshold. The purpose of this behavior is to inform the users of the app that the corresponding swipe action will be executed. This behavior can be implemented by using the `onSwipeProgressChanged` callback. Take a look at the following snippet:

```Java
this.sab = new SwipeActionsBehavior();
this.sab.addListener(new SwipeActionsBehavior.SwipeActionsListener() {
    private int leftWidth = -1;
    private int rightWidth = -1;
    private ViewGroup swipeView;
    private ViewGroup leftActionView;
    private ViewGroup rightActionView;
    private boolean animationApplied;
    @Override
    public void onSwipeStarted(SwipeActionsBehavior.SwipeActionEvent swipeActionEvent) {
        this.animationApplied = false;
        this.swipeView = (ViewGroup)swipeActionEvent.swipeView();
        this.leftActionView = (ViewGroup) this.swipeView.getChildAt(0);
        this.rightActionView = (ViewGroup) this.swipeView.getChildAt(1);

        if (leftWidth == -1) {
            leftWidth = this.leftActionView.getWidth();
        }

        if (rightWidth == -1) {
            rightWidth = this.rightActionView.getWidth();
        }
    }

    @Override
    public void onSwipeProgressChanged(SwipeActionsBehavior.SwipeActionEvent swipeActionEvent) {

        if (swipeActionEvent.currentOffset() > leftWidth){
            ViewGroup.LayoutParams lp = this.leftActionView.getLayoutParams();
            lp.width = swipeActionEvent.currentOffset();
            this.leftActionView.setLayoutParams(lp);
        }

        if (swipeActionEvent.currentOffset() < -rightWidth){
            ViewGroup.LayoutParams lp = this.rightActionView.getLayoutParams();
            lp.width = -swipeActionEvent.currentOffset();
            this.rightActionView.setLayoutParams(lp);
        }

        if (!this.animationApplied) {
            if (Math.abs(swipeActionEvent.currentOffset()) > Math.abs(leftWidth) * 1.5f) {
                if (swipeActionEvent.currentOffset() < 0) {
                    this.rightActionView.getChildAt(0).clearAnimation();
                    RotateAnimation ra = new RotateAnimation(0, 360, 0.5f, 0.5f);
                    ra.setInterpolator(new AccelerateDecelerateInterpolator());
                    ra.setDuration(200);
                    this.rightActionView.getChildAt(0).startAnimation(ra);
                } else if (swipeActionEvent.currentOffset() > 0) {
                    this.leftActionView.getChildAt(0).clearAnimation();
                    RotateAnimation ra = new RotateAnimation(0, 360, 0.5f, 0.5f);
                    ra.setInterpolator(new AccelerateDecelerateInterpolator());
                    ra.setDuration(200);
                    this.leftActionView.getChildAt(0).startAnimation(ra);
                }
                this.animationApplied = true;
            }
        }
    }

    @Override
    public void onSwipeEnded(SwipeActionsBehavior.SwipeActionEvent swipeActionEvent) {
        // Fired when the user releases the item being swiped.
    }

    @Override
    public void onExecuteFinished(SwipeActionsBehavior.SwipeActionEvent swipeActionEvent) {
        // Fired when the swipe-execute procedure has ended, i.e. the item being swiped is at
        // its original position.
        this.leftWidth = -1;
        this.rightWidth = -1;
        this.animationApplied = false;
    }

    @Override
    public void onSwipeStateChanged(SwipeActionsBehavior.SwipeActionsState swipeActionsState, SwipeActionsBehavior.SwipeActionsState swipeActionsState1) {

    }

});

this.listView.addBehavior(this.sab);
```
```C#
public void OnExecuteFinished(SwipeActionsBehavior.SwipeActionEvent p0)
{
    // Fired when the swipe-execute procedure has ended, i.e. the item being swiped is at
    // its original position.
    this.leftWidth = -1;
    this.rightWidth = -1;
    this.animationApplied = false;
}

public void OnSwipeEnded(SwipeActionsBehavior.SwipeActionEvent p0)
{

}

public void OnSwipeStateChanged(SwipeActionsBehavior.SwipeActionsState oldState, SwipeActionsBehavior.SwipeActionsState newState)
{
}

public void OnSwipeProgressChanged(SwipeActionsBehavior.SwipeActionEvent swipeActionEvent)
{
    if (swipeActionEvent.CurrentOffset() > leftWidth)
    {
        ViewGroup.LayoutParams lp = this.leftActionView.LayoutParameters;
        lp.Width = swipeActionEvent.CurrentOffset();
        this.leftActionView.LayoutParameters = lp;
    }

    if (swipeActionEvent.CurrentOffset() < -rightWidth)
    {
        ViewGroup.LayoutParams lp = this.rightActionView.LayoutParameters;
        lp.Width = -swipeActionEvent.CurrentOffset();
        this.rightActionView.LayoutParameters = lp;
    }

    if (!this.animationApplied)
    {
        if (Math.Abs(swipeActionEvent.CurrentOffset()) > Math.Abs(leftWidth) * 1.5f)
        {
            if (swipeActionEvent.CurrentOffset() < 0)
            {
                this.rightActionView.GetChildAt(0).ClearAnimation();
                RotateAnimation ra = new RotateAnimation(0, 360, 0.5f, 0.5f);
                ra.Interpolator = new AccelerateDecelerateInterpolator();
                ra.Duration = 200;
                this.rightActionView.GetChildAt(0).StartAnimation(ra);
            }
            else if (swipeActionEvent.CurrentOffset() > 0)
            {
                this.leftActionView.GetChildAt(0).ClearAnimation();
                RotateAnimation ra = new RotateAnimation(0, 360, 0.5f, 0.5f);
                ra.Interpolator = new AccelerateDecelerateInterpolator();
                ra.Duration = 200;
                this.leftActionView.GetChildAt(0).StartAnimation(ra);
            }
            this.animationApplied = true;
        }
    }
}

public void OnSwipeStarted(SwipeActionsBehavior.SwipeActionEvent swipeActionEvent)
{
    this.animationApplied = false;
    this.swipeView = (ViewGroup)swipeActionEvent.SwipeView();
    this.leftActionView = (ViewGroup)this.swipeView.GetChildAt(0);
    this.rightActionView = (ViewGroup)this.swipeView.GetChildAt(1);

    if (leftWidth == -1)
    {
        leftWidth = this.leftActionView.Width;
    }

    if (rightWidth == -1)
    {
        rightWidth = this.rightActionView.Width;
    }
}
```

In this case, besides resizing the swipe action's container, we track the swiped offset and animate the action's label once the offset passes a certain threshold.
