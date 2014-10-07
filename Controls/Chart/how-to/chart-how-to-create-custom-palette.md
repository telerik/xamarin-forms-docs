---
title: How to create a custom chart palette.
slug: chart-how-to-create-custom-palette
---

#Overview#
When a user needs to define custom sets of colors, they can take advantage of custom palettes. Here is an example that shows how to achieve this: 

#Example#

Create a static class that will provide custom palette instances: 

	public class CustomPalettes
	{
	    static CustomPalettes()
	    {
	        CreateCustomDarkPalette();
	    }
	
	    public static ChartPalette CustomDark { get; private set; }
	
	    private static void CreateCustomDarkPalette()
	    {
	        ChartPalette palette = new ChartPalette();
	
	        palette.Entries.Add(new PaletteEntry() { FillColor = Color.FromRgb(246, 0, 29), StrokeColor = Color.FromRgb(178, 0, 21) });
	        palette.Entries.Add(new PaletteEntry() { FillColor = Color.FromRgb(255, 206, 0), StrokeColor = Color.FromRgb(186, 150, 0) });
	        palette.Entries.Add(new PaletteEntry() { FillColor = Color.FromRgb(20, 216, 0), StrokeColor = Color.FromRgb(14, 152, 0) });
	
	        CustomDark = palette;
	    }
	}


Create a chart and set the chart palette to your custom defined one:

	var chart = new RadCartesianChart
	{
	    HorizontalAxis = new CategoricalAxis(),
	    VerticalAxis = new NumericalAxis(),
	};
	
	for (int i = 0; i < 3; i++)
	{
	    var series = new BarSeries();
	    series.ItemsSource = GetCategoricalData();
	    series.ValueBinding = new PropertyNameDataPointBinding("Value");
	    series.CategoryBinding = new PropertyNameDataPointBinding("Category");
	    series.CombineMode = ChartSeriesCombineMode.Cluster;
	
	    chart.Series.Add(series);
	}

	chart.Palette = CustomPalettes.CustomDark;

Here is how the chart gets its sample data:

	private static Random random = new Random();
	private static string[] categories = new string[] { "Greenings", "Perfecto", "NearBy", "Family", "Fresh" };
	
	public static ObservableCollection<CategoricalData> GetCategoricalData()
	{
	    var data = new ObservableCollection<CategoricalData>();
	    for (int i = 0; i < categories.Length; i++)
	    {
	        data.Add(new CategoricalData() { Value = random.Next(50, 100), Category = categories[i] });
	    }
	
	    return data;
	}

And the data class:

	public class CategoricalData
	{
	    public object Category { get; set; }
	    public double Value { get; set; }
	}
