km<-kmeans(mtxStipendiLordi2, centers = 3 ,
              iter.max = 20, nstart = 10)
km

km$betweenss/km$totss