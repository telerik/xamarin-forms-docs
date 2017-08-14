---
title: Group Layout
page_title: RadDataForm Group Layout | Telerik UI for Xamarin.Android Documentation
description: Explains how to use and customize the data form group layout.
slug: data-form-group-layout
tags: dataform, data, form, layout
position: 10
publish: true
---

# Using DataFormGroupLayoutManager

To separate the data form editors into groups, developers must use **DataFormGroupLayoutManager**.

```Java
// The context argument is the app context/activity.
dataForm.setLayoutManager(new DataFormGroupLayoutManager(context));
```
```C#
// The context argument is the app context/activity.
dataForm.LayoutManager = new DataFormGroupLayoutManager (context);
```

Each editor will be put in the group specified in the [@DataFormProperty]({% slug data-form-metadata %} "Read more about @DataFormProperty") annotation of the associated property. 
For example if we have a Reservation class with a ReservationDate property:
```Java
public class Reservation {
private long reservationDate;

	@DataFormProperty(group = "Reservation Date")
    public long getReservationDate() {
        return reservationDate;
    }

    public void setReservationDate(long reservationDate) {
        this.reservationDate = reservationDate;
    }
}
```
```C#
public class Reservation 
{
	[DataFormProperty(Group = "Reservation Date")]
	public long ReservationDate 
	{
		get;
		set;
	}
}
```

We can annotate the getReservation() method with the [@DataFormProperty]({% slug data-form-metadata %} "Read more about @DataFormProperty") annotation and specify the group for the editor.
With this information, DataFormGroupLayoutManager creates an **EditorGroup** object for each group. EditorGroup represents a layout
which contains a group header and a container for the editors for the group. Each EditorGroup can have a specific layout manager that
will be used to arrange its editors. By default EditorGroup uses [DataFormLinearLayoutManager]({% slug data-form-linear-layout %} "Read more about DataFormLinearLayoutManager"). 

## Specifying a layout manager for each group

Developers can specify a custom layout manager with the setLayaoutManager() method just like setLayoutManager() on RadDataForm:
```Java
editorGroup.setLayoutManager(new DataFormPlaceholderLayoutManager());
```
```C#
editorGroup.LayoutManager = new DataFormPlaceholderLayoutManager();
```

## Creating special groups or modifying the default ones

To get a reference to the required EditorGroup object, developers can supply a callback that creates groups for every group name. For example:
```Java
groupLayoutManager.setCreateGroup(new Function2<Context, String, EditorGroup>() {
            @Override
            public EditorGroup apply(Context context, String groupName) {
				if(groupName.equals("Reservation Date")) {
					EditorGroup group = new EditorGroup(context, groupName);
					group.setLayoutManager(
						new DataFormPlaceholderLayoutManager(context, 
							R.layout.placeholder_layout));
					return group;
				}
				
				// Returning null will invoke the default group creation logic.
                return null;
            }
        });
```
```C#
groupLayoutManager.CreateGroup = new CreateGroupImpl();

public class CreateGroupImpl : Java.Lang.Object, IFunction2 {
	public Java.Lang.Object Apply(Java.Lang.Object context, 
		Java.Lang.Object groupName) {
		
		if(groupName.Equals("Reservation Date")) {
			EditorGroup group = new EditorGroup(
				(Context)context, groupName.ToString());
			group.LayoutManager = 
				new DataFormPlaceholderLayoutManager(
					(Context)context, R.layout.placeholder_layout);
			return group;
		}

		// Returning null will invoke the default group creation logic.
		return null;
	}
}
```

If a property does not a have group set to it, it will be added to the default group which has a name of "", also known as the empty group.

When creating an EditorGroup developers can use another constructor that accepts a layout as its third argument. This allows custom group headers
and custom positioning of the group header compared to the editors container. For example:
```Java
EditorGroup group = 
	new EditorGroup(context, groupName, R.layout.custom_editor_group);
```
```C#
EditorGroup group = 
	new EditorGroup(context, groupName, Resource.Layout.custom_editor_group);
```

And the layout can look like this:
```XML
<LinearLayout xmlns:android="http://schemas.android.com/apk/res/android"
    android:orientation="vertical"
    android:layout_width="match_parent"
    android:layout_height="wrap_content">

    <TextView android:visibility="gone"
        android:id="@+id/data_form_group_header"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content" />

	<FrameLayout
		android:id="@+id/data_form_editor_group_container"
		android:layout_width="match_parent"
		android:layout_height="wrap_content"/>
</LinearLayout>
```

Here the TextView with id data_form_group_header and the ViewGroup with id data_form_editor_group_container are **mandatory**.

## Sorting the editor groups

The editor groups in DataFormGroupLayoutManager can be sorted by providing a simple callback by calling setSortGroups(). For example:
```Java
groupLayoutManager.setSortGroups(new Procedure<List<EditorGroup>>() {
		@Override
		public void apply(List<EditorGroup> argument) {
			Collections.sort(argument, new Comparator<EditorGroup>() {
				@Override
				public int compare(EditorGroup lhs, EditorGroup rhs) {
					return lhs.name().compareTo(rhs.name());
				}
			});
		}
	});
```
```C#
groupLayoutManager.SortGroups = new SortGroupsImpl();

public class SortGroupsImpl : Java.Lang.Object, IFunction, Java.Util.IComparator {
	public Java.Lang.Object Apply(Java.Lang.Object arg) {
		Java.Util.IList groups = (Java.Util.IList)arg;
		List<EditorGroup> groupsList = 
			new List<EditorGroup> (groups.ToEnumerable<EditorGroup> ());
		Java.Util.Collections.Sort (groupsList, this);

		return Java.Util.ArrayList.FromArray (groupsList.ToArray ());
	}

	public int Compare(Java.Lang.Object lhs, Java.Lang.Object rhs) {
		EditorGroup left = (EditorGroup)lhs;
		EditorGroup right = (EditorGroup)rhs;
		return right.Name ().CompareTo (left.Name());
	}
}
```

## Using ExpandableEditorGroup

Finally, developers can make use of another group which is called **ExpandableEditorGroup**.
The ExpandableEditorGroup class has one property - **IsExpanded**.
ExpandableEditorGroup can also be created with a flag that indicates that it can be expanded only
once. After it is expanded, the collapse button disappears.

```Java
// The third argument indicates whether the group can be expanded only once.
ExpandableEditorGroup expandableGroup = 
	new ExpandableEditorGroup(context, "Reservation Date", true);
expandableGroup.setIsExpanded(false);
```
```C#
// The third argument indicates whether the group can be expanded only once.
ExpandableEditorGroup expandableGroup = 
	new ExpandableEditorGroup (Context, "Reservation Date", true);
expandableGroup.IsExpanded = false;
```