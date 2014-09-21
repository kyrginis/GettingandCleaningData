Getting and Cleaning Data Course Project
==========================================

Summary
---------------

The `run_analysis.R` script performs all the steps required by the Course Project assignment, 
includind downloading and decompressing the original data for the project. It processes the
data and it creates the file `tidy.txt` with the required tidy data set.

Detailed description
-------------------------

The `run_analysis.R` script performs the following steps:

### Preliminary steps

* It loads the libraries `dplyr` (used for selecting measurements) and `reshape2` (used for the
average calculation).

* It checks whether the file `getdata-projectfiles-UCI HAR Dataset.zip` is present in the current directory. If not, it downloads the original compressed data file from the URL given in the instructions
and saves it in the current directory as `getdata-projectfiles-UCI HAR Dataset.zip`.

* It checks whether the directory `UCI HAR Dataset` already exists. If not, it unzips the compressed data file downloaded in the previous step, using the R function `unzip()`.

### Data Processing

#### Step 1

* The script reads the files with the features (`UCI HAR Dataset/features.txt`) and the activity labels (`UCI HAR Dataset/activity_labels.txt`) and creates two data frames named `features` and `activities`.
* It reads the training set data, subjects and activities from the files `UCI HAR Dataset/train/X_train.txt`, `UCI HAR Dataset/train/subject_train.txt` and `UCI HAR Dataset/train/y_train.txt` and creates
the data frames `train_data` (561 columns), `train_subjects` (1 column) and `train_activities` (1 column).
* It names the columns of `train_data` using the second column of the `features` data frame, which contains the variable names.
* It binds the one-column data frames `train_subjects` and `train_activities` with the 561-column `train_data` producing a single data frame with 563 columns, with the first column containing the subjects, the second the activities and the rest of the columns the measurements.
* It repeats the previous steps for the test set, producing the data frame `test_data` with 563 columns.
* Finally it merges the two sets, by appending the rows of `test_data` to `train_data` and naming the result `merged_data`.

#### Step 2

* In this step the script applies the function select() on `merged_data` and extracts the subset of columns matching `subject`, `activity`, `mean()` or `std()`. We chose not to keep the mean frequency measurements, because in our opinion the assignment does not require the mean frequency measurements, and additionally [the Community Teaching Assistants in the Course Discussion Forums have stated that this selection is accepted][id].

#### Step 3

* The script replaces the activity numbers `1..6` with appropriate labels. It starts with the original labels and replaces the underscores with spaces and corrects capitalization.

#### Step 4

* In this step the script improves the labels given for the test measurements. It removes parentheses and dashes, it replaces `mean` with `Mean`, `std` with `StdDev`, `Mag` with `Magnitude` and the erroneous `BodyBody` with `Body`. It also adds dots before and after `Mean` and `StdDev`.

#### Step 5

*  In the fifth step the script first melts the `merged_data` data frame into the narrow `molten_data` data frame, which consists of the columns `subject`, `activity`, `variable` and `value`. This is done with the `melt()` function from the [`reshape2` package][id], using the `subject` and `activity` columns as identifier variables and the rest of the columns as measured variables. The script then calls `dcast()` to rearrange the molten data frame `melted_data` into the tidy data frame `tidy_data`. It puts the identifier variables in the rows, the measured variables in the columns and uses the aggregation function `mean()` to calculate the average of each measured variable for each activity and each subject.

#### Saving the produced tidy data set

* Finally the script saves the data frame `tidy_data` in the file `tidy.txt`.

[id]: https://class.coursera.org/getdata-007/forum/thread?thread_id=188
[id]: http://www.jstatsoft.org/v21/i12/paper