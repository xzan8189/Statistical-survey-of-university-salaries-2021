x1<-anni.25to34
x2<-anni.45to54
beta <-(sd(x2 )/sd(x1 ))*cor(x1 ,x2)
alpha <-mean(x2)-beta*mean(x1)
c(alpha ,beta)

lm(x2~x1)

#VALORI STIMATI

fitted(lm(x2~x1))

#RESIDUI

resid(lm(x2~x1))

#GRAFICI
plot(x1,x2,main="Retta di regressione e residui",
     xlab="Anni 25-34",ylab="Anni 45-54",
     col="red")
abline(lm(x2~x1),col="blue")
stime<-fitted(lm(x2~x1))
segments(x1,stime,x1,x2,col="magenta")

residui<-resid(lm(x2~x1))
plot(x1,residui,main="Diagramma dei Residui",
     xlab="Anni 25-34",ylab="Anni 45-54",
     col="red", pch =9)
abline(h=0,col="blue",lty=2)

residuistandard<-residui/sd(residui)
plot(stime,residuistandard,
     main="Residui standard rispetto ai valori stimati",
     xlab="Valori stimati",ylab="Residui standard",
     pch=5, col="red")
abline(h=0,col="blue",lty=2)
