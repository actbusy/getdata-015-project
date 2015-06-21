# Codebook for script output

subject - id of volunteer test subject
activity - one of six activities performed by subject:

    1. WALKING
    2. WALKING_UPSTAIRS
    3. WALKING_DOWNSTAIRS
    4. SITTING
    5. STANDING
    6. LAYING

Except 'subject' and 'activity', all column names have four parts:

1. prefixed 'avg' to indicate they contain the average values 
per subject per activity for respective measurements.

2. main signal type (time domain e.g. tBody, or frequency domain e.g. fBody)

3. value estimation from signals
    * mean - mean value
    * std - standard deviation
    
4. X, Y or Z depending on which axis was measured

More details are available from the original dataset at 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
under "features_info.txt".

The columns are:

    avg.tBodyAcc.mean.X
    avg.tBodyAcc.mean.Y
    avg.tBodyAcc.mean.Z
    avg.tBodyAcc.std.X
    avg.tBodyAcc.std.Y
    avg.tBodyAcc.std.Z
    avg.tGravityAcc.mean.X
    avg.tGravityAcc.mean.Y
    avg.tGravityAcc.mean.Z
    avg.tGravityAcc.std.X
    avg.tGravityAcc.std.Y
    avg.tGravityAcc.std.Z
    avg.tBodyAccJerk.mean.X
    avg.tBodyAccJerk.mean.Y
    avg.tBodyAccJerk.mean.Z
    avg.tBodyAccJerk.std.X
    avg.tBodyAccJerk.std.Y
    avg.tBodyAccJerk.std.Z
    avg.tBodyGyro.mean.X
    avg.tBodyGyro.mean.Y
    avg.tBodyGyro.mean.Z
    avg.tBodyGyro.std.X
    avg.tBodyGyro.std.Y
    avg.tBodyGyro.std.Z
    avg.tBodyGyroJerk.mean.X
    avg.tBodyGyroJerk.mean.Y
    avg.tBodyGyroJerk.mean.Z
    avg.tBodyGyroJerk.std.X
    avg.tBodyGyroJerk.std.Y
    avg.tBodyGyroJerk.std.Z
    avg.tBodyAccMag.mean
    avg.tBodyAccMag.std
    avg.tGravityAccMag.mean
    avg.tGravityAccMag.std
    avg.tBodyAccJerkMag.mean
    avg.tBodyAccJerkMag.std
    avg.tBodyGyroMag.mean
    avg.tBodyGyroMag.std
    avg.tBodyGyroJerkMag.mean
    avg.tBodyGyroJerkMag.std
    avg.fBodyAcc.mean.X
    avg.fBodyAcc.mean.Y
    avg.fBodyAcc.mean.Z
    avg.fBodyAcc.std.X
    avg.fBodyAcc.std.Y
    avg.fBodyAcc.std.Z
    avg.fBodyAccJerk.mean.X
    avg.fBodyAccJerk.mean.Y
    avg.fBodyAccJerk.mean.Z
    avg.fBodyAccJerk.std.X
    avg.fBodyAccJerk.std.Y
    avg.fBodyAccJerk.std.Z
    avg.fBodyGyro.mean.X
    avg.fBodyGyro.mean.Y
    avg.fBodyGyro.mean.Z
    avg.fBodyGyro.std.X
    avg.fBodyGyro.std.Y
    avg.fBodyGyro.std.Z
    avg.fBodyAccMag.mean
    avg.fBodyAccMag.std
    avg.fBodyBodyAccJerkMag.mean
    avg.fBodyBodyAccJerkMag.std
    avg.fBodyBodyGyroMag.mean
    avg.fBodyBodyGyroMag.std
    avg.fBodyBodyGyroJerkMag.mean
    avg.fBodyBodyGyroJerkMag.std
