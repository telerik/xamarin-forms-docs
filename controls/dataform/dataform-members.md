---
title: Members
page_title: Members
position: 2
slug: dataform-members
---

# Members

## Properties

- **Source** (object):
- **ValidationMode** (ValidationMode):  
{ Immediate, OnLostFocus, Manual }
- **CommitMode** (CommitMode):  
{ Immediate, OnLostFocus, Manual }
- **PropertyDataSourceProvider** (IPropertyDataSourceProvider): 

## Methods

- void **RegisterEditor**(Type *propertyType*, EditorType *editorType*): 
- void **RegisterEditor**(string *propertyName*, EditorType *editorType*): 
- void **Reload**(): 
- void **CommitAll**(): 
- void **ValidateAll**(): 
- void **CommitProperty**(string *propertyName*): 
- void **ValidateProperty**(string *propertyName*): 

## Events

- **FormValidationFinished**: 
- **PropertyValidationFinished**: 
