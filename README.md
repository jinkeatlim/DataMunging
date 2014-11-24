README file for Getting and Cleaning Data Course Project
===========
author: Jin-Keat Lim

date: Saturday, November 22, 2014

**Introduction**

This is the README for the Getting and Cleaning Data Course Project. 

The raw data and analysis comes from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

In addition, background information can be found at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Full credit for the experiment and analysis on the data goes to the original authors at the aforementioned website, and contents from their report may be quoted here. 

**Background of Course Project**

The scope of the Course Project is to create an R script "run_analysis.R" which takes the raw data files as inputs and outputs a "tidy_dataset.txt" file (with a header). Before running the script, the following files must already be unzipped in the working directory:

1. X_train.txt
2. Y_train.txt
3. X_test.txt
4. Y_test.txt
5. features.txt
6. subject_train.txt
7. subject_test.txt
8. activity_labels.txt

**Methodology of script**

To be more detailed, the provided script performs the following operations on the aforementioned files:

1. Merges the training and the test sets to create one data set
2. Extracts only the measurements on the mean and standard deviation for each measurement
3. Uses descriptive activity names to name the activities in the data set from *activity_labels.txt*
4. Appropriately labels the data set with descriptive variable names, partially from *features.txt*
5. From the data set in step 4, creates a second, independent tidy data set *(tidy_dataset.txt)* with the average of each variable for each activity and each subject

**Files listed in repository**

The following files are listed in this repository:

1. README.md - the current readme R markdown file
2. run_analysis.R - the R script which creates a tidy dataset from the UCI HAR raw data
3. tidy_dataset.txt - the tidy dataset in text format. *Note that when using read.table() to read this text file into a dataframe, the parameter header=T should be used.*
4. CodeBook.md - the CodeBook explaining each variable within the tidy dataset
