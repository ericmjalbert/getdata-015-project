# Read features
features <- read.table("./UCI HAR Dataset/features.txt", header = FALSE)

# Read train data
x_train <- read.table("./UCI HAR Dataset/train/X_train.txt", header = FALSE)
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt", header = FALSE)
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt", header = FALSE)

# Read test data
x_test <- read.table("./UCI HAR Dataset/test/X_test.txt", header = FALSE)
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt", header = FALSE)
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt", header = FALSE)

# Read activity labels, for use in step 3.
activity_label <- read.table("./UCI HAR Dataset/activity_labels.txt", header = FALSE)

# 1. Merge Training and Test Data Sets
data <- rbind(x_train, x_test)
activity <- rbind(y_train, y_test)
subject <- rbind(subject_train, subject_test)
data <- cbind(data, activity, subject)

# 4. Label data set with descriptive variables (do this before 2.)
colnames(data) <- c(as.character(features[,2]), "activity", "subject")

# 2. Extract mean and std dev. for each measument
i <- grepl("mean\\(|std\\(|activity|subject", colnames(data)) 
    # have `mean(` to ignore `meanFreq` entries and manually include
    # activity and subject since we still want them included
extract_data <- data[,i]

# 3. Make descriptive names for activities
  # This uses the numbering of the activity column to create a vector of 
  # descriptive vectors based on activity_label. This is then set to be 
  # the new value for the activity column in the extracted data.
extract_data[,"activity"] <- activity_label[extract_data[,"activity"],2]

# 5. Create tidy data set with avg. of each var, for each activity and subject
tidy_data <- aggregate( . ~ activity + subject, extract_data, mean)
write.table(tidy_data, file = "tidy_dataset.txt",row.name=FALSE)


