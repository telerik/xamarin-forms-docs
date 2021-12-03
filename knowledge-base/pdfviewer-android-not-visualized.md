---
title: Pdf files are not displayed on android
description: Pdf documents not rendered on android
type: troubleshooting
page_title: Pdf documents not visualize on android
slug: pdfviewer-android-not-visualized
position: 
tags: pdfviewer, pdf, docments, not displayed, visualized, skiasharp
ticketid: 1544266
res_type: kb
---

## Environment
<table>
	<tbody>
		<tr>
			<td>Product Version</td>
			<td>2021.3.1110.1</td>
		</tr>
		<tr>
			<td>Product</td>
			<td>PdfViewer for Xamarin</td>
		</tr>
	</tbody>
</table>


## Description

PdfViewer does not display/render/visualize pdf documents on some android devices like Samsung, Xiaomi, etc. 

## Cause

The issue occurs in SkiaSharp version 1.68.0

## Solution

Telerik UI for Xamarin depends on **SkiaSharp** version **1.68.0**. Please **update/install** SkiaSharp version  **2.80.3** in all projects. This will automatically update the SkiaSharp version used in the Telerik UI for Xamarin packages.