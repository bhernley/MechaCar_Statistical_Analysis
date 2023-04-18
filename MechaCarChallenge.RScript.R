#Part 1
#Use the library() function to load the dplyr package.
library(dplyr)

#Import and read in the MechaCar_mpg.csv file as a dataframe.
mechacar_mpg_df <- read.csv(file='MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)

#Perform linear regression 
lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, data = mechacar_mpg_df)

#determine the p-value and the r-squared value for the linear regression model.
summary(lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, data = mechacar_mpg_df))

#Part 2
#import and read in the Suspension_Coil.csv file as a table
suspension_coil_df <- read.csv(file = 'Suspension_Coil.csv', check.names = F, stringsAsFactors = F)

# create a summary dataframe
total_summary <- suspension_coil_df %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))

# create summaries for each lot
lot_summary <- suspension_coil_df %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')

#Part 3
#T-tests on suspension coils
t.test(suspension_coil_df$PSI, mu=1500)

t.test(subset(suspension_coil_df,Manufacturing_Lot=="Lot1")$PSI, mu = 1500)
t.test(subset(suspension_coil_df,Manufacturing_Lot=="Lot2")$PSI, mu = 1500)
t.test(subset(suspension_coil_df,Manufacturing_Lot=="Lot3")$PSI, mu = 1500)