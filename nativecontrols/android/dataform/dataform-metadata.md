---
title: Metadata
page_title: RadDataForm Metadata  | Telerik UI for Xamarin.Android Documentation
description: This page describes how to use the data form metadata.
slug: data-form-metadata
tags: dataform, data, form, metadata
position: 5
publish: true
---

# RadDataForm: Metadata

When defining a class that will be edited by RadDataForm it is useful to annotate it with the **@DataFormProperty** annotation.
This annotation contains several attributes that help the data form editors to be rendered with precision. The available attributes
are label, index, column index, group, required, readOnly, skip, viewer, editor, converter and validator.

## Label

The label attribute is used for the header of the editor. If the label is not specified the header will be set to the property name without the get/set prefix.

## Index

The index is used by the layout manager to sort the editors by index.

## Column Index

The column index is used by the default layout which is a TableLayout and specifies in which column a given editor will be positioned.

## Column Span

The column span is used by the default layout which is a TableLayout and specifies how many columns a given editor will occupy.

## Group

The group attribute is used to group editors. A group of editors will be visually distinct and packed together when RadDataForm is rendered.

## ImageResource

The imageResource attribute is used by the editors to display an image inside the editor that can be used instead of a label if it will be descriptive enough for the users.

## Required

The required attribute is used by the editors to display a small notification to the end-user that certain fields can not be omitted.

## ReadOnly

When the readOnly attribute is set to true the setter for the associated property will be ignored and a **viewer** will be created instead of an editor.

## Skip

When skip is set to true the associated property will be ignored by RadDataForm and will not be available for editing or viewing.

## Viewer

A custom viewer can be specified by setting a custom viewer type.

## Editor

A custom editor can be specified by setting a custom editor type.

## EditorParams

Custom parameters used to properly set up the editor.

## Converter

Specifies a property value converter for the associated property.

## Validator

Specifies a custom validator for the associated property.

## ValidatorParams

Custom parameters used to properly set up the validator.

To annotate a class with @DataFormProperty, **only the getters of the properties should be annotated**. Any annotations on the setters will be ignored:

```Java
public class Person {
    private Integer age;
    private Boolean isEmployed;
    private EmployeeType employeeType;
    private String name;
    private String mail;
    private Long birthDate;
	
    @DataFormProperty(label = "Age", index = 1, validator = RangeValidator.class,
            validatorParams = @DataFormValidatorParams(min = 18, max = 70))
    public Integer getAge() {
        return age;
    }
    public void setAge(Integer value) {
        age = value;
    }
    @DataFormProperty(label = "Employee Type", index = 4)
    public EmployeeType getEmployeeType() {
        return employeeType;
    }
    public void setEmployeeType(EmployeeType value) {
        employeeType = value;
    }
    @DataFormProperty(label = "Name", index = 0)
    public String getName() {
        return name;
    }
    public void setName(String value) {
        name = value;
    }
    @DataFormProperty(label = "E-mail", index = 2, validator = MailValidator.class)
    public String getMail() {
        return mail;
    }
    public void setMail(String value) {
        this.mail = value;
    }
    @DataFormProperty(label = "Employed", index = 3, required = true)
    public boolean getIsEmployed() {
        return isEmployed;
    }
    public void setIsEmployed(boolean value) {
        isEmployed = value;
    }
    @DataFormProperty(label = "Birth Date", index = 5, 
		editor = DataFormTimeEditor.class, readOnly = true)
    public long getBirthDate() {
        return birthDate;
    }
    public void setBirthDate(long birthDate) {
        this.birthDate = birthDate;
    }
}
```
```C#
public class Person : Java.Lang.Object
{
	[DataFormProperty(Label = "Age", Index = 1, Validator = typeof(RangeValidator))]
	[DataFormValidatorParams(Min = 18, Max = 70)]
	public int Age 
	{
		get;
		set;
	}

	[DataFormProperty(Label = "Employee Type", Index = 4)]
	public EmployeeType EmployeeType 
	{
		get;
		set;
	}

	[DataFormProperty(Label = "Name", Index = 0)]
	public string Name 
	{
		get;
		set;
	}

	[DataFormProperty(Label = "E-mail", Index = 2, 
		Validator = typeof(MailValidator))]
	public string Mail 
	{
		get;
		set;
	}

	[DataFormProperty(Label = "Employed", Index = 3, Required = true)]
	public bool IsEmployed 
	{
		get;
		set;
	}
	
	[DataFormProperty(Label = "Birth Date", Index = 5, 
		Editor = typeof(DataFormTimeEditor), ReadOnly = true)]
    public long BirthDate 
	{
		get;
		set;
	}
}
```