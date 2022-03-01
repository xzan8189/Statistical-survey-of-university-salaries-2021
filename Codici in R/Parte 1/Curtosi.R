curt<-function (x){
  n<-length (x)
  m2 <-(n-1)*var (x)/n
  m4 <- (sum( (x-mean(x))^4) )/n
  m4/(m2^2) -3
}

curt(anni.25to34)
curt(anni.35to44)
curt(anni.45to54)
curt(anni.from.25to34.and.45to54)