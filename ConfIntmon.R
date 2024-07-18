# Conf Interval for mu with sigma unknown
myConfLvl<-.95
mySmplMean<-50
mySmplStdDev<-8
mySmplSize<-25
#Computations
myTval<-abs(qt((1-myConfLvl)/2,mySmplSize-1))
myCIlb<-mySmplMean-myTval*mySmplStdDev/sqrt(mySmplSize)
myCIub<-mySmplMean+myTval*mySmplStdDev/sqrt(mySmplSize)
#Output
myCIlb
myCIub

# Conf Level for sample proportion
myConfLvl<-.95
mySmplProp<-32/400
mySmplSize<-400
# Computations
myZval<-abs(qnorm((1-myConfLvl)/2))
myStdError<-sqrt(mySmplProp*(1-mySmplProp)/mySmplSize)
myCIlb<-mySmplProp-myZval*myStdError
myCIub<-mySmplProp+myZval*myStdError
# Output
myCIlb
myCIub

  