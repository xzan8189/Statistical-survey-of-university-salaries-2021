allAnni<-c(anni.from.25to34.and.45to54)
#allAnni<-c(anni.25to34, anni.35to44, anni.45to54, anni.from.25to34.and.45to54)
pareto<-hist(allAnni,freq=TRUE)
#pareto$breaks

taba<-table(cut(allAnni,pareto$breaks))

ordinato<-(sort(taba,decreasing = TRUE))
propord<-prop.table(ordinato)
x<-barplot(propord,ylim=c(0,1.1),main="Diagramma di Pareto",col=rainbow(40),las=2)
lines(x,cumsum(propord),type = "b",pch=16)
text(x-0.2, cumsum(propord)+0.05, paste(format(cumsum(propord)*100, digits=2), "%"))


test<-names(propord[1:4])
nomi1<-c()
nomi2<-c()
classiStampa<-cut(allAnni,pareto$breaks)
for(i in 1:length(atenei)){
  if(sum(test==classiStampa[i])){
    nomi1<-c(nomi1,atenei[i])
  }else{
    nomi2<-c(nomi2,atenei[i])
  }
  
}
nomi1
nomi2