#Change to Samsung data directory
setwd("./UCI HAR Dataset/")
# Read the training and test sets
testset=read.table(file="./test/X_test.txt")
trainingset=read.table(file="./train//X_train.txt")
# create a merged set by joining the test and training sets
# Important to remember this order as will be used in joining
# activity and subjects test and training data tables
mergedset=rbind(testset,trainingset)

# remove the testset and trainingset to save some memory space
# helps in a low memory environment like mine
rm(testset)
rm(trainingset)

# get feature names from features file
featurenames=read.table(file="./features.txt")

# get cols with with mean and std in name from featurenames and
# set mergedset to have only those columns
cols=grep("mean|std",featurenames[,2])
mergedset=mergedset[,cols]

# set the names of mergedset cols from the feature names
colnames(mergedset)=featurenames[cols,2]
#rm feauture names as no longer needed
rm(featurenames)

# get test and training subjects and create a merged subject dataframe
testsubject=read.table(file="./test//subject_test.txt")
trainingsubject=read.table(file="./train//subject_train.txt")
subject=rbind(testsubject,trainingsubject)

# saving memory by removing test and training subject frames
# as they are already joined and stored in subject
rm(testsubject)
rm(trainingsubject)
# give the new merged subject's only column the name subject
colnames(subject)=c("subject")

# get test and training activity labels and create a merged activity label dataframe
testactivity=read.table(file="./test//y_test.txt")
trainingactivity=read.table(file="./train//y_train.txt")
activity=rbind(testactivity,trainingactivity)
# saving memory by removing test and training activity frames
# as they are already joined and stored in activity
rm(testactivity)
rm(trainingactivity)
# give the new merged activity frames's only column the name activity
colnames(activity)=c("activity")

# create a frame which subject and activity columns 
# will use it to add to the mergedset for training and test sets for feature data
subjectactivityset=cbind(subject,activity)
rm(activity)
rm(subject)
# add subject and activity cols to the front of merged set
mergedset=cbind(subjectactivityset,mergedset)
# remove data frame subject activity as no longer required
rm(subjectactivityset)

# get activity labels from file and after converting 
# the mergedsets activity col to factor convert the levels 
# to what we get in the activitylabels dataframe
# this will change all activity labels from numeric values to 
# their corresponding names
activitylabels=read.table(file="./activity_labels.txt")
mergedset$activity=as.factor(mergedset$activity)
levels(mergedset$activity)=activitylabels[,2]

# To create  independent tidy data set with the
# average of each variable for each activity and each subject.
library(reshape2)
# melt the data where subject and activity are id cols and rest are all variables
meltdata=melt(mergedset,id=c("subject","activity"),measure.vars=colnames(mergedset)[3:length(colnames(mergedset))])
# dcast the melted data for subject + activity combination and return mean for every 
# variable
res=dcast(meltdata,subject+activity~variable,mean)
#change working directory to original
setwd("..")
# write result to csv file named tidy-data.txt
write.table(x=res,file="./tidy-data.txt",row.name=FALSE)


