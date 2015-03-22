Getting and Cleaning Data Course
======================================================================Class Project
====================================================================== 
CodeBook 


Definition:
This Code Book is to provide detailed information about the Tidy Data generated from the UCI Human Activity Recognition Using Smartphones Dataset

Original Data:
https://d396qusza40orc-cloudfront-net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset-zip 

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually
The features in the above database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ- These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz- Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise- Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0-3 Hz- 
Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

Our Data:
In this project, we created a Tidy dataset that is based on calculating the Mean value, mean(), and the Standard deviation, std() for the above signals.

Our Transformation
After we obtained the data from the posted website, we performed the following processes:
1.	For each data set (training & Testing) we mearged the subject ID file, the X-file and the Y File to obtain a complete set of data.
2.	Merged both the Testing and the training data sets to obtain one big data set. 
3.	Extracted only the mean and the standard deviation values for all variables.
4.	Grouped the data by the subject ID and and the activity 
5.	Measured the avarage for each variable based on subject ID and activity.

Each row in the Tidy data set represents the average & standard Deviation measures for each subject by each activity.


The Variables:
1.	subject-id = The volunteer ID
2.	activity-label = The activity lable
3.	activity-Name = The activity name (Walking, Laying,..)
4.	tBodyAcc-mean()-X = The avarage of the timed Body accelarated signal on axis X
5.	tBodyAcc-mean()-Y = The avarage of the timed Body accelarated signal on axis Y
6.	tBodyAcc-mean()-Z = The avarage of the timed Body accelarated signal on axis Z
7.	tGravityAcc-mean()-X ....
8.	tGravityAcc-mean()-Y,
9.	tGravityAcc-mean()-Z,
10.	tBodyAccJerk-mean()-X,
11.	tBodyAccJerk-mean()-Y,
12.	tBodyAccJerk-mean()-Z,
13.	tBodyGyro-mean()-X,
14.	tBodyGyro-mean()-Y,
15.	tBodyGyro-mean()-Z,
16.	tBodyGyroJerk-mean()-X,
17.	tBodyGyroJerk-mean()-Y,
18.	tBodyGyroJerk-mean()-Z,
19.	tBodyAccMag-mean(),
20.	tGravityAccMag-mean(),
21.	tBodyAccJerkMag-mean(),
22.	tBodyGyroMag-mean(),
23.	tBodyGyroJerkMag-mean(),
24.	fBodyAcc-mean()-X,
25.	fBodyAcc-mean()-Y,
26.	fBodyAcc-mean()-Z,
27.	fBodyAcc-meanFreq()-X,
28.	fBodyAcc-meanFreq()-Y,
29.	fBodyAcc-meanFreq()-Z,
30.	fBodyAccJerk-mean()-X,
31.	fBodyAccJerk-mean()-Y,
32.	fBodyAccJerk-mean()-Z,
33.	fBodyAccJerk-meanFreq()-X,
34.	fBodyAccJerk-meanFreq()-Y,
35.	fBodyAccJerk-meanFreq()-Z,
36.	fBodyGyro-mean()-X,
37.	fBodyGyro-mean()-Y,
38.	fBodyGyro-mean()-Z,
39.	fBodyGyro-meanFreq()-X,
40.	fBodyGyro-meanFreq()-Y,
41.	fBodyGyro-meanFreq()-Z,
42.	fBodyAccMag-mean(),
43.	fBodyAccMag-meanFreq(),
44.	fBodyBodyAccJerkMag-mean(),
45.	fBodyBodyAccJerkMag-meanFreq(),
46.	fBodyBodyGyroMag-mean(),
47.	fBodyBodyGyroMag-meanFreq(),
48.	fBodyBodyGyroJerkMag-mean(),
49.	fBodyBodyGyroJerkMag-meanFreq(),
50.	tBodyAcc-std()-X,
51.	tBodyAcc-std()-Y,
52.	tBodyAcc-std()-Z,
53.	tGravityAcc-std()-X,
54.	tGravityAcc-std()-Y,
55.	tGravityAcc-std()-Z,
56.	tBodyAccJerk-std()-X,
57.	tBodyAccJerk-std()-Y,
58.	tBodyAccJerk-std()-Z,
59.	tBodyGyro-std()-X,
60.	tBodyGyro-std()-Y,
61.	tBodyGyro-std()-Z,
62.	tBodyGyroJerk-std()-X,
63.	tBodyGyroJerk-std()-Y,
64.	tBodyGyroJerk-std()-Z,
65.	tBodyAccMag-std(),
66.	tGravityAccMag-std(),
67.	tBodyAccJerkMag-std(),
68.	tBodyGyroMag-std(),
69.	tBodyGyroJerkMag-std(),
70.	fBodyAcc-std()-X,
71.	fBodyAcc-std()-Y,
72.	fBodyAcc-std()-Z,
73.	fBodyAccJerk-std()-X,
74.	fBodyAccJerk-std()-Y,
75.	fBodyAccJerk-std()-Z,
76.	fBodyGyro-std()-X,
77.	fBodyGyro-std()-Y,
78.	fBodyGyro-std()-Z,
79.	fBodyAccMag-std(),
80.	fBodyBodyAccJerkMag-std(),
81.	fBodyBodyGyroMag-std(),
82.	fBodyBodyGyroJerkMag-std()
