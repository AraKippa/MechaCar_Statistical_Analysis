# MechaCar_Statistical_Analysis
Mod 15 Challenge

## Linear Regression to Predict MPG
Both vehicle length and ground clearance provided a significant amount of variance to the mpg values in the dataset.
Our slope of the linear model is considered to be close to zero. Our estimated slope is -1.040e+02 with a Std Error of  1.585e+01. The p-value of 5.08e-08, well short of our 0.05 statistical parameters. With a slope to zero it calls into question the validity of of variance. The closer to zero our slope the less significance our independent variable if m=0 then m(x) = 0. Negating any significant relationship between x and y.
Per our multiple R squared value of 0.7149 and a p-value of 5.35e-11 this linear model appears to predict mpg of MechaCar prototypes effectively. However, there are only two variables which have significant variance in our data set. Indicating over half our independent variables have no affect on mpg.  This makes this model look like a poor predictor for MechaCar prototypes.

## Summary Statistics on Suspension Coils
write a short summary using screenshots from your total_summary and lot_summary dataframes, and address the following question:

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

## T-Tests on Suspension Coils
summarize your interpretation and findings for the t-test results. Include screenshots of the t-test to support your summary.

## Study Design: MechaCar vs Competition
Write a short description of a statistical study that can quantify how the MechaCar performs against the competition. In your study design, think critically about what metrics would be of interest to a consumer: for a few examples, cost, city or highway fuel efficiency, horse power, maintenance cost, or safety rating.
In your description, address the following questions:
What metric or metrics are you going to test?
What is the null hypothesis or alternative hypothesis?
What statistical test would you use to test the hypothesis? And why?
What data is needed to run the statistical test?
