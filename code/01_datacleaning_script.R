library(readxl)
library(dplyr)

#Import raw data

pai_raw <- read_excel("data/Raw_data/pai_ap_merged_raw.xlsx")

glimpse(pai_raw)

#Simplify column names 

pai_processed <- pai_raw %>%
  rename(
    Overall = 'Overall PAI Score',
    
    T1       = 'T1 - Poverty Free and Enhanced Livelihoods Panchayat',
    T1_Grade = 'T1 - Poverty Free and Enhanced Livelihoods Panchayat-Grade',
    
    T2       = 'T2 - Healthy Panchayat',
    T2_Grade = 'T2 - Healthy Panchayat-Grade',
    
    T3       = 'T3 - Child Friendly Panchayat',
    T3_Grade = 'T3 - Child Friendly Panchayat-Grade',
    
    T4       = 'T4 - Water Sufficient Panchayat',
    T4_Grade = 'T4 - Water Sufficient Panchayat-Grade',
    
    T5       = 'T5 - Clean and Green Panchayat',
    T5_Grade = 'T5 - Clean and Green Panchayat-Grade',
    
    T6       = 'T6 - Self-sufficient Infrastructure in Panchayat',
    T6_Grade = 'T6 - Self-sufficient Infrastructure in Panchayat-Grade',
    
    T7       = 'T7 - Socially Just and Socially Secured Panchayat',
    T7_Grade = 'T7 - Socially Just and Socially Secured Panchayat-Grade',
    
    T8       = 'T8 - Panchayat with Good Governance',
    T8_Grade = 'T8 - Panchayat with Good Governance-Grade',
    
    T9       = 'T9 - Women Friendly Panchayat',
    T9_Grade = 'T9 - Women Friendly Panchayat-Grade'
  )

write.csv(
  pai_processed,
  "data/Processed_data/pai_ap_processed.csv",
  row.names = FALSE
)
