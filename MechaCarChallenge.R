#install packages
install.packages("jsonlite")
install.packages("tidyverse")
install.packages("dplyr")
library(dplyr)

#Deliverable One

#import MPG datase
mpgdb <- read.csv('MechaCar_mpg.csv',check.names = F,stringsAsFactors = F) 
#generate multiple linear regression model
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mpgdb)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mpgdb))

#Deliverable Two

#import SC file
SC<- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
# Overal summary
total_summary <- SC %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI), SD=sd(PSI), .groups = 'keep')
#Summarize and groupby lot
lot_summary <- SC %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI), SD=sd(PSI), .groups = 'keep')

