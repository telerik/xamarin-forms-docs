---
title: Validate and Commit
page_title: Validate and Commit
slug: dataform-validate-and-commit
position: 5
---

## Validate

All members related to validation are listed below:

### Properties

- **ValidationMode** (ValidationMode): 
 - *Immediate*: Property value is validated after every change in editor. 
 - *OnLostFocus*: Property value is validated after editor looses focus.
 - *Manual*: Property value is validated only with explicit call of a validate method or on commit.

### Methods

- void **ValidateAll**(): Validates all properties and when finished, raises the **FormValidationFinished** event.
- void **ValidateProperty**(string *propertyName*): Validates the property with the specified name and when finished raises the **PropertyValidationFinished** event.

### Events

- **FormValidationFinished**: Occurs when a property validation has finished. Provides information about whether the property has passed validation.
- **PropertyValidationFinished**: Occurs when all form properties are validated. Provides a list of failed properties.

## Commit

All members related to committing are listed below:

### Properties

- **CommitMode** (CommitMode):  
 - *Immediate*: Property value is committed after each change in the editor. 
 - *OnLostFocus*: Property value is committed after after editor looses focus.
 - *Manual*: Property value is committed only with explicit call of commit method.

### Methods

- void **CommitAll**(): Commits all properties.
- void **CommitProperty**(string *propertyName*): Commits the property with the specified name.

> All commit methods call validation first. If the property value passes validation, then the corresponding validation finished event is raised and the value is committed successfully.