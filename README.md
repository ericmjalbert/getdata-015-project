# Getting and Cleaning Data: Project

## Task to Accomplish

Using the data collected from the accelerometers from the Samsung Galaxy S smartphone, [found here]( https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip "Data Set Download"), an R script called `run_analysis.R` needs to be created that does the following:
  1. Merges the training and the test sets to create one data set.
  2. Extracts only the measurements on the mean and standard deviation for each measurement. 
  3. Uses descriptive activity names to name the activities in the data set
  4. Appropriately labels the data set with descriptive variable names. 
  5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
    
Identifying each file in the data set for what it represents is the key step to this project:
* `features.txt` is the list of variable names
* `subject_test.txt` is the labelling of the 9 subjects involved in the test subset
* `subject_train.txt` is the labelling of the 21 subjects involved in the train subset
* `x_test.txt` is the data set for the test subset
* `x_train.txt` is the data set for the train subset
* `y_test.txt` is the enumeration of activity done by each subject in test subset
* `y_train.txt` is the enumeration of activity done by each subject in train subset
* `activity_labels.txt` is the codebook for what activity is being done, to be used with `y_XXXX.txt`

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

### 2. Extract Mean and Standard Deviation <a id="step2"></a>

To reasonably accomplish this, [step 4.](#step4) must be completed so that the means and standard deviations can be identified.

With the columns labels, a simple `grepl` command, that looks for any features with `mean`, `std` will be extracted. There are a few extra pieces done here; `activity` and `subject` were manually added in, since those aren't part of the original dataset, and thus should not be excluded. Also there is a measurement for `meanFreq`, which is not wanted, so the `grepl` command is done with `mean\\(`, so that we exclude the `meanFreq` columns. This looks like the below code:
```
i <- grepl("mean\\(|std\\(|activity|subject", colnames(data)) 
```

The `grepl` command gives an index of the columns that are wanted, and thus we can use the data.frame index to get the desired subset. This is accomplished by the following command.
```
extract_data <- data[,i]
```


### 3. Name Activities With Descriptive Names
To add in the activity names, the numbering of the activity column is used to create a matching vector to the un-named activity column in the data.frame. Once this vector is created, it is set to replace the numbered activity column with the verbal one. This can be done in one line with the following:
```
extract_data[,"activity"] <- activity_label[extract_data[,"activity"],2]
```


### 4. Label Data Set with Descriptive Variable Names <a id="step4"></a>
This is done before [step 2](#step2).

Here all that is done is setting the column names of the data frame to be the vector of features acquired from the `feature.txt`. Also, here the `activity` and `subject` column names are append since they are not defaulted in the feature list.

This is done with the following one-line command:
```
colnames(data) <- c(as.character(features[,2]), "activity", "subject")
```


### 5. Create Tidy Data Set
Now, the data set is aggreated based on the activity and subject index using the mean as a aggregation function. This creates the tidy dataset required.
```
tidy_data <- aggregate( . ~ activity + subject, extract_data, mean)
write.table(tidy_data, file = "tidy_dataset.txt",row.name=FALSE)
```

Now this tidy_data set can be read with:
```
tidy_data <- read.table("tidy_dataset.txt", header = TRUE)
```


