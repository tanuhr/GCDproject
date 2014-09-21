Raw data
==========
Information about raw data can be taken from features_info.txt file in the data set. 

Summary choices
==========
Both data sets (train and test) were merged into one data set. Then only the measurements on the mean and standard deviation for each measurement were extracted. Names of the variables were taken from the features.txt file. Data about Subject ids and Activity IDs was also added to the data set. Activity IDs are subtracted with descriptive activity names. Resulting data is the data frame with tidy data set with the average of each variable for each activity and each subject.

Code book
==========
Resulting data is the data frame sorted by SubjectID column first and then by ActivityName column.

“SubjectID” - factor with 30 levels (regarding to 30 people from the experiment)

“ActivityName” - factor with 6 levels of activity names (according to activity_labels.txt)

numeric columns:
"tBodyAcc-mean()-X"
"tBodyAcc-mean()-Y"
"tBodyAcc-mean()-Z"
"tGravityAcc-mean()-X"
"tGravityAcc-mean()-Y"
"tGravityAcc-mean()-Z"
"tBodyAccJerk-mean()-X"
"tBodyAccJerk-mean()-Y"
"tBodyAccJerk-mean()-Z"
"tBodyGyro-mean()-X"
"tBodyGyro-mean()-Y"
"tBodyGyro-mean()-Z"
"tBodyGyroJerk-mean()-X"
"tBodyGyroJerk-mean()-Y"
"tBodyGyroJerk-mean()-Z"
"tBodyAccMag-mean()"
"tGravityAccMag-mean()"
"tBodyAccJerkMag-mean()"
"tBodyGyroMag-mean()"
"tBodyGyroJerkMag-mean()"
"fBodyAcc-mean()-X"
"fBodyAcc-mean()-Y"
"fBodyAcc-mean()-Z"
"fBodyAccJerk-mean()-X"
"fBodyAccJerk-mean()-Y"
"fBodyAccJerk-mean()-Z"
"fBodyGyro-mean()-X"
"fBodyGyro-mean()-Y"
"fBodyGyro-mean()-Z"
"fBodyAccMag-mean()"
"fBodyBodyAccJerkMag-mean()"
"fBodyBodyGyroMag-mean()"
"fBodyBodyGyroJerkMag-mean()"
"tBodyAcc-std()-X"
"tBodyAcc-std()-Y"
"tBodyAcc-std()-Z"
"tGravityAcc-std()-X"
"tGravityAcc-std()-Y"
"tGravityAcc-std()-Z"
"tBodyAccJerk-std()-X"
"tBodyAccJerk-std()-Y"
"tBodyAccJerk-std()-Z"
"tBodyGyro-std()-X"
"tBodyGyro-std()-Y"
"tBodyGyro-std()-Z"
"tBodyGyroJerk-std()-X"
"tBodyGyroJerk-std()-Y"
"tBodyGyroJerk-std()-Z"
"tBodyAccMag-std()"
"tGravityAccMag-std()"
"tBodyAccJerkMag-std()"
"tBodyGyroMag-std()"
"tBodyGyroJerkMag-std()"
"fBodyAcc-std()-X"
"fBodyAcc-std()-Y"
"fBodyAcc-std()-Z"
"fBodyAccJerk-std()-X"
"fBodyAccJerk-std()-Y"
"fBodyAccJerk-std()-Z"
"fBodyGyro-std()-X"
"fBodyGyro-std()-Y"
"fBodyGyro-std()-Z"
"fBodyAccMag-std()"
"fBodyBodyAccJerkMag-std()"
"fBodyBodyGyroMag-std()"
"fBodyBodyGyroJerkMag-std()"
