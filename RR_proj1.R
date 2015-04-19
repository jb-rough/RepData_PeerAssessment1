---
title: "RepRes_proj1"
author: "JRB"
date: "04/19/2015"
output: html_document
---
###Step 1. Loading and preprocessing the data
Load the data (i.e. read.csv())
Process/transform the data (if necessary) into a format suitable for your analysis

```{r}
Data <- read.csv(file="/home/broughma/rwork/activity.csv", header=TRUE)
Data$date <- as.Date(Data$date)
Data$fac <- cut(Data$date, breaks="day")
```

Next we can check the data structure and see if the data is adequate for analysis

```{r}
str(Data)
summary(Data)
```

###2. What is mean total number of steps taken per day? (ignore the missing values in the dataset)
Calculate the total number of steps taken per day
Make a histogram of the total number of steps taken each day
Calculate and report the mean and median of the total number of steps taken per day

```{r}
stepsPerDay <- tapply(Data$steps, Data$fac, sum)
hist(stepsPerDay)
#Totalspd <- tapply(stepsPerDay$step/61
stepsPerDayMean <- tapply(Data$steps, Data$fac, mean)
stepsPerDayMedian <- tapply(Data$steps, Data$fac, median)
stepsStats <- cbind(stepsPerDay, stepsPerDayMean, stepsPerDayMedian)
colnames(stepsStats) <- c("Total", "Mean", "Median")
stepsStats
```

###3. What is the average daily activity pattern?
Make a time series plot of the 5-minute interval and the average number of steps taken,averaged across all days (y-axis)
Which 5-minute interval, on average across all the days in the dataset,contains the maximum number of steps?

```{r}
stepsPerInterval <- aggregate(steps ~ interval, data = Data, mean, na.rm = TRUE)
stepsPerInterval[which.max(stepsPerInterval$steps), ]$interval
plot(steps~interval, data=stepsPerInterval, type="l")
points(835, 205, pch=4, col=4)
```

###4. Imputing missing values
    Calculate and report the total number of missing values in the dataset (i.e. the total number of rows with NAs)
    Devise a strategy for filling in all of the missing values in the dataset. The strategy does not need to be
    sophisticated. For example, you could use the mean/median for that day, or the mean for that 5-minute interval, etc.

```{r}

print("Working")

```

###5. Create a new dataset that is equal to the original dataset but with the missing data filled in.
Make a histogram of the total number of steps taken each day
Calculate and report the mean and median total number of steps taken per day. 
Do these values differ from the estimates from the first part of the assignment? 
What is the impact of imputing missing data on the estimates of the total daily number of steps?

```{r}

print("Working")

```

###6. Are there differences in activity patterns between weekdays and weekends?
For this part the weekdays() function may be of some help here. 
Use the dataset with the filled-in missing values for this part.
Create a new factor variable in the dataset with two levels – “weekday” and “weekend” 
Make a panel plot containing a time series plot (i.e. type = "l") of the 5-minute interval (x-axis) 
and the average number of steps taken, averaged across all weekday days or weekend days (y-axis). 
See the README file in the GitHub repository to see an example of what this plot should look like using simulated data.

```{r}

print("Working")

```
