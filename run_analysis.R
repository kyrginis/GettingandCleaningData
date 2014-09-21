        ## load libraries
        ##    dplyr for select(), used in Step 2
        ##    reshape2 for melt() and dcast(), used in Step 5
        library("dplyr")
        library("reshape2")
        
        ## If necessary, download and unzip the datafile
        dataURL  <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
        dataFile <- "getdata-projectfiles-UCI HAR Dataset.zip"
        dataDir  <- "UCI HAR Dataset"
        if (! file.exists(dataFile)){
                download.file(dataURL, destfile = dataFile, method = "curl")
        }
        if (! file.exists(dataDir)){
                unzip(dataFile)
        }
        
        
        ## Step 1
        
        ## read files with features and activities
        features   <- read.table("UCI HAR Dataset/features.txt")
        activities <- read.table("UCI HAR Dataset/activity_labels.txt")
        
        ## read the train data set
        train_data <- read.table("UCI HAR Dataset/train/X_train.txt")
        ## add variable names
        colnames(train_data) <- features[,2]
        ## read file with subjects
        train_subjects <- read.table("UCI HAR Dataset/train/subject_train.txt",col.names=c("subject"))
        ## read file with activities
        train_activities <- read.table("UCI HAR Dataset/train/y_train.txt",col.names=c("activity"))
        
        ## bind together the subjects column, the activities column and the train data set
        train_data <- cbind(train_subjects,train_activities,train_data)
        
        ## same procedure for the test data set
        test_data <- read.table("UCI HAR Dataset/test/X_test.txt")
        colnames(test_data) <- features[,2]
        test_subjects <- read.table("UCI HAR Dataset/test/subject_test.txt",col.names=c("subject"))
        test_activities <- read.table("UCI HAR Dataset/test/y_test.txt",col.names=c("activity"))
        
        test_data <- cbind(test_subjects,test_activities,test_data)
        
        ## finally merge the training data table with the test data table
        merged_data <- rbind(train_data,test_data)                                                                               
        
        
        ## Step 2
        
        ## keep the columns containing mean and std deviation measurements
        ## and the subject, activity columns
        merged_data <- select(merged_data, matches("subject|activity|mean\\(\\)|std\\(\\)"))
        
        
        ## Step 3
        
        ## use descriptive activity names, replace underscores with space and fix capitalization
        activities$V2 <- gsub("(^[A-Z])([A-Z]*)((_)([A-Z])([A-Z]*))*","\\1\\L\\2\\E \\5\\L\\6",
                              activities$V2,
                              perl=TRUE)
        
        ## replace in the merged data table the activity numbers with activity labels
        merged_data$activity <- factor(merged_data$activity,
                                       levels = c(1:6),
                                       labels = activities$V2)
        
        ## Step 4
        
        ## descriptive variable names   
        ## replace mean with Mean, std with StandardDeviation
        ## get rid of parentheses and dashes
        colnames(merged_data) <- gsub("mean\\(\\)","Mean",colnames(merged_data))
        colnames(merged_data) <- gsub("std\\(\\)","StandardDeviation",colnames(merged_data))
        colnames(merged_data) <- gsub("-","",colnames(merged_data))
        ## fix BodyBody error
        colnames(merged_data) <- gsub("BodyBody","Body",colnames(merged_data))
        ## replace Mag with Magnitude
        colnames(merged_data) <- gsub("Mag","Magnitude",colnames(merged_data))
        ## add 'axis' after X, Y, or Z
        colnames(merged_data) <- gsub("(X|Y|Z)$","\\1axis",colnames(merged_data))
        
        ## Step 5
        
        ## melt the merged data table by using subject and activity columns as id variables
        melted_data <- melt(merged_data,id.vars=c('subject','activity'))
        ## calculate average per subject and activity
        tidy_data   <- dcast(melted_data,subject+activity~variable,mean)
        
        ## save the tidy data set to file tidy.txt
        write.table(tidy_data, file="tidy.txt", row.names=FALSE)                                                                      
