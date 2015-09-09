---
title: Validation Data Annotations
page_title: Validation Data Annotations
slug: dataform-data-annotations-validation
---

# Validation Data Annotations

Validators are special type of attributes that implement the **IPropertyValidator** interface. It defines the following members:

- **ErrorMessage** (string): The error message that is displayed in the editor if the property value is invalid.
- bool **Validate**(object *value*): A method that decides whether the property value is valid or not.

Here are listed all available validators:

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

## Example

	public enum Gender { Unspecified, Male, Female }
	
	public class Person : NotifyPropertyChangedBase
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
