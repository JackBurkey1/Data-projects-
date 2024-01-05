#Task 1

#read in csv file function 


library(readr) # reads the data from the csv file stored in the readr library 
StudyArea <- read_csv("~/WD/StudyArea.csv")  # creates a easier to use variable of the read csv file
View(StudyArea)    # views all the rows of the Study Area CSV file in a spreadsheet 


#Task 1.1
#limiting the dataset
#to only include fires greater than 1,000 acres

LargeFires <-filter(StudyArea,TOTALACRES >= 1000)%>%# function idea taken from 
##https://www.statology.org/dplyr-filter-date/ 
#Creates a new filtered data set out of the Study Area data set by TOTAL ACRES
#creates table "large fires"
View(LargeFires) # Views the Large Fires Dataset


#Histogram creation code
options(scipen=1000)# sets the axis scales to decimal values in levels of 1000 
hist(LargeFires$TOTALACRES,col='red',breaks=500, 
#Creates a histogram with the following variables:
     #Histogram function taken from classwork 
     #It uses the Large fires subset of the Study Area dataset to create the histogram
     #the colour of the histogram for each plot of data is set to red to indicate the purpose of the histogram 
     # the breaks function sets the bins to 500
     main="Acres burned between 2010 and 2016 that are greater than 1,000 acresin the Study Area Dataset",
     # main sets the title of the histogram
     xlab="Acres burned between 2010-2016",
     # sets the title of the x axis 
     xlim=c(1000,60000),
#sets the range of the data shown in the histogram for the x axis to between 1000 acres burned and 60000 acres burned 
     ylab="Frequency"
     # sets the name of the y axis 

)
