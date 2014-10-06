---
title: How to create a custom chart palette.
slug: chart-how-to-create-custom-palette
---

#Overview#
When a user needs to define custom sets of colors, they can take advantage of custom palettes. Here is an example that shows how to achieve this: 

#Example#

Create a static class to define a custom palette instance: 

    public class CustomPalettes
    {
        static CustomPalettes()
        {
            CreateCustomDarkPalette();
        }

        private static void CreateCustomDarkPalette()
        {
            
            ChartPalette palette = new ChartPalette();

            palette.Entries.Add(new PaletteEntry() { FillColor = Color.Navy, StrokeColor = Color.Silver });
            palette.Entries.Add(new PaletteEntry() { FillColor = Color.Lime, StrokeColor = Color.Silver });
            palette.Entries.Add(new PaletteEntry() { FillColor = Color.Red, StrokeColor = Color.Silver });             
            palette.Entries.Add(new PaletteEntry() { FillColor = Color.Navy, StrokeColor = Color.Silver });
            palette.Entries.Add(new PaletteEntry() { FillColor = Color.Maroon, StrokeColor = Color.Silver });
             
            CustomDark = palette;
        }

        public static ChartPalette CustomDark { get; private set; }

    }

Set the chart palette to your custom defined one: 

    <telerikChart:RadCartesianChart x:Name="chart">
    <telerikChart:RadCartesianChart.BindingContext>
      <viewMoedls:CategoricalViewModel/>
    </telerikChart:RadCartesianChart.BindingContext>
    <telerikChart:RadCartesianChart.HorizontalAxis>
      <telerikChart:CategoricalAxis/>
    </telerikChart:RadCartesianChart.HorizontalAxis>
    <telerikChart:RadCartesianChart.VerticalAxis>
      <telerikChart:NumericalAxis/>
    </telerikChart:RadCartesianChart.VerticalAxis>
    <telerikChart:RadCartesianChart.Series>
      <telerikChart:BarSeries ItemsSource="{Binding CategoricalData}" CombineMode="Cluster">
        <telerikChart:BarSeries.ValueBinding>
          <telerikChart:PropertyNameDataPointBinding PropertyName="Value"/>
        </telerikChart:BarSeries.ValueBinding>
        <telerikChart:BarSeries.CategoryBinding>
          <telerikChart:PropertyNameDataPointBinding PropertyName="Category"/>
        </telerikChart:BarSeries.CategoryBinding>
      </telerikChart:BarSeries>

      <telerikChart:BarSeries ItemsSource="{Binding CategoricalData}" CombineMode="Cluster">
        <telerikChart:BarSeries.ValueBinding>
          <telerikChart:PropertyNameDataPointBinding PropertyName="Value"/>
        </telerikChart:BarSeries.ValueBinding>
        <telerikChart:BarSeries.CategoryBinding>
          <telerikChart:PropertyNameDataPointBinding PropertyName="Category"/>
        </telerikChart:BarSeries.CategoryBinding>
      </telerikChart:BarSeries>
    </telerikChart:RadCartesianChart.Series>
    </telerikChart:RadCartesianChart>

In the code behind: 

        public PalettesExample()
        {
            InitializeComponent();

            this.chart.Palette = CustomPalettes.CustomDark;
        }