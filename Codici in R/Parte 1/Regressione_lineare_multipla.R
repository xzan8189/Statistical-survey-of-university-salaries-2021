cov(mtxStipendiLordi2)
cor(mtxStipendiLordi2)

linearModelMultiplo<-lm(anni.45to54~anni.25to34+
   anni.35to44)

linearModelMultiplo

fitted(linearModelMultiplo)

residui<-resid(linearModelMultiplo)

residui

median(residui)
var(residui)
sd(residui)

residui/sd(residui)

stimemult<-fitted(linearModelMultiplo)
residuimultstandard<-residui/sd(residui)
plot ( stimemult , residuimultstandard ,
       main =" Residui standard rispetto ai valori stimati " ,
       xlab = " Valori stimati " , ylab =" Residui standard " ,
       pch =5 , col =" red ")
abline ( h =0 , col =" blue " , lty =2)

summary(linearModelMultiplo)$r.square