atenei<-c("Cattolica del Sacro Cuore","LUISS Guido Carli",
          "Luigi Bocconi","P.Torino","Perugia","Verona",
          "P.Milano","Brescia","Modena e Reggio Emilia",
          "Bergamo","U.Milano","La Sapienza","Parma","Pisa",
          "Marche","Bologna","Venezia","Roma Tor Vergata",
          "Padova","Siena","Trieste","Udine","Genova","Pavia",
          "Catania","Trento","Roma Tre","U.Torino","Aquila",
          "U.Bari","Cagliari","Bicocca","P.Bari","Ferrara",
          "Firenze","Palermo","Federico II","Messina","Parthenope",
          "Calabria")

anni.25to34<-c(31.7,31.9,34.7,31.1,29.0,29.7,32.3,30.5,30.2,30.3,
               29.9,30.3,30.7,30.6,30.3,30.0,29.7,31.1,30.7,31.1,
               30.3,30.7,30.5,30.9,29.6,30.5,30.5,30.0,29.9,29.1,
               28.7,29.9,30.5,29.6,29.6,30.2,30.6,29.1,29.5,30.0)

anni.35to44<-c(42.0,42.2,44.8,41.2,37.4,37.7,41.7,39.4,40.2,38.0,
               38.2,38.0,39.1,38.8,38.0,38.0,38.7,39.0,39.7,38.0,
               37.8,38.4,38.1,38.5,37.0,39.0,38.2,36.8,37.5,35.7,
               35.4,38.4,38.4,38.8,37.4,36.5,37.3,35.8,36.1,36.0)

anni.45to54<-c(58.0,57.1,59.3,52.8,48.9,49.8,53.7,50.7,50.1,49.7,
               49.0,49.3,50.0,49.7,48.8,48.2,47.3,49.4,48.7,49.4,
               48.1,48.3,47.7,48.3,46.0,47.3,47.3,46.4,46.2,44.9,
               44.2,46.0,46.6,44.9,44.7,45.1,44.8,42.5,43.1,43.1)

anni.from.25to34.and.45to54<-c(82.8,79.0,71.2,69.7,68.6,67.6,66.2,
                               66.1,66.1,64.1,64.0,62.9,62.6,62.5,
                               61.1,60.6,59.3,59.1,58.8,58.7,58.4,
                               57.2,56.4,56.2,55.5,55.1,55.0,54.5,
                               54.4,54.2,54.0,53.9,52.8,51.8,50.8,
                               49.4,46.4,46.2,46.0,43.6)
mtxStipendiLordi<-cbind(anni.25to34,anni.35to44,anni.45to54,
                        anni.from.25to34.and.45to54)
rownames(mtxStipendiLordi)<- atenei
titoli<-c("(25-34)","(35-44)","(45-54)","(Da 25-34 a 45-54)")
colnames(mtxStipendiLordi)<-titoli

mtxStipendiLordi2<-mtxStipendiLordi[,1:3]
