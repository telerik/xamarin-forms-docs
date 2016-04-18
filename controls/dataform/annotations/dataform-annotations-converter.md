---
title: Converter Attribute
page_title: Converter Attribute
slug: dataform-annotations-converter
position: 5
---

## ConverterAttribute

There are cases when the editors require types that are not the same as the property type defined in the business object. In these case users can use a converter class. This is a custom class implementing the **IPropertyConverter** interface. The next example demonstrates how such converted can be used.

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
                    this.OnPropertyCanged();
                }
            }
        }
    }

    public class IntDoublePropertyConverter : IPropertyConverter
    {
        public object ConvertPropertyValue(object value)
        {
            return System.Convert.ToInt32(value);
        }

        public object ConvertEditorValue(object value)
        {
            return System.Convert.ToDouble(value);
        }
    }

	dataForm.RegisterEditor("Age", EditorType.NumberPickerEditor);
				
## Read More
- [Validation Attribute]({%slug dataform-annotations-validation%})
- [Data Source Key Attribute]({%slug dataform-annotations-data-source-key%})
- [Display Option Attribute]({%slug dataform-annotations-display-option%})
- [Display Value Format Attribute]({%slug dataform-annotations-display-value-format%})
- [Ignore Attribute]({%slug dataform-annotations-ignore%})
- [Read Only Attribute]({%slug dataform-annotations-read-only%})