---
title: Validation
page_title: DataForm Validation | Telerik UI for Xamarin.iOS Documentation
description: Check our Validation documentation article for Telerik DataForm for Xamarin.iOS.
position: 3
---

## DataForm for Xamarin.iOS: Validation

<img src="../images/dataform-validation001.png" />

## Validation Modes

TKDataForm supports three validation modes:

- Immediate - validation will be performed every time the property value is changed.
- OnLostFocus - validation will be performed when the editor focus is changed to another editor.
- Delayed - validation will be performed explicitly when<code>Commit</code> method of <code>TKDataForm</code> is called. This option is used only with commit mode <code>TKDataFormCommitModeDelayed</code>

Here is an example how to set a validation mode to <code>TKDataForm</code>:

```C#
this.DataForm.ValidationMode = TKDataFormValidationMode.Immediate;
```

## Validating TKDataFormEntityProperty

There are 2 options to validate a property - using <code>TKDataFormDelegate</code> or using validators that adopt <code>TKDataFormValidator</code> protocol.

### Adopting TKDataFormValidator

<code>TKDataFormValidator</code> protocol has 2 required methods - <code>ValidateProperty</code> and <code>ValidationMessage</code>. <code>ValidateProperty</code> method is used to perform the actual validation and return a boolean value indicating if the property value is valid. <code>ValidationMessage</code> method should return a feedback message that will be displayed to the user of your application. After you implement a validator you should set the <code>Validators</code> property of the <code>TKDataFormEntityProperty</code> that will be validated.

In addition, you can take advantage of a few predefined validators, for example <code>TKDataFormEmailValidator</code>, <code>TKDataFormMaximumLengthValidator</code>, <code>TKDataFormNonEmptyValidator</code>, <code>TKDataFormPhoneValidator</code> and <code>TKDataFormRangeValidator</code>.

```C#
TKDataFormMinimumLengthValidator passwordValidator = new TKDataFormMinimumLengthValidator (6);
passwordValidator.ErrorMessage = "Password must be at least 6 characters!";
password.Validators = new NSObject[] { passwordValidator };
```

### Validating through TKDataFormDelegate

To validate a property through <code>TKDataFormDelegate</code> you should implement its <code>ValidateProperty</code> that returns a boolean value indicating if the property value is valid:

```C#
public override bool ValidateProperty (TKDataForm dataForm, TKEntityProperty property, TKDataFormEditor editor)
{
}
```

## Check for validation errors

When you want to simply check if there are any validation errors in the <code>TKDataForm</code> you can use its <code>HasValidationErrors</code> method.

```C#
var hasValidationErrors = dataForm.HasValidationErrors();
```