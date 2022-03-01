allAnni<-c(anni.25to34,anni.35to44)
grafico.congiunto<-hist(allAnni,freq=TRUE)

tab1<-cut(anni.25to34,grafico.congiunto$breaks)
tab2<-cut(anni.35to44,grafico.congiunto$breaks)





plot(tab1, pch="+",ylab="Classi", col="gray")
points(anni.25to34, pch="*", col="red")
points(anni.35to44, pch="*", col="blue")