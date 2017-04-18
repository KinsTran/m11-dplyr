# Exercise 5: DPLYR Grouped Operations

# Install the nycflights13 package and read it in. Require the dplyr package.
# install.packages("nycflights13")
library(nycflights13)
library(dplyr)

# In which month was the average departure delay the greatest?
# Hint: you'll have to perform a grouping operation before summarizing your data
longest.month <- group_by(flights, month) %>% summarize(mean = mean(dep_delay, na.rm = TRUE)) %>% filter(mean == max(mean)) %>% select(month)

# If you create a data.frame with the columns "month", and "delay" above, you should be able to create 
# a scatterplot by passing it to the 'plot' function
new.frame <- group_by(flights, month) %>% summarize(mean = mean(dep_delay, na.rm = TRUE))
plot(new.frame)

# In which airport were the average arrival delays the highest?
# Hint: you'll have to perform a grouping operation before summarizing your data
highest.delays <- group_by(flights, dest) %>% summarize(delay = mean(arr_delay, na.rm = TRUE)) %>% arrange(-delay)

### Bonus ###
# Which city was flown to with the highest average speed?
