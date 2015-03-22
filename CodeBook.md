Code-book - Human Activity Recognition Using Smartphones
=========================================================

Description
------------
This codebook gives 

a) summary of the raw data from the HAR dataset available at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.

b) Description of the tidy data set variables

c) Transformations done on the raw data set to get the tidy dataset

Raw Dataset Summary
---------------------

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' in the rawdata set directory for more details. 


Data from the following files from the raw data set were used to create the tidy dataset:

- 'features.txt': List of all features. This has 561 feature variables. We are using only the
79 variables which are mean and standard deviation estimates. For more detail see features-info.txt in the raw data zip file.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample in training data. Its range is from 1 to 30. 

- 'test/subject_test.txt': Each row identifies the subject who performed the activity for each window sample in test data. Its range is from 1 to 30. 

Tidy Dataset Variables
----------------------

        1.       subject 
                : Identification number of the subject whose data is recorded.
                
                Data type - numeric
                
                Values
                        
                  1-30  Number of subjects in study are 30
.

        2.       activity 
                : Type of activity which is performed by the subject.
                
                Data type - factor with levels mentioned as values below
                Values
                   
                   1 WALKING
                   
                   2 WALKING_UPSTAIRS
                   
                   3 WALKING_DOWNSTAIRS
                   
                   4 SITTING
                  
                   5 STANDING
                   
                   6 LAYING
           
