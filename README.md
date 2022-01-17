# MechaCar_Statistical_Analysis
Mod 15 Challenge

## Linear Regression to Predict MPG
Both vehicle length and ground clearance provided a significant amount of variance to the mpg values in the dataset.
Our slope of the linear model is considered to be close to zero. Our estimated slope is -1.040e+02 with a Std Error of  1.585e+01. The p-value of 5.08e-08, well short of our 0.05 statistical parameters. With a slope to zero it calls into question the validity of of variance. The closer to zero our slope the less significance our independent variable if m=0 then m(x) = 0. Negating any significant relationship between x and y.
Per our multiple R squared value of 0.7149 and a p-value of 5.35e-11 this linear model appears to predict mpg of MechaCar prototypes effectively. However, there are only two variables which have significant variance in our data set. Indicating over half our independent variables have no affect on mpg.  This makes this model look like a poor predictor for MechaCar prototypes.

## Summary Statistics on Suspension Coils

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. If we are to interpret Lot three as the current manufacturing data; it does not meet this design specification.
If we are looking at the total manufacturing data, we are within parameters. ![total_summary](Total_Summary.png) The variance is 62, well within our 100 pound threshold.  
There is a disturbing trend though, once we start breaking down the data by [Lot Summary](Lot_Summary). The variance level on Lot three exceeds our 100 pounds per square inch parameter. There was a 662% increase in variance from Lot one to Lot two and an astounding 2176% increase from Lot two to Lot three.  
A re-evaluation of our Suspension coils process should begin immediately.

## T-Tests on Suspension Coils

Across all lots they hypothesis that our true mean is equal to 1500 is failing with a p-value of 1.  This does not meet our standard of 0.05.
The issue again points to [Lot Three](Lot3meanT.PNG) with a mean of x 1496.14 and confidence interval also below the mean on both sides.
There is some encouraging data from  data from [Lot One](Lot1meanT.PNG).  This continues to [Lot Two](Lot2meanT.PNG). Although you can see the mean skewing upwards; our confidence interval includes our expected mean with relatively low variance.


## Study Design: MechaCar vs Competition
Write a short description of a statistical study that can quantify how the MechaCar performs against the competition. In your study design, think critically about what metrics would be of interest to a consumer: for a few examples, cost, city or highway fuel efficiency, horse power, maintenance cost, or safety rating.
In your description, address the following questions:
What metric or metrics are you going to test?
What is the null hypothesis or alternative hypothesis?
What statistical test would you use to test the hypothesis? And why?
What data is needed to run the statistical test?
