Code Book
=========

`x_train` data from `train/X_train.txt`
`y_train` data from `train/y_train.txt`
`subject_train` data from `train/subject_train.txt`

`x_test` data from `test/X_test.txt`
`y_test` data from `test/y_test.txt`
`subject_test` data from `test/subject_test.txt`

`x_data` merged data from `x_train` and `x_test`
`features` names from `features.txt` for `x_data`
`mean_and_std_nums` filtered data from `features`, only mean and standart deviation
`x_data_extracted` filtered data from `x_data`, only mean and standart deviation
`names(x_data_extracted)` set column names for `x_data_extracted`

`y_data` merged data from `y_train` and `y_test`
`names(y_data)` set column name `activity` for `y_data`
`labels` names from `activity_labels.txt`
`y_data[, 1] <- labels[y_data[, 1], 2]` change numbers to labels

`subject_data` merged data from `subject_train` and `subject_test`
`names(subject_data)` set column name `subject` for `subject_data`

`all` merged all data from `x_data_extracted`, `y_data` and `subject_data`
`result` tidy data
`write.table(result, "result.txt", row.name=FALSE)` write data to file

