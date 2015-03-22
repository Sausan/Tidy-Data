run_analysis <- function(){
  
  library(dplyr)
  
  # 1- read the test data frames from the three files in the test folder
  
  test_subject <- read.table("test/subject_test.txt")
  X_test <- read.table("test/X_test.txt")
  Y_test <- read.table("test/Y_test.txt")
  
  # 2- read the features from the feature file in the main folder
  names_test <- read.table("features.txt")
  
  # 3- assign a header to the data in each data frame
  names(test_subject)<-c("subject_id")
  names(X_test) <- names_test[,2]
  names(Y_test) <- c("activity_label")
  
  # 4- generate the complete test_data
  test_data <- cbind(test_subject, Y_test, X_test)
  
  
  
  # 5- read the training data frames from the three files in the train folder
  
  train_subject <- read.table("train/subject_train.txt")
  X_train <- read.table("train/X_train.txt")
  Y_train <- read.table("train/Y_train.txt")
  
  # 6- read the features from the feature file in the main folder
  names_train <- read.table("features.txt")
  
  # 7- assign a header to the data in each data frame
  names(train_subject)<-c("subject_id")
  names(X_train) <- names_test[,2]
  names(Y_train) <- c("activity_label")
  
  # 8- generate the complete test_data
  train_data <- cbind(train_subject, Y_train, X_train)
  
  # 9- Merge the two data sets
  
  All_data <- rbind(test_data,train_data)
  
  # 10 - Extracts only the measurements on the mean and standard deviation for each measurement
  
  ## First remove the duplicates
  Col_names <- names(All_data)
  new_names<-make.names(Col_names, unique = TRUE, allow_ = FALSE)
  names(All_data)<-new_names
 
 
  # 11-Select the columns that have mean and standard Deviation only
  mean_data <- select(All_data, matches("subject.id"), matches("activity.label"),grep(".mean..",names(All_data)),grep(".std..",names(All_data)))
  #print (dim(mean_data))
  #print (head(mean_data))

  # 12 - Uses descriptive activity names to name the activities in the data set
  ## Read the activitiy names from the activity file
  activity_name <- read.table("activity_labels.txt")
  
  # 13- creat names to the descriptive activity variables
  names(activity_name)<-c("activity.label", "activity.Name")
  
  ## The dataset with descriptive activity names
  descriptive_data <- merge(mean_data,activity_name, all=TRUE)
 
  
  #14- creates a second, independent tidy data set with the average of each variable for each activity and each subject.

  tidy_data <- descriptive_data %>% group_by(subject.id, activity.label,activity.Name) %>% summarise_each(funs(mean))
  print(names(tidy_data))
  
  # Write the tidy data into a text file
  write.table(tidy_data, file = "tidy_data.txt",sep=",", qmethod = "double")
  print("Done!!")
  
 # return(head(All_data[1:3]))

}