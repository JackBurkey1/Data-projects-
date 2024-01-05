#read in csv file function 


library(readr) # reads the data from the csv file stored in the readr library 
StudyArea <- read_csv("~/WD/StudyArea.csv")  # creates a easier to use variable of the read csv file
View(StudyArea)    # views all the rows of the Study Area CSV file in a spreadsheet 


#Task 1.2
#piping the data frame and limiting the dataset
#to only include fires between 5000 and 1000 acres

LargeFires2 <- LargeFires %>% filter(between(TOTALACRES,1000,5000))

#https://www.statology.org/r-filter-between-two-values/
LargeFires2 %>%
#creates the Large Fires 2 dataset using the filter function and has been piped 

#Creates a new filtered data set out of the Study Area data set by 
# limiting the TOTAL ACRES burned to between 1000 and 5000 acres
#creates table "large fires"
View(LargeFires2)# Views the Large Fires 2 Dataset

ggplot(LargeFires2,aes(x=ORGANIZATI,y=TOTALACRES)) + # Helped in class and taken from class notes 
geom_boxplot()
# creates a boxplot using the ggplot  R package and geom function using Organization as the group variable
# and Total Acres as the metric being measured 




