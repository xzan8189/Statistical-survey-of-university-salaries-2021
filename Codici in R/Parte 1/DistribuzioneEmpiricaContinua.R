Distribuzione.Empirica.Continua<-function(vettore,main){
  
  D.E.Continua <-hist(vettore,freq=TRUE)
  classi.D.E.C<-c(min(vettore),D.E.Continua$breaks[3:length(D.E.Continua$breaks)-1],max(vettore))
  FrequenzaCumulate <- cumsum(table (cut(vettore,
                                         breaks =classi.D.E.C,
                                         right =FALSE )))/length (vettore)
  
  FrequenzaCumulate<-c(0,FrequenzaCumulate)
  plot(classi.D.E.C, 
       FrequenzaCumulate, type = "b", axes = FALSE , 
       main = paste("Funzione di distribuzione empirica continua ",main,sep=""),
       col="red", xlab = "Classi", ylab = "Frequenze cumulate")
  axis(1, classi.D.E.C, cex.axis=0.80)
  axis(2, format (FrequenzaCumulate, digits = 2), cex.axis=0.80)
  
  box()
  
}
Distribuzione.Empirica.Continua(anni.25to34, "stipendi anni 25-34")
Distribuzione.Empirica.Continua(anni.35to44, "stipendi anni 35-44")
Distribuzione.Empirica.Continua(anni.45to54, "stipendi anni 45-54")
Distribuzione.Empirica.Continua(anni.from.25to34.and.45to54, "stipendi anni da 25-34 a 45-54")