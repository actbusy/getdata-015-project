# Solution to assignment
# assumes UCI_dataset.zip is unzipped into working directory
# see function 'avgActivityBySubject' and 'writeTidyDataset'

# reads and returns vector of feature names removing parenthesis
readFeatures <- function(file) {
    df = read.table(file)
    gsub('[\\(\\)]', '', df$V2)
}

# get activity reference codes
activity_labels <- read.table('UCI HAR Dataset/activity_labels.txt')

# get feature labels
features <- readFeatures('UCI HAR Dataset/features.txt')

# feature inclusion indices
keep_features <- setdiff(
    grep('mean|std', features),
    grep('meanFreq', features)
)

# reads file and returns dataframe with only mean and std measurements
# also renames columns with colnames
#   file     - path to measurement data set (e.g. 'test/X_test.txt')
readXs <- function(file) {
    df = read.table(file, col.names=features)
    #keep_cols = setdiff(
    #    grep('mean|std', colnames),
    #    grep('meanFreq', colnames)
    #)
    df[, keep_features]
}


# reads and consolidates test data according to subject, activities and measures
# inputs are
#   xfile           - file path to data set (e.g. 'test/X_test.txt')
#   yfile           - file path to labels (e.g. 'test/y_test.txt')
#   subjectfile     - file path to subjects (e.g. 'test/subject_test.txt')
readData <- function(
    xfile, yfile, subjectfile) {
    xs = readXs(xfile)
    ys = read.table(yfile)
    
    subjects = read.table(subjectfile)
    activities = factor(ys[[1]], labels=activity_labels[[2]])
    
    cbind(SUBJECT=subjects[[1]], ACTIVITY=activities, xs)
}


# solution to step 5
# generates and returns main analysis for assignment as dataframe:
#   average measures of each activity by each subject
avgActivityBySubject <- function() {
    # get and combine test and training data
    test_data = readData(
        'UCI HAR Dataset/test/X_test.txt', 
        'UCI HAR Dataset/test/y_test.txt',
        'UCI HAR Dataset/test/subject_test.txt'
    )
    train_data = readData(
        'UCI HAR Dataset/train/X_train.txt', 
        'UCI HAR Dataset/train/y_train.txt',
        'UCI HAR Dataset/train/subject_train.txt'
    )
    all_data = rbind(test_data, train_data)
    
    # calculate avg of each (activity-subject) measurements
    avg_sub_act = aggregate(
        all_data[3:68],
        by=list(
            subject=all_data$SUBJECT,
            activity=all_data$ACTIVITY
        ),
        mean
    )
    
    # prefix column names to denote averages
    colnames(avg_sub_act)[3:68] = sub('^', 'avg.', colnames(avg_sub_act)[3:68])
    
    avg_sub_act
}

# writes the tidy dataset to a text file
writeTidyDataset <- function(outputfile) {
    data = avgActivityBySubject()
    write.table(data, file=outputfile, row.name=FALSE)
    print(sprintf('output written to %s', outputfile))
}


