
# SE COPILA LOS DIAS DE LA CONCENTRACION EN BS

f0<-data.frame()

for (i in 1:nrow(FECHA)) {
  if (FECHA$FECHA[i] >= x & FECHA$FECHA[i] <= h) {
    
    tab <- get(paste0("CONCENTRACION_BS_",FECHA$FECHA[i]))
    f0 <- rbind(f0, tab)
  }
}

# SE COPILA LOS DIAS DE LA CONCENTRACION EN DIVISA

g0<-data.frame()

for (i in 1:nrow(FECHA)) {
  if (FECHA$FECHA[i] >= x & FECHA$FECHA[i] <= h) {
    
    tab <- get(paste0("CONCENTRACION_US_",FECHA$FECHA[i]))
    g0 <- rbind(g0, tab)
  }
}

# SE CREA LOS DIFERENTES EXCEL DE CONCENTRACION COPILADOS

write.xlsx(f0, 'CONCENTRACION_BS.xlsx')

write.xlsx(g0, 'CONCENTRACION_US.xlsx')


