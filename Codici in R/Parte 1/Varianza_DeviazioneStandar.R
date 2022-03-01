var(anni.25to34)
var(anni.35to44)
var(anni.45to54)
var(anni.from.25to34.and.45to54)

sd(anni.25to34)
sd(anni.35to44)
sd(anni.45to54)
sd(anni.from.25to34.and.45to54)

cv<-function (x){
  sd(x)/abs(mean(x))
}

cv(anni.25to34)
cv(anni.35to44)
cv(anni.45to54)
cv(anni.from.25to34.and.45to54)
