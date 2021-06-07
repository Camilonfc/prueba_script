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

#LINK
#https://anderfernandez.com/blog/automatizar-script-r-google-cloud/