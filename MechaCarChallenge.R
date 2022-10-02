# Deliverable 1: Linear Regression to Predict MPG 


# 3.	Use the library() function to load the dplyr package
library(dplyr)

# 4.	Import and read in the MechaCar_mpg.csv file as a dataframe
library(tidyverse)
mechacar_mpg_data <- read.csv(file = 'data/MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)

# 5.	Perform linear regression using the lm() function
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mechacar_mpg_data)

# 6.	Using the summary() function, determine the p-value and the r-squared value for the linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mechacar_mpg_data))



# Deliverable 2: Create Visualizations for the Trip Analysis 



# 2. Import and read in the Suspension_Coil.csv file as a table
mechacar_coil_data <- read.csv(file='data/Suspension_Coil.csv',check.names = F,stringsAsFactors = F)

# 3. Use the summarize() function to get the mean, median, variance, and standard deviation of the suspension coil’s PSI column
total_summary <- mechacar_coil_data %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep') 

# 4. Use the group_by() and the summarize() functions to group each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil’s PSI column
lot_summary <- mechacar_coil_data %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep')



# Deliverable 3: T-Tests on Suspension Coils 



# 1. Write an RScript using the t.test() function to determine if the PSI across all manufacturing lots 
t.test(mechacar_coil_data$PSI,mu=1500)

# 2. Write three more RScripts in your MechaCarChallenge.RScript using the t.test() function and its subset() argument to determine if the PSI for each manufacturing lot
t.test(subset(mechacar_coil_data, Manufacturing_Lot=="Lot1")$PSI,mu=1500)
t.test(subset(mechacar_coil_data, Manufacturing_Lot=="Lot2")$PSI,mu=1500)
t.test(subset(mechacar_coil_data, Manufacturing_Lot=="Lot3")$PSI,mu=1500)

