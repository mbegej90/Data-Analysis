
# for commenting instead of --

# Packages
  # Popular Packages
    #dplyr - for data manipulation
    #ggplot2 - for data visualization and graphing
    #psych - for statistical summaries from single command
    #quantmod - for financial analysis
    #twitteR - for analyzing twitter data
    #Quandl/rdatamarket - for access to millions of data sets at respective sites
    #RGoogleAnalytics - for access to Google Analytics Data
    #RGoogleMaps - Overlays on Google Maps tiles in R
	#quantreg - do I have this???
	
  # installing and then running R packages
    install.packages("") # can list multiple - will also download dependent packages
    library("")
  
<- #allows you to assign a value to a variable
	so… x <- 5 + 7
	will read as x = 12
	you can then do y <- x - 3
	y = 9

vector - small collection of numbers
data structure - any object that contains data
	numeric vectors are simplest type of data structure in R

you can create vector using c(x, y, z) command
	z <- c(1.1, 9, 3.14)

# Basic Data Analysis
	sumary(mydata) #summary statistics of your table/vector
	library(psych)
	describe(mydata)
	head(mydata) or head(mydata, 20) #examine your data object column headers and first 6 rows
	tail(mydata, 20) #when importing external data source, helpful to see if import garbled
	str(mydata) #provides data structure information (how many rows, type of data in columns, etc.)
	table(diamonds$cut) #returns how many diamonds of each factor exist in the data
	table(diamonds$cut, diamonds$color) #returns cross-tab by cut and color
	cor(mydata) #runs correlation matrix between all variables in a data series
	#R may return NA for many calcs if even a single value is missing
	  #fix this by doing mean(myvctor, na.rm=TRUE)
	
	choose(15,4) #how many ways can you select 4 people from a group of 15?
	
	#how many different pairs can you create? lists out possiblilities
	combn(c("Bob", "Joanne", "Sally", "Tim", "Neal"),2)

# R Visualizations
	plot(mtcars$disp, mtcars$mpg)
	plot(mtcars$disp, mtcars$mpg, xlab="Engine displacement", ylab="mpg", main="MPG compared with engine displacement")
	
# Package sample code
	# Ggplot2
	qplot(disp, mpg, data=mtcars) #generates scatterplot
	qplot(disp, mpg, ylim=c(0,35), data=mtcars) #scatterplot with manually created y ranges
	qplot(cty, hwy, data=mpg, geom="jitter") #scatterplot without overlap in datapoints
	
	# Quantmod
	getSymbols("JPM")
	barChart(JPM, subset='last 60 days')
	barSeries(JPM, subset='last 60 days')
	chartSeries(JPM['2013-07-08::2016-04-24'])

# Random helpful commands
	save.image()    # save your entire workspace
	tablename$columnname #allows you to select only a specific column in a table
	tablename[rows,columns] #allows you to specify the row range and column range you want to select
	mtcars[,2:4] #since nothing before comma, all records but only columns 2-4 will be selected
	#r is case sensitive everywhere
