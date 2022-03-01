alpha<-1-0.99

deviazioneStandard<-3.4

n<-length (voti)
#stima del limite inferiore
z<-(mean(voti)-qt(1- alpha /2,df=n-1)*deviazioneStandard/sqrt(n))
z

#stima del limite superiorez
y<-(mean(voti)+qt(1- alpha /2,df=n-1)*deviazioneStandard/sqrt(n))
y