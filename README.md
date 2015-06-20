# Getting and Cleaning Data: Project

## Task to Accomplish

Using the data collected from the accelerometers from the Samsung Galaxy S smartphone, [found here]( https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip "Data Set Download"), an R script called `run_analysis.R` needs to be created that does the following:
  1. Merges the training and the test sets to create one data set.
  2. Extracts only the measurements on the mean and standard deviation for each measurement. 
  3. Uses descriptive activity names to name the activities in the data set
  4. Appropriately labels the data set with descriptive variable names. 
  5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
    
Identifying each file in the data set for what it represents is the key step here:
* `features.txt` is the list of variable names
* `subject_test.txt` is the labelling of the 9 subjects involved in the test subset
* `subject_train.txt` is the labelling of the 21 subjects involved in the train subset
* `x_test.txt` is the data set for the test subset
* `x_train.txt` is the data set for the train subset
* `y_test.txt` is the enumeration of activity done by each subject in test subset
* `y_train.txt` is the enumeration of activity done by each subject in train subset

### 1. Merge Data Sets
Firstly, need to bind the test and training data sets row-wise,
```
data <- rbind(x_train, x_test)
activity <- rbind(y_train, y_test)
subject <- rbind(subject_train, subject_test)
```

Now the test and training data sets are one, so combine the activity and subject column-wise to the `data` data set.

```
 data <- cbind(data, activity, subject)
```

### 2. Extract Mean and Standard Deviation

To reasonably accomplish this, [step 4.](# step4) must be


### 3. Name Activities With Descriptive Names

### 4. Label Data Set with Descriptive Variable Names <a name="step4"></a>

### 5. Create Tidy Data Set


