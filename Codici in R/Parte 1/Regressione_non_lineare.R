x1<-anni.25to34
x2<-anni.45to54

plot(x1 ,x2 ,main="Retta di regressione ",
     xlab="Anni 25-34",ylab="Anni 45-54", col ="red") 
abline(lm(x2~x1), col="blue")

summary(lm(x2~x1))$r.square

regressionePolinomiale <-lm(x2~x1+I((x1)^2))
regressionePolinomiale

summary (regressionePolinomiale)$r.squar

plot(x1,x2,main="Scatterplot anni 25-34 in funzione Anni 45-54"
     ,xlab="Anni 25-34",ylab="Anni 45-54" , col = "red")
alpha <- regressionePolinomiale$coefficients[[1]]
beta <- regressionePolinomiale$coefficients[[2]]
gamma <- regressionePolinomiale$coefficients[[3]]

curve (alpha+beta*x+gamma*x^2, add=TRUE, col = "green")