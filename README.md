# Getting and Cleaning Data: Project

## Tidy Accelerometer Dataset

### Task to Accomplish

```
Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

 You should create one R script called run_analysis.R that does the following. 
    Merges the training and the test sets to create one data set.
    Extracts only the measurements on the mean and standard deviation for each measurement. 
    Uses descriptive activity names to name the activities in the data set
    Appropriately labels the data set with descriptive variable names. 
    From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
```

### Merge data sets

Identifying each file in the dataset for what it represents is the key step here:
* `features.txt` is the list of variable names
* `subject_test.txt` is the labelling of the 9 subjects involved in the test subset
* `subject_train.txt` is the labelling of the 21 subjects involved in the train subset
* 

