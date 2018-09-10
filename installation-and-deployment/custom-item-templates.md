---
title: Visual Studio Item Templates
page_title: Visual Studio Item Templates
slug: installation-visual-studio-item-templates
position: 6
---

# Visual Studio Item Templates

There are several **predefined item templates for Visual Studio** included in the **UI for Xamarin** suite which come by default with the installation of the product. You can directly include them in your **Xamarin Forms** project and use them as footprints for similar scenarios in your application. This article provides more information on the different templates included and the controls which they utilize.

> The Item Templates are installed through a Visual Studio extension file(vsix) which can be found in the **VSExtensions** folder of your local installation. 

## Adding Item Templates to your project

As these item templates will be automatically added when you run the **UI for Xamarin** installation, you can find them when you try adding a new item to your Xamarin Forms project, as shown in **Figure 1**.

##### Figure 1: Adding a custom item to your Xamarin Forms project

![custom item templates](images/item-templates/custom-item-templates-highlight.png) 

You can also add them through the Telerik menu of Visual Studio as shown in **Figure 2**:

##### Figure 2: Adding a custom item to your Xamarin Forms project through Telerik menu:

![custom item templates telerik menu](images/item-templates/item-templates-telerik-menu.png) 

Or through the context menu of your Visual Studio project:

##### Figure 3: Adding a custom item to your Xamarin Forms project through the context menu:
![custom item templates context menu](images/item-templates/item-templates-context-menu.png) 

## Views

The available item templates are listed below:

* [Stocks View](#stocks-view)
* [Activity View](#activity-view)
* [Search View](#search-view)
* [Login Screen](#login-screen)
* [Feedback Screen](#feedback-screen)

### Stocks View

The Stocks View represents a list of several companies and information related to their stocks such as current price, trends, percentage difference, etc. The main controls which are utilized are the [RadListView]({%slug listview-overview%}) and [RadCartesianChart]({%slug chart-types-cartesian-chart%}) controls. **Figure 2** shows the default appearance of the view.

##### Figure 4: Stocks View's default appearance
![custom item templates](images/item-templates/stocks-view-canvas.png) 
  
### Activity View

The Activity View provides an information regarding a specific user and information regarding his daily physical activity such as calories burned, average steps and active time. The view utilizes the [RadCartesianChart]({%slug chart-types-cartesian-chart%}), [RadRadialGauge]({%slug gauge-types-radial%}) and [RadHorizontalGauge]({%slug gauge-types-horizontal%}) controls. **Figure 3** shows the default appearance of the Activity View:

##### Figure 5: Activity View's default appearance
![activity view](images/item-templates/activitiy-view-canvas.png) 

### Search View

There are several Search View custom items which show the same setup with a slightly different visualization. All of the item templates use the [RadAutoComplete]({%slug autocomplete-overview%}) and [RadListView]({%slug listview-overview%}) controls with different modifications in order to achieve a diverse look. The **RadAutoComplete** control is used to filter the visible collection according to a certain user input.

#### Multiline Items

In the **SearchViewMultiLineItems** template, the items within the **RadListView** have multiple line description.

##### Figure 6: Search View Multiline Items 
![search view multiline](images/item-templates/search-view-multiline.png) 

#### Singleline Items

In the **SearchViewSingleLineItems** template, only a single line of information regarding the specific item is present.

##### Figure 7: Search View Singleline Items 
![search view singleline](images/item-templates/search-view-singleline.png) 

#### Singleline Items Big Image

The **SearchViewSingleLineItemsBigImage** template is similar to the **SearchViewSingleLineItems** template, however, the look of the item within the **RadListView** is slightly tweaked for a distinctive appearance that emphasizes on the image.

##### Figure 8: Search View Singleline Items Big Image 
![search view singleline](images/item-templates/search-view-singlelineimage.png) 

#### Twoline Items

The **SearchViewTwoLinesItems** template once again shows a different approach of modifying RadListView's ItemTemplate.

#### Figure 9: Search View Twolines Items 
![search view singleline](images/item-templates/search-view-twoline.png) 

### Login Screen

The **Login Screen** template provides different options for entering user credentials, such as with fingerprint, with pin or social login. The template uses RadEntry, RadButton, RadBorder, and RadCheckbox from Progress Telerik UI for Xamarin.

The image below shows LoginComplete template:

#### Figure 10: Login Complete Screen
![login complete](images/item-templates/item-template-login.png) 

### Feedback Screen

The **Feedback Screen** template implements a feedback scenario using RadBorder, RadButton, and RadListView from Progress Telerik UI for Xamarin.

#### Figure 11: Feedback Screen
![feedback screen](images/item-templates/item-template-feedback.png) 


## See Also

* [System Requirements]({%slug system-requirements%})
* [Getting Started]({%slug common-getting-started%})