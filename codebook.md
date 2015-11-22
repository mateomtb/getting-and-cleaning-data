#Code Book

#Original data

A full description of the original data is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Data used and included in this project was pulled from here: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Variable names and explanation of how values of features were colletcted can be found in this repository here. 
`UCI HAR Dataset/features.txt`
`UCI HAR Dataset/features_info.txt`

#Transformation

There are 5 activities that are being undertaken:
<ul>
  <li>Merges the training and the test sets to create one data set</li>
  <li>Extract the measurements on the mean and standard deviation for each measurement</li>
  <li>Use descriptive activity names to name the activities in the data set</li>
  <li>Use descriptive activity names to name the activities in the data set</li>
  <li>Label the data set with descriptive variable names</li>
  <li>From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject</li>
</ul>

#Variables
Activity - Activity each person was tracked for <br/>
Subject - Numeric value assigned to each peron in the experiment <br/>

The following variables are a subset of the originals and are explained in the code book here [UCI HAR Dataset/features_info.txt]
(https://github.com/mateomtb/getting-and-cleaning-data/blob/master/UCI%20HAR%20Dataset/features_info.txt)<br/>

tBodyAcc-mean()-X <br/>
tBodyAcc-mean()-Y <br/>
tBodyAcc-mean()-Z <br/>
tGravityAcc-mean()-X <br/>
tGravityAcc-mean()-Y <br/>
tGravityAcc-mean()-Z <br/>
tBodyAccJerk-mean()-X <br/>
tBodyAccJerk-mean()-Y <br/>
tBodyAccJerk-mean()-Z <br/>
tBodyGyro-mean()-X <br/>
tBodyGyro-mean()-Y <br/>
tBodyGyro-mean()-Z <br/>
tBodyGyroJerk-mean()-X <br/>
tBodyGyroJerk-mean()-Y <br/>
tBodyGyroJerk-mean()-Z <br/>
tBodyAccMag-mean() <br/>
tGravityAccMag-mean() <br/>
tBodyAccJerkMag-mean() <br/>
tBodyGyroMag-mean() <br/>
tBodyGyroJerkMag-mean() <br/>
fBodyAcc-mean()-X <br/>
fBodyAcc-mean()-Y <br/>
fBodyAcc-mean()-Z <br/>
fBodyAccJerk-mean()-X <br/>
fBodyAccJerk-mean()-Y <br/>
fBodyAccJerk-mean()-Z <br/>
fBodyGyro-mean()-X <br/>
fBodyGyro-mean()-Y <br/>
fBodyGyro-mean()-Z <br/>
fBodyAccMag-mean() <br/>
fBodyBodyAccJerkMag-mean() <br/>
fBodyBodyGyroMag-mean() <br/>
fBodyBodyGyroJerkMag-mean() <br/>
tBodyAcc-std()-X <br/>
tBodyAcc-std()-Y <br/>
tBodyAcc-std()-Z <br/>
tGravityAcc-std()-X <br/>
tGravityAcc-std()-Y <br/>
tGravityAcc-std()-Z <br/>
tBodyAccJerk-std()-X <br/>
tBodyAccJerk-std()-Y <br/>
tBodyAccJerk-std()-Z <br/>
tBodyGyro-std()-X <br/>
tBodyGyro-std()-Y <br/>
tBodyGyro-std()-Z <br/>
tBodyGyroJerk-std()-X <br/>
tBodyGyroJerk-std()-Y <br/>
tBodyGyroJerk-std()-Z <br/>
tBodyAccMag-std() <br/>
tGravityAccMag-std() <br/>
tBodyAccJerkMag-std() <br/>
tBodyGyroMag-std() <br/>
tBodyGyroJerkMag-std() <br/>
fBodyAcc-std()-X <br/>
fBodyAcc-std()-Y <br/>
fBodyAcc-std()-Z <br/>
fBodyAccJerk-std()-X <br/>
fBodyAccJerk-std()-Y <br/>
fBodyAccJerk-std()-Z <br/>
fBodyGyro-std()-X <br/>
fBodyGyro-std()-Y <br/>
fBodyGyro-std()-Z <br/>
fBodyAccMag-std() <br/>
fBodyBodyAccJerkMag-std() <br/>
fBodyBodyGyroMag-std() <br/>
fBodyBodyGyroJerkMag-std() <br/>


This is a sample of the tidy.txt file produced. It can be can be read into R with `read.table("tidy.txt", header = TRUE)`

```
   Activity Subject tBodyAcc-mean()-X tBodyAcc-mean()-Y tBodyAcc-mean()-Z
     (fctr)   (int)             (dbl)             (dbl)             (dbl)
1   WALKING       1         0.2773308       -0.01738382        -0.1111481
2   WALKING       2         0.2764266       -0.01859492        -0.1055004
3   WALKING       3         0.2755675       -0.01717678        -0.1126749
```


