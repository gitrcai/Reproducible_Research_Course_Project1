Codebook for processing final tidy data and variable layouts.

In the process for creating final tidy data set, the following steps are applied
1. use download.file() to download zip file to my subdirectory Rtraining.
2. use unzip() to unzip the downloaded files
3. use file.path to find my files path
4. use read.table() to read test and training data sets
5. use rbind() to append test file to training file  
6. use names() to assign variable name to data sets 
7. use cbind to merge all columns together for subject, activity, and feature data
8. use ggrep() to set up for subset columns such as Subject, Activity, all means, and all stds
9. use subset() to create subset data from merged data   
10.use read.table() to get activity labels
11.use factor() to put activity labels into the data
12.use names() and gsub() to change file name to be descriptive
13.use aggregate() to create tidy data including all column average for each Activity and Subject
14.use write.table() to create final txt file in my director

Please refer details to run_analysis.R.  
------------------------------------------------------------------------------------------
Below is final tidy data set codebook.
Subject
	volunteer id
Activity
	six level activities
	1=WALKING

	2=WALKING_UPSTAIRS

	3=WALKING_DOWNSTAIRS
	
4=SITTING

	5=STANDING
	
6=LAYING
timeBodyAccelerometer-mean()-X
	Mean value of time for body acceleration in X
timeBodyAccelerometer-mean()-Y
	Mean value of time for body acceleration in Y
timeBodyAccelerometer-mean()-Z
	Mean value of time for body acceleration in Z
timeBodyAccelerometer-std()-X
	std value of time for body acceleration in X
timeBodyAccelerometer-std()-Y
	std value of time for body acceleration in Y
timeBodyAccelerometer-std()-Z
	std value of time for body acceleration in Z
timeGravityAccelerometer-mean()-X
	mean value of time for gravity acceleration in X
timeGravityAccelerometer-mean()-Y
	mean value of time for gravity acceleration in Y
timeGravityAccelerometer-mean()-Z
	mean value of time for gravity acceleration in Z
timeGravityAccelerometer-std()-X
	std value of time for gravity acceleration in X
timeGravityAccelerometer-std()-Y
	std value of time for gravity acceleration in Y
timeGravityAccelerometer-std()-Z
	std value of time for gravity acceleration in Z
timeBodyAccelerometerJerk-mean()-X
	mean value of time for body Jerk acceleration in X
timeBodyAccelerometerJerk-mean()-Y
	mean value of time for body Jerk acceleration in Y
timeBodyAccelerometerJerk-mean()-Z
	mean value of time for body Jerk acceleration in Z
timeBodyAccelerometerJerk-std()-X
	std value of time for body Jerk acceleration in X
timeBodyAccelerometerJerk-std()-Y
	std value of time for body Jerk acceleration in Y
timeBodyAccelerometerJerk-std()-Z
	std value of time for body Jerk acceleration in Z
timeBodyGyroscope-mean()-X
	mean value of time for body gyroscope in X
timeBodyGyroscope-mean()-Y
	mean value of time for body gyroscope in Y
timeBodyGyroscope-mean()-Z
	mean value of time for body gyroscope in Z
timeBodyGyroscope-std()-X
	std value of time for body gyroscope in X
timeBodyGyroscope-std()-Y
	std value of time for body gyroscope in Y
timeBodyGyroscope-std()-Z
	std value of time for body gyroscope in Z
timeBodyGyroscopeJerk-mean()-X
	mean value of time for body gyroscope Jerk in X
timeBodyGyroscopeJerk-mean()-Y
	mean value of time for body gyroscope Jerk in Y
timeBodyGyroscopeJerk-mean()-Z
	mean value of time for body gyroscope Jerk in Z
timeBodyGyroscopeJerk-std()-X
	std value of time for body gyroscope Jerk in X
timeBodyGyroscopeJerk-std()-Y
	std value of time for body gyroscope Jerk in Y
timeBodyGyroscopeJerk-std()-Z
	std value of time for body gyroscope Jerk in Z
timeBodyAccelerometerMagnitude-mean()
	mean value of time for body magnitude acceleration
timeBodyAccelerometerMagnitude-std()
	std value of time for body magnitude acceleration
timeGravityAccelerometerMagnitude-mean()
	mean value of time for gravity magnitude acceleration
timeGravityAccelerometerMagnitude-std()
	std value of time for gravity magnitude acceleration
timeBodyAccelerometerJerkMagnitude-mean()
	mean value of time for body jerk magnitude acceleration
timeBodyAccelerometerJerkMagnitude-std()
	std value of time for body jerk magnitude acceleration
timeBodyGyroscopeMagnitude-mean()
	mean value of time for body gyroscope magnitude
timeBodyGyroscopeMagnitude-std()
	 std value of time for body gyroscope magnitude
timeBodyGyroscopeJerkMagnitude-mean()
	 mean value of time for body jerk gyroscope magnitude
timeBodyGyroscopeJerkMagnitude-std()
	std value of time for body jerk gyroscope magnitude
frequencyBodyAccelerometer-mean()-X
	Mean value of freqency for body acceleration in X
frequencyBodyAccelerometer-mean()-Y
	Mean value of freqency for body acceleration in Y
frequencyBodyAccelerometer-mean()-Z
	Mean value of freqency for body acceleration in Z
frequencyBodyAccelerometer-std()-X
	std value of freqency for body acceleration in X
frequencyBodyAccelerometer-std()-Y
	std value of freqency for body acceleration in Y
frequencyBodyAccelerometer-std()-Z
	std value of freqency for body acceleration in Z
frequencyBodyAccelerometerJerk-mean()-X
	mean value of freqency for body jerk acceleration in X
frequencyBodyAccelerometerJerk-mean()-Y
	mean value of freqency for body jerk acceleration in Y
frequencyBodyAccelerometerJerk-mean()-Z
	mean value of freqency for body jerk acceleration in Z
frequencyBodyAccelerometerJerk-std()-X
	std value of freqency for body jerk acceleration in X
frequencyBodyAccelerometerJerk-std()-Y
	std value of freqency for body jerk acceleration in Y
frequencyBodyAccelerometerJerk-std()-Z
	std value of freqency for body jerk acceleration in Z
frequencyBodyGyroscope-mean()-X
	mean value of freqency for body gyroscope in X
frequencyBodyGyroscope-mean()-Y
	mean value of freqency for body gyroscope in Y
frequencyBodyGyroscope-mean()-Z
	mean value of freqency for body gyroscope in Z
frequencyBodyGyroscope-std()-X
	std value of freqency for body gyroscope in X
frequencyBodyGyroscope-std()-Y
	std value of freqency for body gyroscope in Y
frequencyBodyGyroscope-std()-Z
	std value of freqency for body gyroscope in Z
frequencyBodyAccelerometerMagnitude-mean()
	mean value of freqency for body magnitude accleration 
frequencyBodyAccelerometerMagnitude-std()
	 std value of freqency for body magnitude accleration
frequencyBodyAccelerometerJerkMagnitude-mean()
	 mean value of freqency for body jerk magnitude accleration
frequencyBodyAccelerometerJerkMagnitude-std()
	 std value of freqency for body jerk magnitude accleration
frequencyBodyGyroscopeMagnitude-mean()
	 mean value of freqency for body gyroscope magnitude
frequencyBodyGyroscopeMagnitude-std()
	 std value of freqency for body gyroscope magnitude
frequencyBodyGyroscopeJerkMagnitude-mean()
	 mean value of freqency for body gyroscope jerk magnitude
frequencyBodyGyroscopeJerkMagnitude-std()
	 std value of freqency for body gyroscope jerk magnitude
