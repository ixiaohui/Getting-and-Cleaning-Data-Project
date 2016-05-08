# CodeBook 
This is a code book that describes the variables, the data, and transformations or work that I performed to clean up the data.

### The raw data
The data of this project is the Human Activity Recognition Using Smartphones Dataset Version 1.0, which can be download from [the link](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

It is built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors. They are within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

More detailed information about the raw data could be found at [the link](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).  

### steps from raw data to tidy data
1. Set the `UCI HAR Dataset` folder as the working directory. 
2. Load the training and the test data set to R.
3. Merge the training and the test sets to create one data set `data`.
4. Select the mean and standard deviation measurements variables from `feature` list.
5. Select the mean and standard deviation measurements data from the `data` and get`dataselect` 
6. Use descriptive activity names to name the activities in the data set and get `dataselect2`
7. Label the data set with descriptive variable names and make them more compact
8. From the data set in step 7, creates a second, independent tidy data set with the average of each variable for each activity and each subject using `melt` and `dcast` function in the package `reshape2`

### Tidy Data Variables
The `tidy.txt` contains the data of the average of each mean and standard deviation measurement variable for each activity and each subject. The dimension of the tidy data is 180*68.

The id variables are:  

* subject: The ID of the subject who participates in the test
* activity: There are six type of activities which are "WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING" and "LAYING"

The mean and standard deviation measurement variables are:

* tBodyAccMeanX
* tBodyAccMeanY
* tBodyAccMeanZ          
* tBodyAccStdX            
* tBodyAccStdY             
* tBodyAccStdZ           
* tGravityAccMeanX         
* tGravityAccMeanY         
* tGravityAccMeanZ        
* tGravityAccStdX         
* tGravityAccStdY         
* tGravityAccStdZ        
* tBodyAccJerkMeanX       
* tBodyAccJerkMeanY        
* tBodyAccJerkMeanZ       
* tBodyAccJerkStdX        
* tBodyAccJerkStdY        
* tBodyAccJerkStdZ        
* tBodyGyroMeanX           
* tBodyGyroMeanY           
* tBodyGyroMeanZ          
* tBodyGyroStdX            
* tBodyGyroStdY            
* tBodyGyroStdZ           
* tBodyGyroJerkMeanX       
* tBodyGyroJerkMeanY       
* tBodyGyroJerkMeanZ      
* tBodyGyroJerkStdX        
* tBodyGyroJerkStdY        
* tBodyGyroJerkStdZ       
* tBodyAccMagMean          
* tBodyAccMagStd           
* tGravityAccMagMean      
* tGravityAccMagStd       
* tBodyAccJerkMagMean      
* tBodyAccJerkMagStd      
* tBodyGyroMagMean         
* tBodyGyroMagStd          
* tBodyGyroJerkMagMean    
* tBodyGyroJerkMagStd      
* fBodyAccMeanX            
* fBodyAccMeanY           
* fBodyAccMeanZ            
* fBodyAccStdX             
* fBodyAccStdY           
* fBodyAccStdZ             
* fBodyAccJerkMeanX        
* fBodyAccJerkMeanY       
* fBodyAccJerkMeanZ        
* fBodyAccJerkStdX         
* fBodyAccJerkStdY        
* fBodyAccJerkStdZ         
* fBodyGyroMeanX           
* fBodyGyroMeanY          
* fBodyGyroMeanZ           
* fBodyGyroStdX            
* fBodyGyroStdY           
* fBodyGyroStdZ            
* fBodyAccMagMean          
* fBodyAccMagStd          
* fBodyBodyAccJerkMagMean
* fBodyBodyAccJerkMagStd   
* fBodyBodyGyroMagMean    
* fBodyBodyGyroMagStd    
* fBodyBodyGyroJerkMagMean
* fBodyBodyGyroJerkMagStd 


