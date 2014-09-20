## read all data into variables
subjectTest <- read.table("UCI HAR Dataset/test/subject_test.txt")
yTest <- read.table("UCI HAR Dataset/test/y_test.txt")
xTest <- read.table("UCI HAR Dataset/test/x_test.txt")
subjectTrain <- read.table("UCI HAR Dataset/train/subject_train.txt")
yTrain <- read.table("UCI HAR Dataset/train/y_train.txt")
xTrain <- read.table("UCI HAR Dataset/train/x_train.txt")

## merge train and test data sets
allActivityID <- rbind(yTest, yTrain)
allSubjectID <- rbind(subjectTest, subjectTrain)
allVariables <- rbind(xTest, xTrain)

features <- read.table("UCI HAR Dataset/features.txt")
colNames <- features[,2]            ## get all names from features.txt
names(allVariables) <- colNames     ## set names to columns according to features.txt

## extract only the measurements on the mean and standard deviation for each measurement
subsetData1<- allVariables[,grep("mean()", colnames(allVariables), fixed = TRUE)]
subsetData2<- allVariables[,grep("std()", colnames(allVariables), fixed = TRUE)]
## putting all data together
extractedData <- cbind(allActivityID, allSubjectID, subsetData1, subsetData2)
names(extractedData)[1] <- "ActivityID"
names(extractedData)[2] <- "SubjectID"

## set descriptive activity names to name the activities in the data set
activityLabels <- read.table("UCI HAR Dataset/activity_labels.txt", sep=" ")
names(activityLabels)[1] <- "ActivityID"
names(activityLabels)[2] <- "ActivityName"
## removing column 1 with Activity IDs since we don't need it anymore
DataWithDescriptiveActivityNames <- merge(extractedData, activityLabels, by="ActivityID")[-1]
 
## creating second, independent tidy data set with the average of each variable for each activity and each subject.
subjects <- factor(DataWithDescriptiveActivityNames[,1])
## data come out tidy since each variable in one column, each observation is in different row, all variables are one type
## removing column 1 with Subject IDs and column 68 with Activity Names since new same columns will be added by aggregate function 
dataMeanValues <- aggregate(.~subjects+DataWithDescriptiveActivityNames$ActivityName, 
                            DataWithDescriptiveActivityNames[,c(-1, -68)], FUN=mean) 
## setting lost names
names(dataMeanValues)[1] <- "SubjectID" 
names(dataMeanValues)[2] <- "ActivityName"

write.table(dataMeanValues, "dataMeanValues.txt", row.name=FALSE)