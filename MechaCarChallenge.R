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
