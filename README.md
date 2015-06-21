# getdata-015 project

Merges and creates tidy data set containing average measurements per test subject per activities.

## Usage

1. unzip 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip' to same directory as `run_analysis.R`
2. run R with working directory containing `run_analysis.R`
3. load the script in R:
        source('run_analysis.R')
4. generate tidy data:
        data <- avgActivityBySubject()

