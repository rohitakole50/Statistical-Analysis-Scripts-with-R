#Script for Confidence Level Interval for u with sigma unknown
myConfLvl <- 0.95
mySampleMean <- 50
mySampleStdDev <- 8
mySampleSize <- 25
#Computation
myTval <- abs(qt((1- myConfLvl)/2, mySampleSize - 1))
myConfIntLowerBound <- mySampleMean - myTval * mySampleStdDev/sqrt(mySampleSize)
myConfIntUpperBound <- mySampleMean + myTval * mySampleStdDev/sqrt(mySampleSize)
#Output
myConfIntLowerBound
myConfIntUpperBound



#Confidence Level for Sample Proportion
myConfLvl <- 0.95
mySampleProp <- sum(myCD$Manufacturer == "General Mills")/nrow(myCD)
mySampleSize <- 400
#Computation
myZval <- abs(qnorm((1- myConfLvl)/2))
myStdError <- sqrt(mySampleProp * (1 - mySampleProp)/mySampleSize)
myConfIntLowerBound <- mySampleProp - myZval * myStdError
myConfIntUpperBound <- mySampleProp + myZval * myStdError
#Output
myConfIntLowerBound
myConfIntUpperBound



#Hypothesis test for mean
hypoMean <- 4500
sampleMean <- 4239.16
sampleStdDev <- 5811.73
sampleSize <- 10
#Computation
TStat <- (sampleMean - hypoMean)/(sampleStdDev/sqrt(sampleSize))
#TStat
#P-Value for Left Sided Test
#PValue <- pt(TStat, sampleSize-1)
#P-Value for Right Sided Test
#PValue <- 1 - pt(TStat, sampleSize-1)
#P-Value for Two Sided Test
PValue <- 2 * pt(-abs(TStat), sampleSize-1)
#Output
PValue


#Hypothesis test for proportion
hypoProp <- 0.049
sampleProp <- 0.052
sampleSize <- 90
#Computation
StdError <- sqrt(hypoProp*(1-hypoProp)/sampleSize) 
ZStat <- (sampleProp - hypoProp)/StdError
#P-Value for Left Sided Test
#PValue <- pnorm(ZStat)
#P-Value for Right Sided Test
#PValue <- 1 - pnorm(ZStat)
#P-Value for Two Sided Test
PValue <- 2 * pnorm(-abs(ZStat))
#Output
PValue