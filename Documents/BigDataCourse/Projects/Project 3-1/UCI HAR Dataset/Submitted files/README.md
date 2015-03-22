Getting and Cleaning Data Course
=================================================================================== Class Project
=================================================================================== README File
===================================================================================

This is a class project for the "Getting & Cleaning Data" course. 
 
 In order to perform the work in this course, we have downloaded the data from the UCI website.

----------------------------------
 For each record it is provided:
----------------------------------
 - An identifier of the subject who carried out the experiment.
 - Its activity label. 
 - Its activity description. 
 - Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
 - Triaxial Angular velocity from the gyroscope. 
 - A 79-feature vector with time and frequency domain variables that represent the mean and standard deviation value for each measurement for that subject and that activity. 


-----------------------------------------------------------
 The class Project submission includes the following files:
 ----------------------------------------------------------
 - 'README.md' - This file
 - 'CodeBook.md': Describes the variables, the data, and the work has been done on the data
 - 'run_analysis.R': The scripts that we created to perform the analysis.
 - 'tidydata.txt': The result



------------------------------------
 What does the run_analysis.R works:
 ------------------------------------
 1.	 read the test data frames from the three files in the test folder
 2.	 read the features from the feature file in the main folder
 3.	 assign a header to the data in each data frame
 4.	 generate the complete test_data
 5.	 read the training data frames from the three files in the train folder
 6.	 read the features from the feature file in the main folder
 7.	 assign a header to the data in each data frame
 8.	 generate the complete test_data
 9.	 Merge the two data sets
 10.	 Extracts only the measurements on the mean and standard deviation for each measurement. First we remove the duplicates
 11.	Select the columns that have mean and standard Deviation only
 12.	Uses descriptive activity names to name the activities in the data set, we Read the activity names from the activity file
 13.	 create names to the descriptive activity variables.
 14.	 creates a second, independent tidy data set with the average of each variable for each activity and each subject.
 15.	 Write the tidy data into a text file
     
