==================================================================
Course Project for Getting and Cleaning Data Course
==================================================================
By Rong Cai
==================================================================

In this project, the original data need to be downloaded from website:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

There are 8 files used in this project.The file names are

subject_train.txt: volunteer id number includes 1 variable and 7352 records
subject_test.txt: volunteer id number includes 1 variable and 2947 records
y_train.txt: activity id number includes 1 variable and 7352 records
y_test.txt: activity id number includes 1 variable and 2947 records
X_train.txt: all measures include 561 variables and 7352 records
X_test.txt: all measures include 561 variable and 2947 records
features.txt: names of all measures include 2 variable and 561 records
activity_labels.txt: label of activity id number inculde 2 variables and 6 records

The goal for this project is to merge all training and test files together, apply labels to activity data, give descriptive name to all variables, subset data with only variables including subject, activity, means, and std, and create a clean tidy dataset with average numbers for all columns by subject and activity from the subset.

Final submit include items in repos:

run_analysis.R
tidydata.txt
CodeBook.md
README.md