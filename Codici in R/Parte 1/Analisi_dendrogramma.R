numeroRighe <- nrow(mtxStipendiLordi2)
trHI <- (numeroRighe-1) *sum(
  apply(mtxStipendiLordi2,2, var ))
trHI