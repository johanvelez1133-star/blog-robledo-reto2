# Corre la parte del informe que construye la base y los resultados principales
# y guarda la base final, la tabla de efectos parciales y la distribución ELCSA.
lineas <- readLines("full.R")
fin <- grep("^## ----bondad-ajuste", lineas)[1] - 1
eval(parse(text = lineas[1:fin]), envir = globalenv())
options(OutDec = ".")
dir.create("out", showWarnings = FALSE)
final <- base[, c("y", "cat_lab", "estrato", "tam_hogar", "edad_jefe", "sexo_jefe_mujer",
                  "educ_jefe", "elcsa_score", "elcsa_clas", "tiene_menor", "situacion", "prestaciones")]
names(final) <- c("y_inseguridad_mod_severa", "situacion_laboral_jefe", "estrato", "tamano_hogar",
                  "edad_jefe", "jefatura_femenina", "educacion_jefe_nivel", "puntaje_elcsa",
                  "categoria_elcsa", "hogar_con_menores", "H31_situacion_actividad", "H40_prestaciones")
write.csv(final, "out/base_final_robledo_276_hogares.csv", row.names = FALSE, fileEncoding = "UTF-8")
write.csv(tab_ic_ape, "out/efectos_parciales_bootstrap.csv", row.names = FALSE, fileEncoding = "UTF-8")
write.csv(as.data.frame(tab_elcsa), "out/distribucion_elcsa_533.csv", row.names = FALSE, fileEncoding = "UTF-8")
cat("N final:", nrow(final), "\n"); print(tab_ic_ape); print(table(final$situacion_laboral_jefe)); print(tab_elcsa)
