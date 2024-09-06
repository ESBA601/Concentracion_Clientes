# SE CREA UN BUCLE PARA GENERAR LOS DIFERENTES ARCHIVOS

for (i in 1:nrow(FECHA)) {
  
  if (FECHA$FECHA[i] >= x & FECHA$FECHA[i] <= h)  {
    
    # SE GENERA LOS DIFRENTES  EXCEL
    
    #varaux1 <- (c)
    
    varaux1 <- paste(rc,'IBSRM14FTB_',FECHA[i,6],'.TXT')
    
    varaux1 <- gsub("/ ","/",varaux1)
    
    varaux1 <- gsub(" .TXT",".TXT",varaux1)
    
    varaux1 <- gsub("_ ","_",varaux1)
    
    varaux1 <- read.delim(varaux1, header = FALSE, sep = "©", dec = ",")
    
    # SE CREA LOS TITULOS
    
    #varaux2 <- (c)
    
    varaux2 <-  rename(varaux1, "BANCO"="V1","IBS"="V2","PRIMER_NOMBRE"="V3","SEGUNDO_NOMBRE"="V4","PRIMER_APELLIDO"="V5","SEGUNDO_APELLIDO"="V6","NOMBRE_CLIENTE"="V7","TIPO_CLIENTE"="V8","RIF_CI"="V9","CODIGO_AGENCIA"="V10","NOMBRE_AGENCIA"="V11","CODIGO_EJECUTIVO"="V12","NOMBRE_EJECUTIVO"="V13","TIPO_BANCA"="V14","ZONA_AREA"="V15","IBS_GRUPO_ECONOMICO"="V16","GRUPO_ECONOMICO"="V17","MONTO_ACTIVO_GRUPO_ECONOMICO"="V18","PRESTAMO"="V19","PROPUESTA"="V20","MONTO_ORIGINAL"="V21","SALDO_ACTUAL"="V22","MONTO_VIGENTE"="V23","MONTO_REESTRUCTURADO"="V24","MONTO_VENCIDO"="V25","MONTO_LITIGIO"="V26","MONTO_INMOVILIZADO"="V27","DIAS_VENCIDOS"="V28","CANTIDAD_CUOTAS_VENCIDAS_COMERCIAL"="V29","ESTATUS_COMERCIAL_CREDITO"="V30",	"CANTIDAD_PRORROGAS"="V31","FECHA_ULTIMA_PRORROGA"="V32","CLASIFICACION_RIESGO"="V33","PCT_PROVISION"="V34","MONTO_PROVISION_ESPECIFICA"="V35","MONTO_PROVISION_ESPECIFICA_INTERESES"="V36","CUENTA_CONTABLE"="V37","DESCRIPCION_CUENTA_CONTABLE"="V38","ESTATUS_CONTABLE"="V39","DESCRIPCION_ESTATUS_CONTABLE"="V40","TIPO_PRODUCTO"="V41","PRODUCTO_DESCRIPCION"="V42","SUB_PRODUCTO"="V43","SUB_PRODUCTO_DESCRIPCION"="V44","FECHA_LIQUIDACION"="V45","FECHA_VENCIMIENTO_ACTUAL"="V46","FECHA_VENCIMIENTO_ORIGINAL"="V47","PERIODICIDAD"="V48","PERIODICIDAD_CANT"="V49","FECHA_CANCELACION_ULTIMA_CUOTA"="V50","FECHA_CANCELACION_ULTIMA_CUOTA_CAPITAL"="V51","FECHA_VENCIMIENTO_PROX_CUOTA"="V52","MONTO_PROX_CUOTA"="V53","CUOTA_PRINCIPAL"="V54","CUOTA_INTERESES"="V55","OTROS_CARGOS"="V56","CICLO_CAPITAL"="V57","FECHA_DE_CUOTA_PRINCIPAL"="V58","CICLO_INTERESES"="V59","FECHA_CUOTA_INTERESES"="V60","TASA_INTERES"="V61","TIPO_CALCULO_INTERESES"="V62","SALDO_INTERES"="V63","RENDIMIENTOS_COBRAR_VIGENTES"="V64","RENDIMIENTOS_COBRAR_VENCIDOS"="V65","INTERESES_COBRAR_CUENTA_ORDEN"="V66","INTERESES_COBRADOS_ANTICIPADOS"="V67","TIPO_GARANTIA"="V68","DESCRIPCION_GARANTIA"="V69","REFERENCIA_GARANTIA"="V70","MONTO_GARANTIA"="V71","MONEDA"="V72","LINEA_CREDITO"="V73","LINEA_CREDITO_UTILIZADA"="V74","LINEA_CREDITO_DISPONIBLE"="V75","TIPO_LINEA_CREDITO"="V76",
                       "DESCRIPCION_TIPO_LINEA_CREDITO"="V77","FECHA_VENCIMIENTO_LINEA_CREDITO"="V78","CUENTA_DEBITO_REPAGO"="V79","TIPO_CUENTA_DEBITO_REPAGO"="V80","SALDO_DISPONIBLE"="V81","PROMEDIO_TRIMESTRAL_CUENTA"="V82","CODIGO_ACTIVIDAD_ECONOMICA"="V83","DESCRIPCION_ACTIVIDAD_ECONOMICA"="V84","SECTOR_ECONOMICO"="V85","CODIGO_DESTINO_FONDOS"="V86","DESCRIPCION_CODIGO_DESTINO_FONDOS"="V87","FECHA_CONSTITUCION_NACIMIENTO"="V88","FECHA_VIGENCIA_VENCIMIENTO"="V89","NUMERO_EMPLEADOS"="V90","FECHA_ULTIMO_EEFF_AUDITADO"="V91","MONTO_INGRESOS_VENTAS_ANUALES"="V92","MONTO_PATRIMONIO"="V93","MONTO_MAXIMO_RIESGO_ASUMIDO"="V94","REFERENCIA_CARTA_CREDITO"="V95","TIPO_MODULO"="V96","CIUDAD"="V97","ESTADO"="V98","CAPITAL_PAGADO"="V99","CODIGO_SEXO"="V100",	"SEXO_DESCRIPCION"="V101","ESTADO_CIVIL"="V102","ESTADO_CIVIL_DESCRIPCION"="V103","NACIONALIDAD"="V104","CARGAS_FAMILIARES"="V105","TIPO_VIVIENDA"="V106","ANTIGUEDAD_RESIDENCIA"="V107","LUGAR_NACIMIENTO"="V108","CODIGO_NIVEL_EDUCACION"="V109","DESCRIPCION_NIVEL_EDUCACION"="V110",
                       "CODIGO_PROFESION"="V111","DESCRIPCION_PROFESION"="V112","FUENTE_INGRESOS"="V113","DESCRIPCION_FUENTE_INGRESOS"="V114","OCUPACION"="V115","DESCRIPCION_OCUPACION"="V116","ACCIONISTA"="V117","PCT_ACCIONARIO"="V118","ID_ACCIONISTA"="V119","ADMINISTRACION"="V120","CARGO"="V121","ID_ADMINISTRADOR"="V122","SOLVENCIA"="V123","LIQUIDEZ"="V124","CAPITAL_TRABAJO"="V125","DIAS_MANO_COBRANZA"="V126","DIAS_MANO_CUENTAS_PAGAR"="V127","DIAS_MANO_INVENTARIO"="V128","DIAS_CICLO_ECONOMICO"="V129","APALANCAMIENTO"="V130","VENTAS_PASIVO_CIRCULANTE"="V131","AUTONOMIA_FINANCIERA"="V132","EBITDA"="V133","DEUDA_BANCARIA_VENTAS"="V134","RENTABILIDAD_UTILIDAD_NETA_VTAS"="V135","ROE_UTILIDAD_NETA_PATRIMONIO"="V136","PASIVO_CIRCULANTE_VENTAS"="V137","PASIVO_TOTAL_VENTAS"="V138","VARIACION_VENTAS"="V139","ESTRUCTURA_COSTOS_GASTOS"="V140","ACTIVO_CIRCULANTE_TOTAL_ACTIVO"="V141","INMUEBLES_TOTAL_ACTIVO"="V142","INV_LIQUIDAS_TOTAL_ACTIVO"="V143","INGRESO_ANUAL_PASIVO_CIRCULANTE"="V144","INGRESO_ANUAL_SERVICIO_DEUDA"="V145",
                       "TOTAL_PASIVO_TOTAL_ACTIVO"="V146","INMUEBLES_TOTAL_PASIVO"="V147","FECHA_VENCIMIENTO_DOCUMENTO_PAGARE"="V148","FECHA_VENCIMIENTO_ACTUAL_PAGARE"="V149","NUMERO_PRORROGAS_PAGARE"="V150","CODIGO_SECTOR_ECONOMICO"="V151","VACIO"="V152"
    )
    
    # SE AJUSTA EL FORMATO
    
    varaux2$FECHA_LIQUIDACION <- as.Date (varaux2$FECHA_LIQUIDACION, format = "%d/%m/%y")
    varaux2$FECHA_CANCELACION_ULTIMA_CUOTA <- as.Date (varaux2$FECHA_CANCELACION_ULTIMA_CUOTA, format = "%d/%m/%y")
    varaux2$FECHA_CUOTA_INTERESES <- as.Date (varaux2$FECHA_CUOTA_INTERESES, format = "%d/%m/%y")
    
    varaux2$MONTO_ORIGINAL <- gsub("[.]","",varaux2$MONTO_ORIGINAL)
    varaux2$MONTO_ORIGINAL <- gsub(",",".",varaux2$MONTO_ORIGINAL)
    varaux2$MONTO_ORIGINAL <- as.numeric(varaux2$MONTO_ORIGINAL)
    
    varaux2$SALDO_ACTUAL <- gsub("[.]","",varaux2$SALDO_ACTUAL)
    varaux2$SALDO_ACTUAL <- gsub(",",".",varaux2$SALDO_ACTUAL)
    varaux2$SALDO_ACTUAL <- as.numeric(varaux2$SALDO_ACTUAL)
    
    varaux2$MONTO_VENCIDO <- gsub("[.]","",varaux2$MONTO_VENCIDO)
    varaux2$MONTO_VENCIDO <- gsub(",",".",varaux2$MONTO_VENCIDO)
    varaux2$MONTO_VENCIDO <- as.numeric(varaux2$MONTO_VENCIDO)
    
    varaux2$MONTO_VIGENTE <- gsub("[.]","",varaux2$MONTO_VIGENTE)
    varaux2$MONTO_VIGENTE <- gsub(",",".",varaux2$MONTO_VIGENTE)
    varaux2$MONTO_VIGENTE <- as.numeric(varaux2$MONTO_VIGENTE)
    
    # SE TRAE LOS DIFERENTES MARCADORES PARA IDENTIFICAR LOS PRODUCTOS
        
    #varaux3 <- (c)
    varaux3 <- left_join(varaux2, CUENTA, by = "CUENTA_CONTABLE") %>% 
      #left_join(FAMILIA, by = "SUB_PRODUCTO") #%>%
      mutate(DIG2 = str_sub(varaux2$CUENTA_CONTABLE, 4, 5)) %>%
      left_join(CARTERA, by = "DIG2") 
    
    # SE HACE EL FILTRO DE LOS PRODUCTOS QUE SE ANALIZAN
    
    #varaux4 <- (c)  
    varaux4 <- filter(varaux3, MAR_CUEN != "2")
    
    # SE HACE LA TABLA DINAMICA TOTALIZANDO LOS SALDOS DE LOS CLIENTES    
    
    #varaux5 <- (c)
    varaux5 <- select(varaux4, IBS, SALDO_ACTUAL) %>% group_by(IBS) %>% summarise(TOTAL=sum(SALDO_ACTUAL)) %>% arrange(desc(TOTAL))
    
    # IDENTIFICAR EL NOMBRE DEL CLIENTE
    
    varaux2c <- select(varaux2, IBS, NOMBRE_CLIENTE) %>% group_by(IBS) 
    
    varaux2c$IBS <- as.numeric(varaux2c$IBS)
    
    varaux2clts <- mutate(varaux2c , VARIACION=IBS-lead(IBS,1))
    
    varaux2clts$MARCADOR <- ifelse(is.na(varaux2clts$VARIACION),1,varaux2clts$VARIACION)
    
    varauxclts <- filter(varaux2clts, MARCADOR == 1) %>% select(IBS, NOMBRE_CLIENTE)
    
    # IDENTIFICAR EL NOMBRE DEL GRUPO
    
    varaux2g <- select(varaux2, IBS, IBS_GRUPO_ECONOMICO, GRUPO_ECONOMICO) %>% group_by(IBS) 
    
    varaux2g$IBS <- as.numeric(varaux2g$IBS)
    
    varaux2gps <- mutate(varaux2g , VARIACION=IBS-lead(IBS,1))
    
    varaux2gps$MARCADOR <- ifelse(is.na(varaux2gps$VARIACION),1,varaux2gps$VARIACION)
    
    varauxgps <- filter(varaux2gps, MARCADOR == 1) %>% select(IBS, IBS_GRUPO_ECONOMICO, GRUPO_ECONOMICO)
    
    # SE HACE LA UNION DE LOS NOMBRES LOS GRUPOS Y LOS SALDOS    
    
    #varaux6 <- (c)
    varaux6 <- left_join(varaux5, varauxclts, by="IBS") %>% left_join( varauxgps, by="IBS") %>% select(IBS, NOMBRE_CLIENTE, IBS_GRUPO_ECONOMICO, GRUPO_ECONOMICO, TOTAL)
    
    # SE CREA LOS SALDO DE CADA CLIENTE EN DOLARES
    
    #varaux7 <- (c)
    varaux7 <- mutate(varaux6, TOTAL_US=TOTAL/FECHA$TIPO_CAMBIO[i])
    
    # SE CREA LOS NIVELES DE CONCENTRACION DE LOS DIFERENTES NIVELES
    
    varauxt5 <- varaux7[1:5,]
    varauxt5_ <- data.frame("TOTAL_TOP5"=colSums(varauxt5[,5]))  
    varauxt5_US <- data.frame("TOTAL_TOP5US"=colSums(varauxt5[,6]))  
    
    varauxt10 <- varaux7[1:10,] 
    varauxt10_ <- data.frame("TOTAL_TOP10"=colSums(varauxt10[,5]))
    varauxt10_US <- data.frame("TOTAL_TOP10US"=colSums(varauxt10[,6]))
    
    varauxt15 <- varaux7[1:15,] 
    varauxt15_ <- data.frame("TOTAL_TOP15"=colSums(varauxt15[,5]))
    varauxt15_US <- data.frame("TOTAL_TOP15US"=colSums(varauxt15[,6]))
    
    varauxt20 <- varaux7[1:20,] 
    varauxt20_ <- data.frame("TOTAL_TOP20"=colSums(varauxt20[,5]))
    varauxt20_US <- data.frame("TOTAL_TOP20US"=colSums(varauxt20[,6]))
    
    varauxt25 <- varaux7[1:25,] 
    varauxt25_ <- data.frame("TOTAL_TOP25"=colSums(varauxt25[,5]))
    varauxt25_US <- data.frame("TOTAL_TOP25US"=colSums(varauxt25[,6]))
    
    varauxt50 <- varaux7[1:50,] 
    varauxt50_ <- data.frame("TOTAL_TOP50"=colSums(varauxt50[,5]))
    varauxt50_US <- data.frame("TOTAL_TOP50US"=colSums(varauxt50[,6]))
    
    # SE HACE LA UNION DE LOS DIFERENTES NIVELES DE CONCENTRACIONES  
    
    p0 <- cbind(varauxt5_, varauxt10_, varauxt15_, varauxt20_, varauxt25_, varauxt50_)
    pUS <- cbind(varauxt5_US, varauxt10_US, varauxt15_US, varauxt20_US, varauxt25_US, varauxt50_US)
    
    # SE HACE LA UNION DE LOS DIFERENTES NIVELES DE CONCENTRACIONES CON LAS FECHAS
    
    p00 <- mutate(p0, FECHA=FECHA$FECHA[i]) %>% select(FECHA, TOTAL_TOP5, TOTAL_TOP10, TOTAL_TOP15, TOTAL_TOP20, TOTAL_TOP25)
    p00US <- mutate(pUS, FECHA=FECHA$FECHA[i]) %>% select(FECHA, TOTAL_TOP5US, TOTAL_TOP10US, TOTAL_TOP15US, TOTAL_TOP20US, TOTAL_TOP25US)
    
    # SE GENERA LOS ARCHIVOS EN EXCEL Y SE CREA LOS ARCHIVOS DE CONCENTRACION

    assign(paste(FECHA[i,7]), varauxt5 )
    write.xlsx(assign(paste(FECHA[i,7]), varauxt5 ), paste({FECHA$TOP5[i]},'.xlsx'))
    
    assign(paste(FECHA[i,8]), varauxt10 )
    write.xlsx(assign(paste(FECHA[i,8]), varauxt10 ), paste({FECHA$TOP10[i]},'.xlsx'))
    
    assign(paste(FECHA[i,9]), varauxt15 )
    write.xlsx(assign(paste(FECHA[i,9]), varauxt15 ), paste({FECHA$TOP15[i]},'.xlsx'))
    
    assign(paste(FECHA[i,10]), varauxt20 )
    write.xlsx(assign(paste(FECHA[i,10]), varauxt20 ), paste({FECHA$TOP20[i]},'.xlsx'))
    
    assign(paste(FECHA[i,11]), varauxt25 )
    write.xlsx(assign(paste(FECHA[i,11]), varauxt25 ), paste({FECHA$TOP25[i]},'.xlsx'))
    
    assign(paste(FECHA[i,12]), varauxt50 )
    write.xlsx(assign(paste(FECHA[i,12]), varauxt50 ), paste({FECHA$TOP50[i]},'.xlsx'))
    
    
    assign(paste(FECHA[i,14]), p00 )
    assign(paste(FECHA[i,15]), p00US )
  }    
} 