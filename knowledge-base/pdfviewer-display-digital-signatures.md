---
title: Display digital signatures in PdfViewer
description: how to display digital signatures in pdfviewer
type: how-to
page_title: how to display digital signatures in pdfviewer
slug: pdfviewer-display-digital-signatures
position: 
tags: 
ticketid: 1522883
res_type: kb
---

## Environment
<table>
	<tbody>
		<tr>
			<td>Product Version</td>
			<td>2021.1.224.1</td>
		</tr>
		<tr>
			<td>Product</td>
			<td>PdfViewer for Xamarin</td>
		</tr>
	</tbody>
</table>


## Description

This article will show you how to display dgital signature in PdfViewer for Xamarin

## Solution

Signatures are actually widgets which are part of the document, but are not included in its content, they're rendered over the content at their required position. 

Import the pdf document through our [PdfProcessing library]({%slug radpdfprocessing-overview%}):

```C#
public MainPage()
{
    InitializeComponent();
    PdfFormatProvider pdfFormatProvider = new PdfFormatProvider();
    RadFixedDocument document;

    Assembly assembly = typeof(MainPage).Assembly;
    string fileName = assembly.GetManifestResourceNames().FirstOrDefault(n => n.Contains("Receta Simple A.pdf"));
    Stream stream = assembly.GetManifestResourceStream(fileName);

    document = pdfFormatProvider.Import(stream);
    FlattenFormFields(document);
}
```

Remove the Signature widget and add its default appearance to the content. 

```C#
public static void FlattenFormFields(RadFixedDocument document)
{
    foreach (RadFixedPage page in document.Pages)
    {
        List<Widget> widgetsToRemove = new List<Widget>();
        FixedContentEditor pageEditor = new FixedContentEditor(page);

        foreach (Annotation annotation in page.Annotations)
        {
            if (annotation.Type == AnnotationType.Widget)
            {
                Widget widget = (Widget)annotation;
                FlattenWidgetAppearance(pageEditor, widget);
                widgetsToRemove.Add(widget);
            }
        }

        foreach (Widget widget in widgetsToRemove)
        {
            page.Annotations.Remove(widget);
        }
    }

    foreach (FormField field in document.AcroForm.FormFields.ToArray())
    {
        document.AcroForm.FormFields.Remove(field);
    }
}

private static void FlattenWidgetAppearance(FixedContentEditor pageEditor, Widget widget)
{
    FormSource widgetAppearance = GetWidgetNormalAppearance(widget);
    pageEditor.Position.Translate(widget.Rect.Left, widget.Rect.Top);
    pageEditor.DrawForm(widgetAppearance, widget.Rect.Width, widget.Rect.Height);
}

private static FormSource GetWidgetNormalAppearance(Widget widget)
{
    FormSource widgetAppearance;
    switch (widget.WidgetContentType)
    {
        case WidgetContentType.PushButtonContent:
            widgetAppearance = ((PushButtonWidget)widget).Content.NormalContentSource;
            break;
        case WidgetContentType.SignatureContent:
            widgetAppearance = ((SignatureWidget)widget).Content.NormalContentSource;
            break;
        case WidgetContentType.VariableContent:
            widgetAppearance = ((VariableContentWidget)widget).Content.NormalContentSource;
            break;
        case WidgetContentType.TwoStatesContent:
            TwoStatesButtonWidget twoStatesWidget = (TwoStatesButtonWidget)widget;
            widgetAppearance = GetTwoStatesWidgetNormalAppearance(twoStatesWidget);
            break;
        default:
            throw new NotSupportedException(string.Format("Not supported widget content type {0}", widget.WidgetContentType));
    }

    return widgetAppearance;
}

private static FormSource GetTwoStatesWidgetNormalAppearance(TwoStatesButtonWidget twoStatesWidget)
{
    FormField field = twoStatesWidget.Field;
    bool isOnState;

    switch (field.FieldType)
    {
        case FormFieldType.CheckBox:
            CheckBoxField checkBox = (CheckBoxField)field;
            isOnState = checkBox.IsChecked;
            break;
        case FormFieldType.RadioButton:
            RadioButtonField radio = (RadioButtonField)field;
            RadioButtonWidget radioWidget = (RadioButtonWidget)twoStatesWidget;

            if (radio.ShouldUpdateRadiosInUnison)
            {
                isOnState = radio.Value != null && radio.Value.Value.Equals(radioWidget.Option.Value);
            }
            else
            {
                isOnState = radio.Value == radioWidget.Option;
            }
            break;
        default:
            throw new NotSupportedException(string.Format("Not supported field type {0} for TwoStateButtonWidget", field.FieldType));
    }

    FormSource widgetAppearance = (isOnState ? twoStatesWidget.OnStateContent : twoStatesWidget.OffStateContent).NormalContentSource;

    return widgetAppearance;
}
```


Set the updated document as Source to the PdfViewer.

```C#
this.pdfViewer.Source = document;
```
