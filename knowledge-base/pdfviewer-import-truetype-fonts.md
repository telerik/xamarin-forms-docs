---
title: How to embed TrueType fonts in PdfViewer with PdfProcessing library
description: How to import TrueType fonts in Telerik Xamarin PdfViewer
type: how-to
page_title: Import non-embedded TrueType fonts to PdfViewer through PdfProcessing
slug: pdfviewer-import-truetype-fonts
position: 
tags: pdfviewer, truetype, fonts, pdfprocessing
ticketid: 1480397
res_type: kb
---

## Environment
<table>
	<tbody>
		<tr>
			<td>Product Version</td>
			<td>R1 2021</td>
		</tr>
		<tr>
			<td>Product</td>
			<td>PdfViewer for Xamarin</td>
		</tr>
	</tbody>
</table>


## Description

The text in certain pdf documents is not displayed correctly in Telerik Xamarin PdfViewer -  a possible reason is when the document uses non-embedded TrueType fonts. This can be easily seen when opening the pdf document in Adobe and checking Document Properties -> Fonts - here the used TrueType fonts are listed. Since the fonts are not provided on import, the RadPdfViewer renderer fallbacks to default fonts which leads to the undesirable results with the rendered text.

## Solution

In order to workaround the issue, you can use the [PdfProcessing](https://docs.telerik.com/devtools/document-processing/libraries/radpdfprocessing/overview) library and import the missing fonts before passing the pdf document to the PdfViewer control. You would need to use the FontsRepository class  to [register a font file and create a font instance](https://docs.telerik.com/devtools/document-processing/libraries/radpdfprocessing/concepts/fonts#embedded-fonts).

Below you can find a sample implementation showing how you can utilize RadPdfProcessing library to import the needed font.

> verdana.ttf file should be added to the Xamarin.Forms project as an **Embedded Resource**.

```C#
using System;
using System.IO;
using System.Linq;
using System.Reflection;
using Telerik.Documents.Core.Fonts;
using Telerik.Windows.Documents.Fixed.FormatProviders.Pdf;
using Telerik.Windows.Documents.Fixed.Model;
using Telerik.Windows.Documents.Fixed.Model.Common;
using Telerik.Windows.Documents.Fixed.Model.Fonts;
using Telerik.Windows.Documents.Fixed.Model.Text;
using Xamarin.Forms;

namespace XamarinSampleApp
{
    public partial class MainPage : ContentPage
    {
        public MainPage()
        {
            InitializeComponent();

            //Register Verdana font
            byte[] fontData = ExtractResource("verdana.ttf");

            FontFamily verdanaFontFamily = new FontFamily("Verdana");
            FontStyle fontStyle = FontStyles.Normal;
            FontWeight fontWeight = FontWeights.Normal;
            FontsRepository.RegisterFont(verdanaFontFamily, fontStyle, fontWeight, fontData);
            FontsRepository.TryCreateFont(verdanaFontFamily, fontStyle, fontWeight, out FontBase verdana);

            PdfFormatProvider pdfFormatProvider = new PdfFormatProvider();
            RadFixedDocument document;

            //Import the pdf document
            Assembly assembly = typeof(MainPage).Assembly;
            string fileName = assembly.GetManifestResourceNames().FirstOrDefault(n => n.Contains("my_document.pdf"));
            Stream stream = assembly.GetManifestResourceStream(fileName);
            
            document = pdfFormatProvider.Import(stream);
           
            //Appy the font to the text fragments in the document
            foreach (RadFixedPage page in document.Pages)
            {
                foreach (ContentElementBase contentElement in page.Content)
                {
                    if (contentElement is TextFragment textFragment)
                    {
                        if (textFragment.Font.Name == "Verdana")
                        {
                            textFragment.Font = verdana;
                        }
                        else if (textFragment.Font.Name == "Verdana,Bold")
                        {
                            // textFont = verdanaBold;
                        }
                    }

                }
            }

            //Set the modified RadFixedDocument as a Source of the PdfViewer
            this.pdfViewer.Source = document;
        }

        public byte[] ExtractResource(String filename)
        {
            Assembly assembly = typeof(MainPage).Assembly;
            string completeName = assembly.GetManifestResourceNames().FirstOrDefault(n => n.Contains(filename));

            using (Stream resFilestream = assembly.GetManifestResourceStream(completeName))
            {
                if (resFilestream == null) return null;
                byte[] ba = new byte[resFilestream.Length];
                resFilestream.Read(ba, 0, ba.Length);
                return ba;
            }
        }
    }
}
```