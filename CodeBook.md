# Introduction

* Reads in all of the data from each file and stores in separate variables 
* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement using the names from features.txt
* Uses activity names from activity_labels.txt to name the activities in the data set
* Appropriately labels the data set with descriptive variable names. 
* Creates a tidy dataset with the averages of each subject and activity type

# Variables

* 'train_x' - Contains training data for x measurements
* 'train_y' - Contains training data for y measurements
* 'train_sub' - Contains training data for subjects
* 'test_x' - Contains test data for x measurements
* 'test_y' - Contains test data for y measurements
* 'test_sub' - Contains test data for subjects
* 'compl_x' - Contains combination of test data and training data for x measurements
* 'compl_y' - Contains combination of test data and training data for y measurements
* 'compl_sub' - Contains combination of test data and training data for subjects
* 'features' - stores data from features.txt
* 'activities' - stores data from activity_labels.txt
* 'ptn' - stores RegEx pattern to extract mean and std dev columns
* 'ndexVec' - index vector of mean and std dev columns
* 'compl_data' - combination of all data relating to mean and std dev
* 'averages_data' - Data table for tidy data set of the averages for each subject and activity type