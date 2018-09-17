---
title: Key Features
page_title: Key Features
position: 2
slug: accordion-key-features
---

# Key Features

The purpose of this help article is to show you the key features of the **RadAccordion** control. 

## Collapsed/expanded States

In the Accordion control each item provides a header that expands when clicked, showing more information. The control is designed in such a way that opening one AccordionItem automatically closes the previously displayed content. 

There is always only one expanded item at a time indicated by **IsExpanded** property.

## Animation while expanding/collapsing

To enable or disable the animation you need to use the IsAnimationEnabled property of RadAccordion. By default, the Animation is enabled.

You could also customize the duration and easing (acceleration over time) through **AnimationDuration** (in ms) and **AnimationEasing** (of type *Xamarin.Forms.Easing*) properties.

## Spacing between items

Through **Spacing** property you could specify the distance between the Accordion items.

## See Also

- [AccordionItem Control]({% slug accordion-accordionitem%})