The next 79 Variables are the MEAN of features vector with time and frequency domain variables which are defined in features_info.txt. They come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ). 
Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions. Only the variable where mean or standard deviation was calculated are returned. Please note that on these feature variables we have further taken a mean. List of the variable is as follows:

        Values:   Features are normalized and bounded within [-1,1] and mean of mean/standard deviation will lie in the same bound. 
        
        Data Type: numeric
 
        3. tBodyAcc-mean()-X::	mean of Time domain variable coming from  accelerometer that defines body acceleration mean in X direction
        
        4. tBodyAcc-mean()-Y ::	mean of Time domain variable coming from  accelerometer that defines body acceleration mean in Y direction
        
        5. tBodyAcc-mean()-Z ::	mean of Time domain variable coming from  accelerometer that defines body acceleration mean in Z direction
        
        6. tBodyAcc-std()-X  ::	mean of Time domain variable coming from  accelerometer that defines body acceleration standard deviation in X direction
        
        7. tBodyAcc-std()-Y  ::	mean of Time domain variable coming from  accelerometer that defines body acceleration standard deviation in Y direction
        
        8. tBodyAcc-std()-Z  ::	mean of Time domain variable coming from  accelerometer that defines body acceleration standard deviation in Z direction
        
        9. tGravityAcc-mean()-X ::	mean of Time domain variable coming from  accelerometer that defines gravity acceleration mean in X direction
        
        10. tGravityAcc-mean()-Y ::	mean of Time domain variable coming from  accelerometer that defines gravity acceleration mean in Y direction
        
        11. tGravityAcc-mean()-Z  ::	mean of Time domain variable coming from  accelerometer that defines gravity acceleration mean in Z direction
        
        12. tGravityAcc-std()-X ::	mean of Time domain variable coming from  accelerometer that defines gravity acceleration standard deviation in X direction
        
        13. tGravityAcc-std()-Y ::	mean of Time domain variable coming from  accelerometer that defines gravity acceleration standard deviation in Y direction
        
        14. tGravityAcc-std()-Z ::	mean of Time domain variable coming from  accelerometer that defines gravity acceleration standard deviation in Z direction
        
        15. tBodyAccJerk-mean()-X ::	mean of Time domain variable coming from  accelerometer that defines body acceleration jerk mean in X direction
        
        16. tBodyAccJerk-mean()-Y ::	mean of Time domain variable coming from  accelerometer that defines body acceleration jerk mean in Y direction
        
        17. tBodyAccJerk-mean()-Z ::	mean of Time domain variable coming from  accelerometer that defines body acceleration jerk mean in Z direction
        
        18. tBodyAccJerk-std()-X  ::	mean of Time domain variable coming from  accelerometer that defines body acceleration jerk standard deviation in X direction
        
        19. tBodyAccJerk-std()-Y  ::	mean of Time domain variable coming from  accelerometer that defines body acceleration jerk standard deviation in Y direction
        
        20. tBodyAccJerk-std()-Z ::	mean of Time domain variable coming from  accelerometer that defines body acceleration jerk standard deviation in Z direction
        
        21. tBodyGyro-mean()-X ::	mean of Time domain variable coming from  gyroscope that defines body angular momentum mean in X direction
        
        22. tBodyGyro-mean()-Y ::	mean of Time domain variable coming from  gyroscope that defines body angular momentum mean in Y direction
        
        23. tBodyGyro-mean()-Z ::	mean of Time domain variable coming from  gyroscope that defines body angular momentum mean in Z direction
        
        24. tBodyGyro-std()-X  ::	mean of Time domain variable coming from  gyroscope that defines body angular momentum standard deviation in X direction
        
        25. tBodyGyro-std()-Y  ::	mean of Time domain variable coming from  gyroscope that defines body angular momentum standard deviation in Y direction
        
        26. tBodyGyro-std()-Z  ::	mean of Time domain variable coming from  gyroscope that defines body angular momentum standard deviation in Z direction
        
        27. tBodyGyroJerk-mean()-X ::	mean of Time domain variable coming from  gyroscope that defines body angular momentum jerk mean in X direction
        
        28. tBodyGyroJerk-mean()-Y ::	mean of Time domain variable coming from  gyroscope that defines body angular momentum jerk mean in Y direction
        
        29. tBodyGyroJerk-mean()-Z ::	mean of Time domain variable coming from  gyroscope that defines body angular momentum jerk mean in Z direction
        
        30. tBodyGyroJerk-std()-X  ::	mean of Time domain variable coming from  gyroscope that defines body angular momentum jerk standard deviation in X direction
        
        31. tBodyGyroJerk-std()-Y  ::	mean of Time domain variable coming from  gyroscope that defines body angular momentum jerk standard deviation in Y direction
        
        32. tBodyGyroJerk-std()-Z  ::	mean of Time domain variable coming from  gyroscope that defines body angular momentum jerk standard deviation in Z direction
        
        33. tBodyAccMag-mean() ::	mean of Time domain variable coming from  accelerometer that defines body acceleration magnitude mean 
        
        34. tBodyAccMag-std()  ::	mean of Time domain variable coming from  accelerometer that defines body acceleration magnitude standard deviation 
        
        35. tGravityAccMag-mean() ::	mean of Time domain variable coming from  accelerometer that defines gravity acceleration magnitude mean 
        
        36. tGravityAccMag-std()  ::	mean of Time domain variable coming from  accelerometer that defines gravity acceleration magnitude standard deviation 
        
        37. tBodyAccJerkMag-mean() ::	mean of Time domain variable coming from  accelerometer that defines body acceleration jerk magnitude mean 
        
        38. tBodyAccJerkMag-std() ::	mean of Time domain variable coming from  accelerometer that defines body acceleration jerk magnitude standard deviation 
        
        39. tBodyGyroMag-mean()	::	mean of Time domain variable coming from  gyroscope that defines body angular momentum magnitude mean 
        
        40. tBodyGyroMag-std()  ::	mean of Time domain variable coming from  gyroscope that defines body angular momentum magnitude standard deviation 
        
        41. tBodyGyroJerkMag-mean() ::	mean of Time domain variable coming from  gyroscope that defines body angular momentum jerk magnitude mean 
        
        42. tBodyGyroJerkMag-std()  ::	mean of Time domain variable coming from  gyroscope that defines body angular momentum jerk magnitude standard deviation 
        
        43. fBodyAcc-mean()-X ::	mean of Frequency domain variable coming from accelerometer that defines body acceleration mean in X direction
        
        44. fBodyAcc-mean()-Y ::	mean of Frequency domain variable coming from accelerometer that defines body acceleration mean in Y direction
        
        45. fBodyAcc-mean()-Z ::	mean of Frequency domain variable coming from accelerometer that defines body acceleration mean in Z direction
        
        46. fBodyAcc-std()-X ::	mean of Frequency domain variable coming from accelerometer that defines body acceleration standard deviation in X direction
        
        47. fBodyAcc-std()-Y ::	mean of Frequency domain variable coming from accelerometer that defines body acceleration standard deviation in Y direction
        
        48. fBodyAcc-std()-Z ::	mean of Frequency domain variable coming from accelerometer that defines body acceleration standard deviation in Z direction
        
        49. fBodyAcc-meanFreq()-X ::	mean of Frequency domain variable coming from accelerometer that defines body acceleration mean frequency in X direction
        
        50. fBodyAcc-meanFreq()-Y ::	mean of Frequency domain variable coming from accelerometer that defines body acceleration mean frequency in Y direction
        
        51. fBodyAcc-meanFreq()-Z ::	mean of Frequency domain variable coming from accelerometer that defines body acceleration mean frequency in Z direction
        
        52. fBodyAccJerk-mean()-X ::	mean of Frequency domain variable coming from accelerometer that defines body acceleration jerk mean in X direction
        
        53. fBodyAccJerk-mean()-Y ::	mean of Frequency domain variable coming from accelerometer that defines body acceleration jerk mean in Y direction
        
        54. fBodyAccJerk-mean()-Z ::	mean of Frequency domain variable coming from accelerometer that defines body acceleration jerk mean in Z direction
        
        55. fBodyAccJerk-std()-X  ::	mean of Frequency domain variable coming from accelerometer that defines body acceleration jerk standard deviation in X direction
        
        56. fBodyAccJerk-std()-Y  ::	mean of Frequency domain variable coming from accelerometer that defines body acceleration jerk standard deviation in Y direction
        
        57. fBodyAccJerk-std()-Z  ::	mean of Frequency domain variable coming from accelerometer that defines body acceleration jerk standard deviation in Z direction
        
        58. fBodyAccJerk-meanFreq()-X ::	mean of Frequency domain variable coming from accelerometer that defines body acceleration jerk mean frequency in X direction
        
        59. fBodyAccJerk-meanFreq()-Y ::	mean of Frequency domain variable coming from accelerometer that defines body acceleration jerk mean frequency in Y direction
        
        60. fBodyAccJerk-meanFreq()-Z ::	mean of Frequency domain variable coming from accelerometer that defines body acceleration jerk mean frequency in Z direction
        
        61. fBodyGyro-mean()-X ::	mean of Frequency domain variable coming from gyroscope that defines body angular momentum mean in X direction
        
        62. fBodyGyro-mean()-Y ::	mean of Frequency domain variable coming from gyroscope that defines body angular momentum mean in Y direction
        
        63. fBodyGyro-mean()-Z ::	mean of Frequency domain variable coming from gyroscope that defines body angular momentum mean in Z direction
        
        64. fBodyGyro-std()-X  ::	mean of Frequency domain variable coming from gyroscope that defines body angular momentum standard deviation in X direction
        
        65. fBodyGyro-std()-Y  ::	mean of Frequency domain variable coming from gyroscope that defines body angular momentum standard deviation in Y direction
        
        66. fBodyGyro-std()-Z  ::	mean of Frequency domain variable coming from gyroscope that defines body angular momentum standard deviation in Z direction
        
        67. fBodyGyro-meanFreq()-X ::	mean of Frequency domain variable coming from gyroscope that defines body angular momentum mean frequency in X direction
        
        68. fBodyGyro-meanFreq()-Y ::	mean of Frequency domain variable coming from gyroscope that defines body angular momentum mean frequency in Y direction
        
        69. fBodyGyro-meanFreq()-Z ::	mean of Frequency domain variable coming from gyroscope that defines body angular momentum mean frequency in Z direction
        
        70. fBodyAccMag-mean() ::	mean of Frequency domain variable coming from accelerometer that defines body acceleration magnitude mean 
        
        71. fBodyAccMag-std()  ::	mean of Frequency domain variable coming from accelerometer that defines body acceleration magnitude standard deviation 
        
        72. fBodyAccMag-meanFreq() ::	mean of Frequency domain variable coming from accelerometer that defines body acceleration magnitude mean frequency 
        
        73. fBodyBodyAccJerkMag-mean() ::	mean of Frequency domain variable coming from accelerometer that defines body acceleration jerk magnitude mean 
        
        74. fBodyBodyAccJerkMag-std() ::	mean of Frequency domain variable coming from accelerometer that defines body acceleration jerk magnitude standard deviation 
        
        75. fBodyBodyAccJerkMag-meanFreq() ::	mean of Frequency domain variable coming from accelerometer that defines body acceleration jerk magnitude mean frequency 
        
        76. fBodyBodyGyroMag-mean() ::	mean of Frequency domain variable coming from gyroscope that defines body angular momentum magnitude mean 
        
        77. fBodyBodyGyroMag-std()  ::	mean of Frequency domain variable coming from gyroscope that defines body angular momentum magnitude standard deviation 
        
        78. fBodyBodyGyroMag-meanFreq() ::	mean of Frequency domain variable coming from gyroscope that defines body angular momentum magnitude mean frequency 
        
        79. fBodyBodyGyroJerkMag-mean() ::	mean of Frequency domain variable coming from gyroscope that defines body angular momentum jerk magnitude mean 
        
        80. fBodyBodyGyroJerkMag-std()  ::	mean of Frequency domain variable coming from gyroscope that defines body angular momentum jerk magnitude standard deviation 
        
        81. fBodyBodyGyroJerkMag-meanFreq() ::	mean of Frequency domain variable coming from gyroscope that defines body angular momentum jerk magnitude mean frequency 


Transformations
---------------

To get the current dataset following transformations were done on the raw dataset:

1. Merged the training and the test set from the raw dataset, to create one data set with 561 columns.

2. Greped features.txt for feature variables with mean or std (i.e. standard deviation) in name and got a data frame with col number and name for the same. Changed merged data to have only those columns which we got from greping features.txt. Then replaced the column names with the names of the feature variables we got from greping features.txt

3. Added columns of subject and activity labels to merged set by first joining the test and train sets values and then appending them to merged set as columns, subject and activity respectively.

5. Added descriptive activity names to name the activities in the merged data set by reading activity_labels.txt and changing the value of activity column in merged dataset from numeric value to factor with levels from the dataframe from activity_lables.txt

6. Created the tidy data set from the merged set which contains the average of each variable(feature variable) for each activity and each subject. We did this by melting the data with subject and activity as id and feature variables as variable and then dcasting them to get mean for each variable for each activity and each subject.