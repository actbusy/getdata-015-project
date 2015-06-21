# getdata-015 project

Creates new data set from Samsung accelerometers data by

1. merging training and test data:
  1. join `X_test.txt`, `y_test.txt`, `subject_test.txt`
  2. join `X_train.txt`, `y_train.txt`, `subject_train.txt`
  3. combine the rows from above joins

2. selecting measurements on mean and standard deviation:
  1. feature labels read and modified from `features.txt`

3. labels activities with descriptive names from `activity_labels.txt`

4. calculate average value for each measurement per subject per activity

## Prequisite

1. download https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip and unzip it to working directory

## Usage

1. place `run_analysis.R` in working directory, you should have the following items in directory:

    * `run_analysis.R`
    * `UCI HAR Dataset`

2. run R in working directory

3. load the script `run_analysis.R` within working directory 

        source('run_analysis.R')

4. run the dataset generation function

        writeTidyDataset('avg_activity_subject.txt')

Output should be generated as `avg_activity_subject.txt`.
