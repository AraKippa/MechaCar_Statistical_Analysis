# MechaCar_Statistical_Analysis
Mod 15 Challenge

## Linear Regression to Predict MPG
Both vehicle length and ground clearance provided a significant amount of variance to the mpg values in the dataset.
Our slope of the linear model is considered to be close to zero. Our estimated slope is -1.040e+02 with a Std Error of  1.585e+01. The p-value of 5.08e-08, well short of our 0.05 statistical parameters. With a slope close to zero, it calls into question the validity of variance. The closer to zero our slope, the less significance our independent variable if m=0 then m(x) = 0. Negating any significant relationship between x and y.
Our multiple R squared value of 0.7149 with a p-value of 5.35e-11, appears to predict mpg of MechaCar prototypes effectively. However, there are only two variables which have significant variance in our data set. Indicating over half our independent variables have no affect on mpg.  This makes this model look like a poor predictor for MechaCar prototypes.

## Summary Statistics on Suspension Coils

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. If we are to interpret Lot three as the current manufacturing data; it does not meet this design specification.
Looking at the total manufacturing data, we are within parameters. ![total_summary](Total_Summary.png) The variance is 62, well within our 100 pound threshold.  
There is a disturbing trend though, once we start breaking down the data by [Lot Summary](Lot_Summary). The variance level on Lot three exceeds our 100 pounds per square inch parameter. There was a 662% increase in variance from Lot one to Lot two and an astounding 2176% increase from Lot two to Lot three.  
A re-evaluation of the Suspension coils process should begin immediately.

## T-Tests on Suspension Coils

Across all lots the hypothesis that our true mean is equal to 1500 is failing with a p-value of 1.  This does not meet our standard of 0.05.
The issue again points to [Lot Three](Lot3meanT.PNG. It has a mean of 1496.14 and a confidence interval below the mean on either side.
There is some encouraging data from  data from [Lot One](Lot1meanT.PNG).  This continues to [Lot Two](Lot2meanT.PNG). Although you can see the mean skewing upwards; our confidence interval includes our expected mean with relatively low variance.


## Study Design: MechaCar vs Competition

For the purpose of this study we'll look at a recent [NY Daily News article](https://www.nydailynews.com/autos/buyers-guide/10-top-reasons-people-buy-specific-cars-article-1.2552707). Reliability, styling, previous experience with brand/model, reputation/reviews and ride/handling are the top five concerns.  Many of these appear subjective and will fall into categorical testing methods like Chi square testing.
We will tackle the requirement of reliability.  We can get some solid numbers on this using dealership repair information to compare with our competitors.  Using dealerships will help narrow our data sets.  For our hypothesis we will hypothesize MechaCar cars require significanetly fewer repair trips for electrical issues per year, compared to our main competitor Keeah. Null hypothesis would indicate no significance in number of repair visits.
This could be compared with a Two Sample t-test.  We would also need to compare a similar model and same year build and screen for outliers in mileage (escessive or non-existant).
Once all factors are evaluated for an even comparison in our two sample t-test, we would have an indication of reliability of our vehicle model versus our competitors similar model as regards electrical issue reliability.  This test is also malleable and we could consider (once we had an established comparison vehicle model) multiple repair shop vist reasons i.e. safety, mechanical, build quality.  It is a versatile first step.
