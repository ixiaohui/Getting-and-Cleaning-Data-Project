# Getting-and-Cleaning-Data-Project

This is the final project for Getting and Cleaning Data Course. 

## Project requirement

The `run_analysis.R` is the script for preparing the tidy data based on the project requirement which does the follwing:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


## Steps to work on this project
1. download the data for the project:[project link](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) and unzip it, you can get the folder `UCI HAR Dataset` which contains all the raw data.
2. Put run_analysis.R in the `UCI HAR Dataset` foler and set it as your working directory.
3. Run `source(run_analysis.R)`, then it will finish the project requirements showed above and generate the `tidy.txt` which is the tidy data set satisfying the project requirement.

## Notes
To run `run.analysis.R`, you should install the `reshape2` package. The script will help you to load it into the environment.
  



