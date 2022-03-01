alpha <- 0.01
mu0 <- 24
sigma <- 3.4

n<-length(voti)

#z alpha/2
qt(1- alpha/2,df=n-1)
#-z alpha/2
-qt(1- alpha/2,df=n-1)


meancamp <-mean(voti)
sdCamp <- sd(voti) 
(meancamp -mu0)/(sdCamp /sqrt(n))