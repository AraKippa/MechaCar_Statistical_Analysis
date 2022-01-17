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
show(total_summary)
#Summarize and groupby lot
lot_summary <- SC %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI), SD=sd(PSI), .groups = 'keep')
show(lot_summary)

#Deliverable Three

?t.test()
#filter ML and PSI to new table
SC_filt <- SC[,c("Manufacturing_Lot","PSI")]
#Transform ML char obj to numeric
sapply(SC_filt, class)
SC_filt_lot <- transform(SC_filt,Manufacturing_Lot = as.numeric(as.factor(Manufacturing_Lot)))
sapply(SC_filt_lot, class)

#T-test that compares all manufacturing lots against mean PSI of the population
t.test(SC_filt_lot$PSI,mu=mean(SC_filt_lot$PSI))
#Three t-tests that compare each manufacturing lot against mean PSI of the population
lot1 <- SC_filt_lot[SC_filt_lot$Manufacturing_Lot == 1,]
t.test((lot1$PSI),mu=mean(log10(SC$PSI)))

lot2 <- SC_filt_lot[SC_filt_lot$Manufacturing_Lot == 2,]
t.test((lot2$PSI),mu=mean(log10(SC$PSI)))

lot3 <- SC_filt_lot[SC_filt_lot$Manufacturing_Lot == 3,]
t.test((lot3$PSI),mu=mean(log10(SC$PSI)))

