---
title: Converter Attribute
page_title: Converter Attribute
slug: dataform-annotations-converter
position: 5
---

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