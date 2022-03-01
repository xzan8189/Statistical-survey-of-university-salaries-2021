var1<-anni.25to34
var2<-anni.45to54

plot(var1,var2,
     main="Anni 45-54 in funzione di anni 25-34",
     xlab = "Anni 25-34",ylab = "Anni 45-54", col="red")
abline(v=median(var1),lty=1, col="magenta")
abline(v=mean(var1),lty=2, col="blue")
abline(h=median(var2),lty=1, col="magenta")
abline(h=mean(var2),lty=2, col="blue")

legend(43,80,c("Mediana","Media"),pch=0, col = c("magenta","blue"),cex=1.2)