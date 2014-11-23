README file for Getting and Cleaning Data Course Project
===========
author: "Jin-Keat Lim"
date: "Saturday, November 22, 2014"

**Introduction**

This is the README for the Getting and Cleaning Data Course Project. 

The raw data and analysis comes from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

In addition, background information can be found at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Full credit for the experiment and analysis on the data goes to the original authors at the aforementioned website, and contents from their report may be quoted here. 

**Background of Course Project**

The scope of the Course Project is to create an R script "run_analysis.R" which takes the raw data files as inputs and outputs a "tidy_dataset.txt" file. Before running the script, the following files must already be unzipped in the working directory:

1. X_train.txt
2. Y_train.txt
3. X_test.txt
4. Y_test.txt
5. features.txt
6. subject_train.txt
7. subject_test.txt
8. activity_labels.txt

**Files listed in repository**

The following files are listed in this repository:

1. README.md - the current readme R markdown file
2. run_analysis.R - the R script which creates a tidy dataset from the UCI HAR raw data
3. tidy_dataset.txt - the tidy dataset in text format
4. CodeBook.md - the CodeBook explaining each variable within the tidy dataset
