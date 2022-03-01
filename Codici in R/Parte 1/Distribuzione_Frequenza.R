classe<-quantile(c(28,anni.25to34, anni.35to44, anni.45to54, anni.from.25to34.and.45to54))

DFA1<-table(cut(anni.25to34,classe))
DFA2<-table(cut(anni.35to44,classe))
DFA3<-table(cut(anni.45to54,classe))
DFA4<-table(cut(anni.from.25to34.and.45to54,classe))

p1<-DFA1/length(DFA1)*10
p2<-DFA2/length(DFA2)*10
p3<-DFA3/length(DFA3)*10
p4<-DFA4/length(DFA4)*10

x1<-barplot(DFA1,main="DFA 25-34",col=rainbow(4),ylim=c(0, 45))
text(x1, DFA1+2, labels = paste(format(p1,digits=2),"%"))

x2<-barplot(DFA2,main="DFA 35-44",col=rainbow(4),ylim=c(0, 45))
text(x2, DFA2+2, labels = paste(format(p2,digits=2),"%"))

x3<-barplot(DFA3,main="DFA 45-54",col=rainbow(4),ylim=c(0, 40))
text(x3, DFA3+2, labels = paste(format(p3,digits=2),"%"))

x4<-barplot(DFA4,main="DFA da 25-34 a 45-54",col=rainbow(4),ylim=c(0, 40))
text(x4, DFA4+2, labels = paste(format(p4,digits=2),"%"))




