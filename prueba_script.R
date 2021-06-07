install.packages("bigrquery")
library(bigrquery)

#
#   ID  
project_id <- "norse-coral-315814" 

#  
sql_string <- "#standardSQL 
SELECT * FROM `norse-coral-315814.dataset.datos_prueba` LIMIT 1000"

#     
query_results <- query_exec(sql_string, project = project_id, use_legacy_sql  = FALSE)

df <- data.frame(query_results)
df2 <- data.frame(df[ ,2]*5)

write.csv(df,"C:/Users/cflandez/SURA INVESTMENT MANAGEMENT S.A/Code - General/SOLUCIONES/Investment Analytics - Condor-wm/PruebaGCP/Prueba GCP 202106/result0.csv", row.names = FALSE)
write.csv(df2,"C:/Users/cflandez/SURA INVESTMENT MANAGEMENT S.A/Code - General/SOLUCIONES/Investment Analytics - Condor-wm/PruebaGCP/Prueba GCP 202106/result1.csv", row.names = FALSE)

#LINK
#https://anderfernandez.com/blog/automatizar-script-r-google-cloud/
