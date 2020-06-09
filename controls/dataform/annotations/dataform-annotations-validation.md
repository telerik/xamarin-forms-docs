---
title: Validation Attribute
page_title: Xamarin DataForm Documentation | Validation Attribute
description: Check our &quot;Validation Attribute&quot; documentation article for Telerik DataForm for Xamarin control.
slug: dataform-annotations-validation
---

## Validation Annotations

Validators are special type of attributes that can be used to ensure that the users' input falls within an expected range of values. Validators should implement the **IPropertyValidator** interface defining the following members:

- **PositiveFeedback** (string): The message that is displayed in the editor if the property value is valid.
- **NegativeFeedback** (string): The message that is displayed in the editor if the property value is invalid.
- bool **Validate** (object *value*): A method that decides whether the property value is valid or not.

The following list contains the available implementations that we provide and can be used out of the box:

- **DateRangeValidatorAttribute**: Validates if a DateTime value falls within a given interval. Here are the validator properties:
 - MinYear (int)
 - MinMonth (int)
 - MinDay (int)
 - MaxYear (int)
 - MaxMonth (int)
 - MaxDay (int)
- **EmailValidatorAttribute**: Validates if a string matches the e-mail format **[string]@[string].[string]**.
- **NonEmptyValidatorAttribute**: Validates if an editor has non null value.
- **NumericalRangeValidatorAttribute**: Validates if a number falls within a given interval. Here are the validator properties:
	- Min (double)
	- Max (double)
	- Step (double)

 >This attribute sets the Minimum, Maximum and Step properties of the created editor (e.g. RadSlider).
- **PhoneNumberValidatorAttribute**: Validates if a string matches the phone number requirements.
- **RegularExpressionValidatorAttribute**: Validates if a string matches a custom regex pattern.
	- Pattern (string)
	- Options (RegexOptions)
- **StringLengthValidatorAttribute**: Validates if a string has specific length.
	- MinLength (int)
	- MaxLength (int)

Users can also define their custom validators. The only requirement is to implement the **IPropertyValidator** interface or to inherit from the base implementation - the **ValidatorBaseAttribute** class.

### Example

This example will demonstrate how to create a custom validator and also how to use the default ones. 

Here is a sample class that has an "Occupation" property:

<snippet id='dataform-dataannotations-validation-source'/>

Let's create a validator that ensures that the person occupation is not "Unspecified".

<snippet id='dataform-dataannotations-validation-gendervalidationattribute'/>

And here is the data form setup:

<snippet id='dataform-dataannotations-validation-form'/>
	
## See Also

- [Converter Attribute]({%slug dataform-annotations-converter%})
- [DataSourceKey Attribute]({%slug dataform-annotations-data-source-key%})
- [DisplayOptions Attribute]({%slug dataform-annotations-display-options%})
- [DisplayValueFormat Attribute]({%slug dataform-annotations-display-value-format%})
- [Ignore Attribute]({%slug dataform-annotations-ignore%})
- [NativeConversionContext Attribute]({%slug dataform-annotations-native-convertion-context%})
- [ReadOnly Attribute]({%slug dataform-annotations-read-only%})
