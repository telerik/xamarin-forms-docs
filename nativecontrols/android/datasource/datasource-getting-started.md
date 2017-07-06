---
title: Getting Started
page_title: RadDataSource Getting Started | Telerik UI for Android Documentation
description: A simple example of how to get up and running with RadDataSource.
slug: datasource-getting-started
tags: raddatasource, gettingstarted, datasource
position: 2
publish: true
---

## RadDataSource: Getting Started

To use **RadDataSource** developers first need raw data in a collection of some sort. Then RadDataSource can be constructed like this:

```Java
// This method gets the raw data from somewhere. (web service, file etc.)
ArrayList<Person> rawData = getData(); 
RadDataSource<Person> dataSource = new RadDataSource<Person>(rawData);
```
```C#
// This method gets the raw data from somewhere. (web service, file etc.)
Java.Util.ArrayList rawData = GetData();
RadDataSource dataSource = new RadDataSource (rawData);
```

Once the data source is constructed the data can be filtered, sorted and grouped:

```Java
// Get all people less than 18 years of age.
dataSource.filterDescriptors().add(new Function<Person, Boolean>() {
	@Override
	public Boolean apply(Person argument) {
		return argument.age < 18;
	}
});

// Sort them by name
dataSource.sortDescriptors().add(new Function2<Person, Person, Integer>() {
	@Override
	public Integer apply(Person argument1, Person argument2) {
		return argument1.name.compareTo(argument2.name);
	}
});

// Finally group them by nationality.
dataSource.groupDescriptors().add(new Function<Person, Object>() {
	@Override
	public Object apply(Person argument) {
		return argument.nationality;
	}
});
```

```C#
public class Person : Java.Lang.Object
{
	public int age;
	public string name;
	public string nationality;
}

public class AgeFilterDescriptor : Java.Lang.Object, IFunction
{
	public Java.Lang.Object Apply(Java.Lang.Object argument)
	{
		Person person = (Person)argument;
		return person.age < 18;
	}
}

public class NameSortDescriptor : Java.Lang.Object, IFunction2
{
	public Java.Lang.Object Apply(Java.Lang.Object arg1, Java.Lang.Object arg2)
	{
		Person person1 = (Person)arg1;
		Person person2 = (Person)arg2;

		return person1.name.CompareTo(person2.name);
	}
}

public class NationalityGroupDescriptor : Java.Lang.Object, IFunction
{
	public Java.Lang.Object Apply(Java.Lang.Object argument)
	{
		Person person = (Person)argument;
		return person.nationality;
	}
}
```

>The order in which the descriptors are added does not matter. RadDataSource always filters first, sorts second and groups last.

Finally when the data is processed it can be consumed in two ways. One is the **view()** method, which returns the data in full hierarchy (if grouped multiple times). The other is the **flatView()** method which,
as the method name says, returns the hierarchical data flattened to a single level. Both methods return lists of DataItem<Person>. The **DataItem** class wraps the native data so that the data source can represent 
groups and actual data items. A DataItem<Person> is a group if it does not have an entity associated, that is if its **entity()** method returns null. A group can also be recognized if it has a non-null **groupKey()** value.

```Java
for(DataItem<Person> dataItem : dataSource.flatView()) {
	if(dataItem.entity() == null) {
		Log.d("DataSource: ", dataItem.groupKey().toString());
	} else {
		Log.d("DataSource:", dataItem.entity().toString());
	}
}
```

```C#
foreach (Java.Lang.Object data in dataSource.FlatView()) 
{
	DataItem dataItem = data.JavaCast<DataItem> ();

	if (dataItem.Entity () == null) {
		Console.WriteLine (dataItem.GroupKey ().ToString ());
	} else {
		Console.WriteLine (dataItem.Entity ().ToString ());
	}
}
```

>RadDataSource never modifies the raw data provided.

To see how to use RadDataSource with RadListView have a look at [this article]({% slug listview-data %}).