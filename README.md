# MechaCar Statistical Analysis
Statisitical analysis of automobile performance with R


## Linear Regression to Predict MPG
![MPG Linear Regression](https://user-images.githubusercontent.com/119247984/232639524-0fe79e0f-81a1-4058-a261-e67fde43b505.png)

*The vehicle length, and vehicle ground clearance are statistically likely to provide non-random amounts of variance to the model. That is to say, the vehicle length and vehicle ground clearance have a significant impact on miles per gallon.
*The slope of the linear model can not be considered to be zero, as the p-value of 5.35x10-11, is lower than even an extreme level of significance, and thus the null hypothesis must be rejected. This means that the relationship between our variables and the miles per gallon is subject to more than random chance.
*This model does predict the mpg of the MechaCar prototype with some relative effectiveness. The r-squared value of 0.7149 indicates that the model is 71% accurate

## Summary Statistics on Suspension Coils
![Total Summary](https://user-images.githubusercontent.com/119247984/232640112-bff25ba1-f562-44d0-9bcd-82c5f0f5a39f.png)
![Lot Summary](https://user-images.githubusercontent.com/119247984/232640121-86c59b31-c525-4d81-a96d-4c131b323b60.png)

*Reviewing the statistics for all production lots; the average variance is 62.29 which is within limit. However, since the number is closer to 100, this could mean one or more lot(s) may not be consistent in their manufacturing process.
*Reviewing the statistics individually for each lot, we can identify that lots 1 and 2 are within range and consistent during the manufacturing process. Lot 3 exceeds 70% over the suspension coils PSI requirements set for the design specification, thus bringing the average PSI for all lots higher.

## T-Tests on Suspension Coils
![T-Tests](https://user-images.githubusercontent.com/119247984/232640514-ef8c5db3-08cb-46cf-a4f4-6c722f9af99a.png)

T-Tests have been completed for all 3 manufacturing lots; individually and as a group. This is to identify any statistical differences of the population mean of 1500 PSI and the manufacturing lots.

