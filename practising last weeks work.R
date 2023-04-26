# load the mt cars dataset
data(mtcars)


# create a histogram of the mpg variable
hist(mtcars$mpg)

# create a histogram of the mpg variable with more bins
hist(mtcars$mpg, breaks = 15)