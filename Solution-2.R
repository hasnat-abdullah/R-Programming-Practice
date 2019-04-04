setwd("~/Study/Assignment/CSE425/")
tempData <- read.csv("temperature.csv")

index <- 7
firstCityTemp <- tempData$City7
secondCityTemp <- tempData$City8
thirdCityTemp <- tempData$City12

plot(firstCityTemp, type = "o", col = "red", xlab = "Month", ylab = "Temperature", main = "Temperature Chart")
lines(secondCityTemp, type = "o", col = "blue")
lines(thirdCityTemp, type = "o", col = "green")
#secondCityTemp & thirdCityTemp have very close teperature pattern. 

i <- cov(firstCityTemp, secondCityTemp)
j <- cov(secondCityTemp, thirdCityTemp)
k <- cov(firstCityTemp, thirdCityTemp)
print(i)
print(j)
print(k)
#secondCityTemp & thirdCityTemp giving highest positive value. so, secondCityTemp & thirdCityTemp are closely related pattern. 

firstCityTemp.ts <- ts(firstCityTemp, start = c(2016,1), frequency = 12)
secondCityTemp.ts <- ts(secondCityTemp, start = c(2016,1), frequency = 12)
print(firstCityTemp.ts)
print(secondCityTemp.ts)
fitCity1 <- HoltWinters(firstCityTemp.ts)
fitCity2 <- HoltWinters(secondCityTemp.ts)
MayTempCity1 <- predict(fitCity1,24)[17]
MayTempCity2 <- predict(fitCity2,24)[17]
print(MayTempCity1)
print(MayTempCity2)
place1 <- list(c("Paris","Eiffel Tower","French","Winter","Charles de Gaulle Airport"), firstCityTemp)
place2 <- list(c("Rome","Colosseum","Latin","Summer","Leonardo da Vinci International Airport"), secondCityTemp)
print(place1)
print(place2)


