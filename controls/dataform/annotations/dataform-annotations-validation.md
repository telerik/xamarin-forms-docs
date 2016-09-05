---
title: Validation Attribute
page_title: Validation Attribute
slug: dataform-annotations-validation
position: 4
---

## Validation Annotations

Validators are special type of attributes that can be used to ensure if the users' input falls within the expected range of values. Each of these validators implement the **IPropertyValidator** interface defining the following members:

- **ErrorMessage** (string): The error message that is displayed in the editor if the property value is invalid.
- bool **Validate** (object *value*): A method that decides whether the property value is valid or not.

The following list contains the available annotations that are shipped and can be used out of the box:

- **DateRangeValidatorAttribute** - validates if a DateTime value is part of a given interval
	- MinYear (int)
	- MinMonth (int)
	- MinDay (int)
	- MaxYear (int)
	- MaxMonth (int)
	- MaxDay (int)
- **EmailValidatorAttribute** - validates if a string matches the e-mail format **[string]@[string].[string]**
- **NonEmptyValidatorAttribute** - validates if an editor has any value set
- **NumericalRangeValidatorAttribute** - validates if a number is in given interval

>This attribute sets the Minimum, Maximum and Step properties of the created editor (e.g. RadSlider)

	- Min (double)
	- Max (double)
	- Step (double)
- **PhoneNumberValidatorAttribute** - validates if a string matches the phone number requirements
- **RegularExpressionValidatorAttribute** - validates if a string matches the provided custom pattern
	- Pattern (string)
	- Options (RegexOptions)
- **StringLengthValidatorAttribute** - validates if a string has specified length
	- MinLength (int)
	- MaxLength (int)

Users can also define their custom validators. The only requirement is to implement the **IPropertyValidator** interface or to inherit from the base implementation - the **ValidatorBaseAttribute** class.

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
	
## See Also
- [Ignore Attribute]({%slug dataform-annotations-ignore%})
- [Converter Attribute]({%slug dataform-annotations-converter%})
- [Data Source Key Attribute]({%slug dataform-annotations-data-source-key%})
- [Display Option Attribute]({%slug dataform-annotations-display-option%})
- [Display Value Format Attribute]({%slug dataform-annotations-display-value-format%})
- [Read Only Attribute]({%slug dataform-annotations-read-only%})