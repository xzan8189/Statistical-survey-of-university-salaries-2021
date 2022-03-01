legameMedio <- hclust(dist(mtxStipendiLordi2), method="average")
legameMedio$merge

plot(legameMedio,hang=-1, xlab="Metodo gerarchico agglomerativo",
     sub="del legame medio")
axis(side=4,at=round(c(0,legameMedio$height),2),las=1)
rect.hclust(legameMedio,k=3,border="red")

numeroRighe <- nrow(mtxStipendiLordi2)
trHI <- (numeroRighe-1) *sum(
  apply(mtxStipendiLordi2,2, var ))
trHI


qualità.taglio<-function(gruppi){
  taglio<-cutree(legameMedio,k=gruppi,h=NULL)
  num<-table(taglio )
  tagliolist<-list(taglio)
  agvar<-aggregate(mtxStipendiLordi2,tagliolist,var)[,-1]
  
  trH1<-(num[[1]]-1)*sum(agvar[1,])
  if(is.na(trH1))
    trH1 <- 0
  
  trH2<-(num[[2]]-1)*sum(agvar[2,])
  if(is.na(trH2))
    trH2<-0
  
  trH3<-(num [[3]]-1)*sum(agvar [3,])
  if(is.na(trH3))
    trH3<-0
  
  sum<-trH1+trH2+trH3
  trB<-trHI-sum
  trB/trHI
}


qualità.taglio(3)


plot(c(0,legameMedio$height),type="b",col="red",
     main="Screeplot metodo legame medio",
     xlab = "Distanza di aggregazione",
     ylab="Numero di cluster")


cutree(legameMedio, k=3, h=NULL)