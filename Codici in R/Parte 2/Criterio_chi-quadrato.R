m<-mean(voti)
d<-sd(voti)

a<-numeric(4)
for(i in 1:4)
  a[i]<-qnorm(0.2*i,mean=m,sd=d)
a

r<-5
nint <-numeric(r)
nint[1]<-length(which(voti < a[1]))
nint[2]<-length(which((voti >= a[1])&(voti <a[2])))
nint[3]<-length(which((voti >= a[2])&(voti <a[3])))
nint[4]<-length(which((voti >= a[3])&(voti <a[4])))
nint[5]<-length(which(voti >= a[4]))
nint

chi2<-sum(((nint-n*0.2)/sqrt(n*0.2))^2)
chi2

k<-2
alpha<-0.05
qchisq(alpha/2,df=r-k-1)
qchisq(1- alpha/2,df=r-k-1)