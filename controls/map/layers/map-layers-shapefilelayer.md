---
title: Shapefile Layer
page_title: Xamarin Map Documentation | Map ShapefileLayer
description: Check our &quot;Shapefile Layer&quot; documentation article for Telerik Map for Xamarin control.
position: 1
slug: map-layers-shapefilelayer
---

# ShapefileLayer

ShapefileLayer class provides a way to load an ESRI shapefile into the Map and visualize the shapes defined in it. You would need to create a ShapefileLayer for each shapefile and add it to the **Layers** collection of RadMap.

## Reading a shapefile

ShapefileLayer provides a **Reader** property used to read the data from the defined shapefile. The **Reader** is of type *Telerik.XamarinForms.Map.MapShapeReader* and has two important properties you need to apply in order to properly load and visualize your shapes:

* Source (of type *Telerik.XamarinForms.Map.MapSource*) : Gets or sets the MapSource that points to the .shp file to read data from. 
* DataSource (of type *Telerik.XamarinForms.Map.MapSource*) : Gets or sets the MapSource that points to the *dbf file, containing the data(or attributes) for each shape within the shape file. 

The above used **MapSource** class provides a few useful static methods that will help load the shapefile:

* FromResource(string resource, Assembly sourceAssembly) / FromResource(string resource, Type resolvingType): Two overrides you can choose from to easily create MapSource from a provided embedded resource. 

* FromStream(Stream stream): returns a MapSource from a passed stream.
* FromFile(string file):  Returns MapSource from a passed string the represents a specific file path.

In addition, **MapShapeReader** provides a read-only **Shapes** property that can be used to get a list of all the shapes that are read from the Source. 

## Get Best View

ShapefileLayer provides a way to visualize the shapes in such a way that the best view of the layer is achieved. The approach is implemented through the **GetBestView** method:

*  LocationRect GetBestView() -  Gets location rectangle which represents best view for the layer.

First, LocationRect class is a special type from the *Telerik.XamarinForms.ShapefileReader* namespace which describes a rectangle region through the locations of the northwest to the southeast points.  

>tip For more details on how points are positioned in the geographic coordinate system, check [Layers Overview]({%slug map-layers-overview%}) topic. 

So, through GetBestView method the map will calculate that region that encompasses all the shapes as well as apply proper zoom level, so that the best view is achieved. After that, you could pass the result directly to the **SetView** method of the Map instance like this:

<snippet id='map-setbestview-code' />

## Labels

You can add a label for each shape in a ShapefileLayer by setting the **ShapeLabelAttributeName** property to an attribute from the *.dbf file specified in the DataSource property of the layer.

Check below a quick example:

<snippet id='map-labels-xaml' />

where the **Source** and the **DataSource** of the MapShapeReader should be defined to a .shp and .dbf files, respectively:

<snippet id='map-labels-settintsource' />

![Map ShapeLayer Labels](../images/map_shapelayer_labels.png)

## Selection

RadMap supports single and multiple selection of shapes to help you draw attention on specific areas. You would need to set **SelectionMode** property of the ShapefileLayer to enable the selection. 

**SelectionMode** could receive the following values:
* None;
* Single;
* Multiple.

Read the [Selection]({% slug map-selection%}) topic for more details regarding this feature.

## Styling

RadMap provides the option to apply various Fill and Stroke colors to the shapes to make the map consistent with the design of the app. For more details check [Styling]({% slug map-styling-shapesstyles %}) article. 

## See Also

- [Selection]({% slug map-selection%})
- [Styling]({% slug map-styling-shapesstyles %})
