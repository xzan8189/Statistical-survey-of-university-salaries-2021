createBarplot<-function(stipendi, main){
  
  x<-barplot(stipendi, ylab="Stipendi", main=main,
             col=1:40,
             las=2,
             names.arg=atenei,
             cex.axis=0.80,
             cex.names=0.80,
             font.lab=2)
  abline(h=mean(stipendi),col="red",lty=2,xpd=FALSE)
}

createBarplot(anni.25to34, "Stipendi anni 25-34")
createBarplot(anni.35to44, "Stipendi anni 35-44")
createBarplot(anni.45to54, "Stipendi anni 45-54")
createBarplot(anni.from.25to34.and.45to54, "Stipendi anni da 25-34 a 45-54")

