#load the data
DatosRadiacionMadrid <- Paquetedatos


additiveTS <- log (DatosRadiacionMadrid)  # often converts multiplicative to additive time series

ts()
p <- ts(DatosRadiacionMadrid$cpm, frequency = 31536000, start = 2017) # frequency 4 => Quarterly Data
plot.ts(kingstimeseries)
plot(p)

library(plotly)

library(ggplot2)

p <- plot_ly(x = ~DatosRadiacionMadrid$cpm, y = ~DatosRadiacionMadrid$Measurement_datetime, mode = 'lines', text = "days from today")
p
###############################################################################################
#     https://a-little-book-of-r-for-time-series.readthedocs.io/en/latest/src/timeseries.html #
###############################################################################################



