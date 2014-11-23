---
title: "CodeBook for Getting and Cleaning Data Course Project"
author: "Jin-Keat Lim"
date: "Saturday, November 22, 2014"
output: html_document
---

**Introduction**

This is the Codebook for the Getting and Cleaning Data Course Project. 

The raw data and analysis comes from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

In addition, background information can be found at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Full credit for the experiment and analysis on the data goes to the original authors at the aforementioned website, and contents from their report may be quoted here. 


**Variables listed in the tidy dataset:**

- Subject: An identifier of the subject who carried out the experiment. 
- Activity_Description: A description of the activity that was performed by the subject carrying out the experiment. 

Below is an excerpt from the original authors' features_info.txt file that explains the remaining variables, **with the addendum that the values listed in this tidy dataset represent the average for each subject/activity combination.** Please see the README.md file in the same repository for more information. 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

- tBodyAcc-XYZ
- tGravityAcc-XYZ
- tBodyAccJerk-XYZ
- tBodyGyro-XYZ
- tBodyGyroJerk-XYZ
- tBodyAccMag
- tGravityAccMag
- tBodyAccJerkMag
- tBodyGyroMag
- tBodyGyroJerkMag
- fBodyAcc-XYZ
- fBodyAccJerk-XYZ
- fBodyGyro-XYZ
- fBodyAccMag
- fBodyAccJerkMag
- fBodyGyroMag
- fBodyGyroJerkMag

Note that the features are normalized and bounded within [-1,1] and thus do not have units.

The set of variables that were estimated from these signals are listed below, and are denoted as suffixes:

- mean(): Mean value
- std(): Standard deviation


