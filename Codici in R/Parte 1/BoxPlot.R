b1<-boxplot(anni.25to34,main="Boxplot anni 25-34", col="red")
str(b1)

b2<-boxplot(anni.35to44,main="Boxplot anni 35-44", col="orange")
str(b2)

b3<-boxplot(anni.45to54,main="Boxplot anni 45-54", col="green")
str(b3)

b4<-boxplot(anni.from.25to34.and.45to54,main="Boxplot anni da 25-34 a 45-54", col="purple")
str(b4)


boxplot(anni.25to34,anni.35to44,anni.45to54,anni.from.25to34.and.45to54,
        col = c("red","orange","green","purple"), 
        names = c("25-34", "35-43", "45-54", "25-34 a 45-54"))
