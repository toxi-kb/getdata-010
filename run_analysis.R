x_train <- read.table("train/X_train.txt")
y_train <- read.table("train/y_train.txt")
subject_train <- read.table("train/subject_train.txt")

x_test <- read.table("test/X_test.txt")
y_test <- read.table("test/y_test.txt")
subject_test <- read.table("test/subject_test.txt")

x_data <- rbind(x_train, x_test)
features <- read.table("features.txt")
mean_and_std_nums <- grep("(mean\\(|std)", features[, 2])
x_data_extracted <- x_data[, mean_and_std_nums]
names(x_data_extracted) <- features[mean_and_std_nums, 2]

y_data <- rbind(y_train, y_test)
names(y_data) <- "activity"
labels <- read.table("activity_labels.txt")
y_data[, 1] <- labels[y_data[, 1], 2]

subject_data <- rbind(subject_train, subject_test)
names(subject_data) <- "subject"

all = cbind(x_data_extracted, y_data, subject_data)
result <- aggregate(all, by=list(activity = all$activity, subject = all$subject), mean)[, 1:66]
write.table(result, "result.txt", row.name=FALSE)
