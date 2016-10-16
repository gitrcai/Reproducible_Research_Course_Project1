##Download zip file to my subdirectory Rtraining.
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",destfile="./Rtraining/Dataset.zip")
##unzip the downloaded files
unzip(zipfile="./Rtraining/Dataset.zip",exdir="./Rtraining")
##find my files path
mypath <- file.path("./Rtraining", "UCI HAR Dataset")
myfiles <- list.files(mypath, recursive=TRUE)
##read test and training data sets
dataActiveTest <- read.table(file.path(mypath,"test","y_test.txt"),header=FALSE)
dataActiveTrain <- read.table(file.path(mypath,"train","y_train.txt"),header=FALSE)
dataSubjectTest <- read.table(file.path(mypath,"test","subject_test.txt"),header=FALSE)
dataSubjectTrain <- read.table(file.path(mypath,"train","subject_train.txt"),header=FALSE)
dataFeatureTest <- read.table(file.path(mypath,"test","X_test.txt"),header=FALSE)
dataFeatureTrain <- read.table(file.path(mypath,"train","X_train.txt"),header=FALSE)
##append test file to training file  
apendActive <- rbind(dataActiveTest,dataActiveTrain)
apendSubject <- rbind(dataSubjectTest,dataSubjectTrain)
apendFeature <- rbind(dataFeatureTest,dataFeatureTrain)
##assign variable name to activity and subject data 
names(apendActive) <- c("Activity")
names(apendSubject) <- c("Subject")
##read features.txt and put it as the names of feature data
FeatureName <- read.table(file.path(mypath,"features.txt"),header=FALSE)
FeatureName$V2 <- as.character(FeatureName$V2)
names(apendFeature) <- FeatureName$V2
##merge all columns together for subject, activity, and feature data
allmerge <- cbind(apendSubject,apendActive,apendFeature)
##create subset data from merged data only including columns for Subject, Activity,all mean, and all std   
selectSubsetNames <- names(allmerge)[grep("Subject|Activity|mean\\(\\)|std\\(\\)",names(allmerge))]
SubData <- subset(allmerge, select=selectSubsetNames)
##put activity labels into the data
activityLabel <- read.table(file.path(mypath,"activity_labels.txt"),header=FALSE)
SubData$Activity <- factor(as.character(SubData$Activity), levels=1:6, labels=activityLabel$V2)
##change file name to be descriptive
names(SubData) <- gsub("^t","time",names(SubData))
names(SubData) <- gsub("^f","frequency",names(SubData))
names(SubData) <- gsub("Acc", "Accelerometer",names(SubData))
names(SubData) <- gsub("Gyro", "Gyroscope", names(SubData))
names(SubData) <- gsub("Mag", "Magnitude", names(SubData))
names(SubData) <- gsub("BodyBody", "Body", names(SubData))
##create file tidy data including all column average for each Activity and Subject
final <- aggregate(. ~Subject+Activity,SubData,mean)
final <- final[order(final$Subject,final$Activity),]
write.table(final,file="./Rtraining/tidydata.txt",row.names=FALSE)