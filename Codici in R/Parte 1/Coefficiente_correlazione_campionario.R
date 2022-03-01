cor(anni.25to34,anni.45to54)

plot(anni.25to34 ,anni.45to54 ,main="Retta di regressione ",
     xlab="Anni 45-54",ylab="Anni 25-34 a 45-54", col ="red") 
abline(lm(anni.45to54~anni.25to34), col="blue")