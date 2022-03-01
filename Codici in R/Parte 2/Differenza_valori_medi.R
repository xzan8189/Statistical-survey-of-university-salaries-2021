alpha <-1 -0.99

n1 <- length(voti)
n2 <- length(voti2)

m1 <- mean(voti)
m2 <- mean(voti2)

s1 <- 3.4
s2 <- 3.3

#stima del limite inferiore
m1-m2-qnorm(1-alpha/2,mean=0,sd=1)*sqrt(s1^2/n1+s2^2/n2)

#stima del limite superiore
m1-m2+qnorm(1-alpha/2,mean=0,sd=1)*sqrt(s1^2/n1+s2^2/n2)
