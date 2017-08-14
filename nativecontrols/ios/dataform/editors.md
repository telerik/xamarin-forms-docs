---
title: Editors
page_title: TKDataForm Editors
position: 6
---


# RadDataForm: Built-in Editors

The **RadDataForm** contains many built-in property editors that are either automatically resolved depending on the property's type or by the **dataSource** `editorClass` of the **TKDataForm**. The RadDataForm currently ships with the following built-in editors:

- TKDataFormAutocompleteController
- TKDataFormAutocompleteEditor
- TKDataFormTextFieldEditor
- TKDataFormMultilineTextEditor
- TKDataFormEmailEditor
- TKDataFormPasswordEditor
- TKDataFormNamePhoneEditor
- TKDataFormPhoneEditor
- TKDataFormDecimalEditor
- TKDataFormNumberEditor
- TKDataFormSwitchEditor
- TKDataFormStepperEditor
- TKDataFormSliderEditor
- TKDataFormSegmentedEditor
- TKDataFormInlineEditor
- TKDataFormDatePickerEditor
- TKDataFormTimePickerEditor
- TKDataFormOptionsEditor
- TKDataFormPickerViewEditor
- TKDataFormCustomEditor

# Using the 'TKDataFormAutocompleteController'

The TKDataFormAutocompleteController is a bit more advanced editor which provides an out of the box quick search functionality. This editor uses the **TKAutoCompleteTextView** stand alone element and all its functionality like `DisplayMode` is available to the RadDataForm editor.

In order to set a specific editor to a property of your data source all that you need is set the `editorClass` of that element in the **TKDataFormEntityDataSource**

## Setting the suggestions 'source'

Because of the nature of the RadAutoCompleteTextView the editor which exposes its functionality requires some additional data to be passed to it which will be used as the 'suggestions' when a user starts typing in its text box.

Passing this data can be done in multiple different approaches depending on which one is the easiest for your scenario:

- By using the `valuesProvider` property of the **TKDataFormEntityDataSource** and setting it to array of strings

## Setting the DisplayMode

If you are familiar with the TKAutoCompleteTextView element you know that is supports out of the box two different selected items display modes:

- Token - the selected item from the 'suggestion box' is displayed as a box with a remove 'X' button
- Plain - the selected item's text is appended and autocompleted after an item from the 'suggestion box' is selected

When using the `DataFormRadAutoCompleteEditor` you too have the option to change the editor's `displayMode` by simply setting the `autoCompleteDisplayMode` of the specific element in the TKDataFormEntityDataSource.

The full Objective-C source code of the above example can be found [here](https://github.com/telerik/ios-sdk/blob/5adf23c7fbc20087aba2cfe04a56fca6d2b56370/TelerikUIExamples/TelerikUIExamples/DataFormEditorsAutoComplete.m).