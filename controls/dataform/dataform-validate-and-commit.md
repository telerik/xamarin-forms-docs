---
title: Validate and Commit
page_title: Validate and Commit
slug: dataform-validate-and-commit
---

# Validate

- **ValidationMode** (ValidationMode): { Immediate, OnLostFocus, Manual }
- void **ValidateAll**(): Validates all properties.
- void **ValidateProperty**(string *propertyName*): Validates the property with the specified name. 
- **FormValidationFinished**: 
- **PropertyValidationFinished**: 

# Commit

- **CommitMode** (CommitMode):  
{ Immediate, OnLostFocus, Manual }
- void **CommitAll**(): Commits all properties.
- void **CommitProperty**(string *propertyName*): Commits the property with the specified name.

