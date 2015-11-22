run_analysis <- function () {
  
  #Read training data
  trainingset <- read.table("UCI HAR Dataset/train/X_train.txt")
  traininglabels <- read.table("UCI HAR Dataset/train/y_train.txt")
  trainingsubject <- read.table("UCI HAR Dataset/train/subject_train.txt")
  
  #Read test data
  testset <- read.table("UCI HAR Dataset/test/X_test.txt")
  testlabels <- read.table("UCI HAR Dataset/test/y_test.txt")
  testsubject <- read.table("UCI HAR Dataset/test/subject_test.txt")
  
  #Read features and labels
  features <- read.table("UCI HAR Dataset/features.txt")
  activitylabels <- read.table("UCI HAR Dataset/activity_labels.txt")
  
  #merge training and test data
  mergedset <- rbind(trainingset, testset)
  #merge training and test labels
  mergedlabels <- rbind(traininglabels, testlabels)
  #merges subjects
  mergedsubject <- rbind(trainingsubject, testsubject)
  
  #add varialbe names to columns for the features
  colnames(mergedset) <- features[,2]
  
  #Add labels for Activity and Subject columns
  colnames(mergedlabels) <- "Activity"
  colnames(mergedsubject) <- "Subject"
  
  #merge into one set of data
  allmerged <- cbind(mergedset,mergedlabels,mergedsubject)
  
  #Get rid of duplicates by recreating the data frame with unique index
  allmerged <- allmerged[,]
  
  #Add descriptive activity names instead of numeric values
  allmerged$Activity <- factor(allmerged$Activity, levels = c(1:6), labels = (activitylabels$V2))
  
  #Group by activities and subjects and run mean function only on columns that have mean or std in the variable names 
  allmerged <-allmerged %>% 
    group_by(Activity, Subject) %>% 
    summarise_each (funs(mean), contains("mean()"), contains("std()"))
  
  #Save the finished data set 
  write.table(allmerged, "tidy.txt", row.names = FALSE)
  #head(allmerged)

}