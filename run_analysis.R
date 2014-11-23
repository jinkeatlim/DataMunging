##this script assumes you are in the same working directory as the 
##following raw data files, and the files have already been unzipped/extracted:
#1. X_train.txt
#2. Y_train.txt
#3. X_test.txt
#4. Y_test.txt
#5. features.txt
#6. subject_train.txt
#7. subject_test.txt
#8. activity_labels.txt

##Parts 1,3, and 4 - creating a complete df first with all features/labels

library(dplyr)
library(reshape2)

##reading features list
features <- read.table("features.txt")
features <- as.character(levels(features$V2)[features$V2])

##reading activity lookup table
activity <- read.table("activity_labels.txt")

##reading training/test datasets
traindf <- read.table("X_train.txt")
testdf <- read.table("X_test.txt")
traindf_labels <- read.table("Y_train.txt")
testdf_labels <- read.table("Y_test.txt")
subjtrain <- read.table("subject_train.txt")
subjtest <- read.table("subject_test.txt")

##assigning correct column names to each dataframe
colnames(traindf_labels) <- "Activity_Code"
colnames(testdf_labels) <- "Activity_Code"
colnames(activity) <- c("Activity_Code", "Activity_Description")
colnames(subjtrain) <- "Subject"
colnames(subjtest) <- "Subject"
colnames(traindf) <- features
colnames(testdf) <- features

##Adding common column "index" to each dataframe before merging. Not necessary, but good practice.
##This also assists when merging since merge() sorts the final dataframe.
##Ordering index by training set first, then test set following training set
traindf_labels$index <- 1:nrow(traindf_labels)
startindex_test <- nrow(traindf_labels) +1
testdf_labels$index <- startindex_test:(startindex_test + nrow(testdf_labels)-1)
traindf$index <- 1:nrow(traindf)
testdf$index <- (nrow(traindf)+1) : ( (nrow(traindf)+1) + nrow(testdf)-1 )
subjtrain$index <- 1:nrow(subjtrain)
subjtest$index <- (nrow(subjtrain)+1) : ( (nrow(subjtrain)+1) + nrow(subjtest)-1 )

#before rbind, can check if the two df columns match using all( names(df1)==names(df2) ) from console.
masterfeatures <- rbind(traindf, testdf)
masteractivity <- rbind(traindf_labels, testdf_labels)
mastersubject <- rbind(subjtrain, subjtest)

#merging required dataframes to create a master df
masterdf <- merge(masterfeatures, masteractivity, by="index",all.x=T)
masterdf <- merge(masterdf, mastersubject, by="index", all.x=T)
masterdf <- merge(masterdf, activity, by="Activity_Code", all.x=T)

##Part 2 - I extracted only measurements which included mean() or std(). There were some
##variables which used the mean, but output a different measurement i.e. "angle(Y,gravityMean)". This
##final output example is an angle, and I proceeded under the assumption these should be excluded

namelist <- names(masterdf)
colindex_to_extract1 <- grep("mean()", namelist, fixed=T)
colindex_to_extract2 <- grep("std()", namelist, fixed=T)
colindex_to_extract3 <- grep("Subject|Activity_Description", namelist)
colindex_to_extract <- c(colindex_to_extract3, colindex_to_extract1, colindex_to_extract2)

measurementdf <- masterdf[,colindex_to_extract]

##Part 5 - taking the extracted measurements and creating a tidy dataset

tidydfmelt <- melt(measurementdf, id=c("Subject", "Activity_Description"))
tidydata <- dcast(tidydfmelt, Subject + Activity_Description ~ variable, mean)

#exporting the dataframe to a text file
write.table(tidydata, file="tidy_dataset.txt", row.name=F)

