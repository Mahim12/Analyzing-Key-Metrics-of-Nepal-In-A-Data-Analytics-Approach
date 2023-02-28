install.packages("dplyr")
library(dplyr)
library(magrittr)
library(e1071)

setwd("/Users/user/Desktop/Masters education/spring 2023 semester/linear regression and time series/week 5")

# Draw a sample of x, fixed over replications:
#Converted xlsx to csv. Problem with xlsx module.
data <- read.csv("NEPAL_GDP_CONSUMPTION.csv")
consumption<-data$CONSUMPTION #read the CONSUMPTION column
gdp<-data$GDP #read the gdp column
year<-data$YEAR #read the year column

#time-series of gdp against year
plot(year, gdp, type="l", main="Nepal", xlab="Year", ylab="GDP")

#time-series of consumption against year
plot(year, consumption, type="l", main="Nepal", xlab="Year", ylab="Consumption")

#scatterplot of consumption against year
plot(year, consumption, main="Nepal", xlab="Year", ylab="Consumption", col="red", cex=2)

#scatterplot of gdp against year
plot(year, gdp, main="Nepal", xlab="Year", ylab="GDP", col="blue", cex=2)

#time-series of gdp and consumption.
plot(gdp, consumption, type="l", main="Nepal", xlab="gdp", ylab="consumption")

#scatterplot of consumption against gdp
plot( gdp, consumption, main="Nepal", xlab="GDP", ylab="consumption", col="ORANGE", cex=2)


#summary of the whole dataset
summary(data)

#summary statistics of gdp
summary(gdp)
sd(gdp)
range(gdp)
skewness(gdp)
kurtosis(gdp)

# slicing the first 16 rows because the data is not available in consumption
consumption <- data %>% 
  slice(16:n()) %>% 
  select(CONSUMPTION) %>% 
  unlist()
#summary statistics of consumption
summary(consumption)
sd(consumption)
range(consumption)
skewness(consumption)
kurtosis(consumption)



# Run a simple OLS linear regression in R and interpret its coefficient estimates.
# run these two once again because the dataframes need to be the same size.
consumption<-data$CONSUMPTION #read the CONSUMPTION column
gdp<-data$GDP #read the gdp column
lin_reg <- lm(consumption ~ gdp, data=data) 


# run this to calculate b0hat because the dataframes are not of the same size
# for ques no 1.f
gdp <- data %>% 
  slice(16:n()) %>% 
  select(GDP) %>% 
  unlist()
consumption <- data %>% 
  slice(16:n()) %>% 
  select(CONSUMPTION) %>% 
  unlist()
# Interpret goodness-of-fit metrics for OLS linear regression.
( b0hat <- cov(gdp,consumption)/var(gdp) )
( b1hat <- mean(consumption) - b0hat*mean(gdp) )


# Relate R2 with correlation coefficient.
y_hat<-fitted(lin_reg)
u<-resid(lin_reg)

var(y_hat)/var(consumption)
1-var(u)/var(consumption)
cor(consumption,y_hat)^2


# 1.c
#changing the gdp length to convert to growth rate.
gdp<-data$GDP
length(gdp) #check the length of the original before slicing


length(consumption) #after slicing


#the formula for growth rate in percent is:
# (final value-initial value/iniitial value) * 100
# growth rate calculation of gdp
gdp_arr = numeric(length(gdp))
for(i in 0:length(gdp)){
  gdp_arr[i] = ((gdp[(i+1)]-gdp[(i)])/gdp[(i)])*100
  print(gdp_arr[i])
}

plot(year, gdp_arr, type="l", main="GDP Growth rate of Nepal", xlab="Year", ylab="GDP Growth rate")

# growth rate of consumption
consumption_arr = numeric(length(consumption))
for(i in 0:length(consumption)){
  consumption_arr[i] = ((consumption[(i+1)]-consumption[(i)])/consumption[(i)])*100
  print(consumption_arr[i])
}

consumption<-data$CONSUMPTION #need to run this again becasue year and consumption need to be of the same length
plot(year, consumption_arr, type="l", main="Consumption Growth rate of Nepal", xlab="Year", ylab="Consumption Growth rate")

