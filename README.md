# getdata-015 project

Merges and creates tidy data set containing average measurements per test subject per activities.

## Prequisite

1. download https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip and unzip it to working directory

## Usage

1. place `run_analysis.R` in working directory, you should have the following items in directory:

    * run_analysis.R
    * UCI HAR Dataset

2. run R in working directory

3. load the script `run_analysis.R` within working directory 

        source('run_analysis.R')

4. run the dataset generation function

        writeTidyDataset('avg_activity_subject.txt')

Output should be generated as `avg_activity_subject.txt`.
