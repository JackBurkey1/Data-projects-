
# read in csv file function 


library(readr) # reads the data from the csv file stored in the readr library 
StudyArea <- read_csv("working directory/Data files/StudyArea.csv")  # creates a easier to use variable of the read csv file
View(StudyArea)    # views all the rows of the Study Area CSV file in a spreadsheet 


LargeFires <- filter(StudyArea,TOTALACRES >= 1000,YEAR_>2009,YEAR_<2017) # function idea taken from 
##https://www.statology.org/dplyr-filter-date/ 
#Creates a new filtered data set out of the Study Area data set by limiting the TOTAL ACRES burned to above 1000 only
# And the Years in which these occurred to being only above 2009 and less than 2017
# limits range of acres burned to 1000 and above and only shows fires burnt after 2009
#creates table "large fires"
View(LargeFires) # Views the Large Fires Dataset

# Create a bar chart of wildfires

b<-barplot(LargeFires$TOTALACRES,LargeFires$YEAR_, main= # creates the data set b
"Acres burned between 2010 and 2016 that are greater than 1,000 acresin the Study Area Dataset",
#in the data set Large fires, the columns TOTALACRES and YEAR_ are used in the creation of the bar chart
ylab = "Acres burned", xlab="2010-2016, per day")+ coord_cartesian(ylim=c(1000,600000))
#Here, the y axis is the given the title of Acres burned and the x axis is given the title of 2010-2016 daily
# The function Coord-Cartesian sets the y scale to only go between 1000 and 600000 which are the total acres values I need
# The 0 is there as a default, not because there are any 0 value results
options(scipen=600000) 
# This options function changes the scientific notation of the y axis from 0-4e to normal number scale up to the value
#of 600000


geom_bar(position = position_dodge(preserve = "single"))     # taken from classwork 
# This function gives the parameters of the bar chart, where each value "dodges" the others as a single result
# This is because the binning of the bar charts are set so that there is a noticeable gap between most of the results


# websites used to create functions in the code:


# https://www.r-bloggers.com/2022/02/view-data-frame-in-r-use-of-view-function-in-r/

## taken from classwork examples and ## https://www.storybench.org/create-barplot-r/#:~
##:text=How%20to%20create%20a%20barplot%20in%20R%20Load,...%20Extend%20the%20y-axis.%20Add%20labels.%20Finally%2C%20 


#'https://stackoverflow.com/questions/14563989/force-r-to-stop-plotting-abbreviated-axis-labels-scientific-notation-e-g-1e
#https://www.statology.org/r-plot-change-axis-scale/#:~:text=To%20change%20the%20axis%20scales,()%20and%20ylim()%20functions.

  









