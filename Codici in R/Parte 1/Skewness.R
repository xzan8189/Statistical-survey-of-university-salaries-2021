skw<-function (x){
  n<-length (x)
  m2 <-(n -1)*var(x)/n
  m3 <- (sum( (x-mean(x))^3))/n
  m3/(m2 ^1.5)
}

skw(anni.25to34)
skw(anni.35to44)
skw(anni.45to54)
skw(anni.from.25to34.and.45to54)