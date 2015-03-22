README - Human Activity Recognition Using Smartphones
=========================================================

Files
--------------
1. run_analysis.R - R Script to create tidy data from the Samsung HAR data as raw data

2. UCI HAR Dataset - The raw data set Directory created on unziping the Samsung HAR data. NOTE: This data directory is expected to be present in the directory from where the scipt is run.

3. CodeBook.md  - CodeBook describes the raw data,variables in the tidy data and the transformations done on the raw data set to create the tidy data.

4. tidy-data.txt - Result file containing tidy data which will be generated on running the run_analysis.R script

How to Run
------------
1. Download the HAR data from the following url: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip . Unzip it and check if the directory named "UCI HAR Dataset" is created and is not empty and contains the files 

        ./activity_labels.txt
        
        ./test/X_test.txt
                
        ./test/y_test.txt
                
        ./test/subject_test.txt
                
        ./train/X_train.txt
                
        ./train/subject_train.txt
                
        ./train/y_train.txt
                
        ./features.txt

There are other files as well but the script execution is dependent on the above mentioned files.

2. Download run_analysis.R and/or source it.

> source("run_analysis.R")

The script should run without error.


View Results
-------------
In the directory where the result file is created run the following R code

>data<-read.table("./tidy-data.txt",header=TRUE)
        
>View(data)

License:
---------
Use of the original HARdataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
