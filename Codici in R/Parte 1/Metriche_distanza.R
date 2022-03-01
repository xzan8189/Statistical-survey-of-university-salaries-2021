as.matrix(dist(mtxStipendiLordi2, method = "manhattan",
               diag = FALSE, upper = FALSE))

as.matrix(dist(mtxStipendiLordi2, method = "maximum",
               diag = FALSE, upper = FALSE))

as.matrix(dist(mtxStipendiLordi2, method = "minkowski",
               p=3, diag = FALSE, upper = FALSE))

as.matrix(dist(mtxStipendiLordi2, method = "canberra",
               diag = FALSE, upper = FALSE))
