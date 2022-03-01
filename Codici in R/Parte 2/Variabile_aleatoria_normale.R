media<-mean(voti)
media
dev.std<-sd(voti)
dev.std
# Densità normale Voti degli studenti
x<-voti
curve(dnorm(x,media,dev.std),from=12, to=36,xlab="Voti degli studenti",
      ylab="Funzione f(x)",col="red",
      main="Densità normale Voti degli studenti",cex.main=0.8)
#abline(v=media,lty=2,col="blue")
abline(v=y,lty=2,col="magenta")
abline(v=z,lty=2,col="magenta")


#
pnorm(36,media,dev.std)-pnorm(12,media,dev.std)

curve(pnorm(x, media, dev.std), from=12, to=36,
      xlab="x", ylab=expression (P(X<=x)),
      main="funzione distribuzione normale Voti degli studenti",
      cex.main=0.65,col="red")

scelta<-c(0,0.25,0.5,0.75,1)
qnorm(scelta,media, dev.std)



