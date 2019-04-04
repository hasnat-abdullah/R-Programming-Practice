attach(mtcars)
carData.df <- mtcars[c("mpg", "cyl", "hp", "wt", "gear")]

set.seed(7)
offset <- rnorm(length(mpg),mean= 87, sd=2)
mtcars.mpgSum <- mtcars$mpg + offset
mtcars$mpg <- mtcars.mpgSum
print(mtcars$mpg)

carType <- paste("Car",1:length(mpg))
carData.df <- cbind(carData.df,carType)
print(carData.df)

newInfo <- subset(carData.df, carData.df$gear == 5)
print(newInfo)

a <- tapply(carData.df$mpg, carData.df$gear, mean)
print(a)
b <- tapply(carData.df$wt, carData.df$cyl, mean)
print(b)
c <- tapply(carData.df$hp, carData.df$cyl, max)
print(c)
barplot(carData.df$mpg,names.arg=carData.df$carType,xlab="CarType",ylab="MPG",col="red",
        main=" Car Type with mpg")
hist(carData.df$wt)