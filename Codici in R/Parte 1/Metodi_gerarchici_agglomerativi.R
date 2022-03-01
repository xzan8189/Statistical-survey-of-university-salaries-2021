hclust(dist(mtxStipendiLordi2),method="complete")

plot(hclust(dist(mtxStipendiLordi2),method="complete"),
     main ="Dendrogramma esempio",
     xlab="Atenei",sub="")