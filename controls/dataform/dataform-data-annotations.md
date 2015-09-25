---
title: Data Annotations
page_title: Data Annotations
slug: dataform-data-annotations
---

# Data Annotations


## DisplayOptionsAttribute

The **DisplayOptionsAttribute** defines the following properties:

- Header (string)
- Group (string)
- Position (int)
- PlaceholderText (string)

All properties are optional.

### Example

	[DisplayOptions( Header = "Age", Position = 0, PlaceholderText = "age")]
	public int Age { get; set; }

## IgnoreAttribute

Properties marked with this attribute are ignored by the data form.

### Example

	[Ignore]
	public int Age { get; set; }

## ReadOnlyAttribute

Properties marked with this attribute can not be edited. There are differences between the platforms:

- **iOS**: The editors are in disabled state.
- **Android**: Viewers are used instead of editors. 

### Example

	[ReadOnly]
	public int Age { get; set; }

## DataSourceKeyAttribute

The DataSourceKeyAttribute defines the following property:

- Key (object): Specifies the key that is used by **PropertyDataSourceProvider** property of RadDataForm.

Some editors require a list of possible values, e.g. picker editors. These values are provided by a special class that implements the **IPropertyDataSourceProvider** interface. It has two methods:

-  IList **GetSourceForKey**(object *key*): Provides a list of values for properties with specific key defined with the DataSourceKeyAttribute. 
-  IList **GetSourceForType**(Type *type*): Provides a list of values for a specific property type. This method has less priority than the GetSourceForKey method. 

Our default implementation - the PropertyDataSourceProvider class automatically provides values for enum types. In all other cases you have to use your own implementation of the IPropertyDataSourceProvider interface.

### Example

	[DataSourceKey("Location")]
	public string Location { get; set; }

Here is the implementation that will provide a list of available locations for all properties that have DataSourceKeyAttribute defined with Key="Location".

	public class UserPropertyDataSourceProvider : PropertyDataSourceProvider
	{
	    public override IList GetSourceForKey(object key)
	    {
	        if (key == "Location")
	        {
	            return new List<string> { "Top", "Bottom", "Left", "Right" };
	        }
	
	        return null;
	    }
	}

You have to specify the property data source provider for the data form:

	dataForm.PropertyDataSourceProvider = new UserPropertyDataSourceProvider();

Finally, replace the default text editor with a picker editor:

	dataForm.RegisterEditor("Location", EditorType.PickerEditor);

## Validation Annotations

Validators are special type of attributes that implement the **IPropertyValidator** interface. It defines the following members:

- **ErrorMessage** (string): The error message that is displayed in the editor if the property value is invalid.
- bool **Validate**(object *value*): A method that decides whether the property value is valid or not.

Here are listed the available validators:

- **DateRangeValidatorAttribute**
	- MinYear (int)
	- MinMonth (int)
	- MinDay (int)
	- MaxYear (int)
	- MaxMonth (int)
	- MaxDay (int)
- **EmailValidatorAttribute**
- **NonEmptyValidatorAttribute**
- **NumericalRangeValidatorAttribute**
	- Min (double)
	- Max (double)
	- Step (double)
- **PhoneNumberValidatorAttribute**
- **RegularExpressionValidatorAttribute**
	- Pattern (string)
	- Options (RegexOptions)
- **StringLengthValidatorAttribute**
	- MinLength (int)
	- MaxLength (int)

You can also define your custom validators. You can directly implement the **IPropertyValidator** interface or inherit from our base implementation - the **ValidatorBaseAttribute** class.

### Example

	public enum Gender { Unspecified, Male, Female }
	
	public class Person
	{
	    [NumericalRangeValidator(10, 15)]
	    public int Age { get; set; }
	
	    [GenderValidatorAttribute]
	    public Gender Gender { get; set; }
	
	    [NonEmptyValidatorAttribute("Name is required!")]
	    public string Name { get; set; }
	    }
	}
	
	public class GenderValidatorAttribute : ValidatorBaseAttribute
	{
	    public GenderValidatorAttribute()
	    {
	        this.ErrorMessage = "invalid gender";
	    }
	
	    protected override bool ValidateCore(object value)
	    {
	        return (Gender)value != Gender.Unspecified;
	    }
	}

## ConverterAttribute

Sometimes the editors work with types that are not the same as the property type. In this case you can use a converter. The converters should implement the **IPropertyConverter** interface. The converter attribute requires the type of the converter that will be used.

### Example

	public class Person : NotifyPropertyChangedBase
	{
        [Converter(typeof(IntDoublePropertyConverter))]
        public int Age
        {
            get
            {
                return this.age;
            }
            set
            {
                if (this.age != value)
                {
                    this.age = value;
                    this.RaisePropertyCanged();
                }
            }
        }
    }

    public class IntDoublePropertyConverter : IPropertyConverter
    {
        public object ConvertPropertyValue(object value)
        {
            return (double)(int)value;
        }

        public object ConvertEditorValue(object value)
        {
            return (int)(double)value;
        }
    }

	dataForm.RegisterEditor("Age", EditorType.NumberPickerEditor);
