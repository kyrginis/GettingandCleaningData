Code book
==========

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each subject was assigned a unique identifier from 1 to 30 and performed six activities (Walking, Walking Upstairs, Walking Downstairs, Sitting, Standing, Laying) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

From the original measurements, we extracted the ones on the mean and standard deviation for each measurement. Then we calculated the average per subject and per activity for each of the extracted measurements.

subject
-------

Unique identifier of the subject, ranging from 1 to 30

activity
--------

Activity label

1. Walking 

2. Walking Upstairs

3. Walking Downstairs

4. Sitting 

5. Standing 

6. Laying 

tBodyAcc.Mean.X
----------------
Body Linear Acceleration signal Mean in the X dimension

tBodyAcc.Mean.Y
----------------
Body Linear Acceleration signal Mean in the Y dimension

tBodyAcc.Mean.Z
----------------
Body Linear Acceleration signal Mean in the Z dimension

tBodyAcc.StdDev.X
------------------
Body Linear Acceleration signal Standard Deviation in the X dimension

tBodyAcc.StdDev.Y
------------------
Body Linear Acceleration signal Standard Deviation in the Y dimension

tBodyAcc.StdDev.Z
------------------
Body Linear Acceleration signal Standard Deviation in the Z dimension

tGravityAcc.Mean.X
-----------------------
Gravity Linear Acceleration signal Mean in the X dimension

tGravityAcc.Mean.Y
----------------------
Gravity Linear Acceleration signal Mean in the Y dimension

tGravityAcc.Mean.Z
------------------------
Gravity Linear Acceleration signal Mean in the Z dimension

tGravityAcc.StdDev.X
--------------------------
Gravity Linear Acceleration signal Standard Deviation in the X dimension

tGravityAcc.StdDev.Y
------------------------
Gravity Linear Acceleration signal Standard Deviation in the Y dimension

tGravityAcc.StdDev.Z
-------------------------
Gravity Linear Acceleration signal Standard Deviation in the Z dimension

tBodyAccJerk.Mean.X
-----------------------
Body Acceleration Jerk signal Mean in the X dimension

tBodyAccJerk.Mean.Y
-----------------------
Body Acceleration Jerk signal Mean in the Y dimension

tBodyAccJerk.Mean.Z
-----------------------
Body Acceleration Jerk signal Mean in the Z dimension

tBodyAccJerk.StdDev.X
-----------------------
Body Acceleration Jerk signal Standard Deviation in the X dimension

tBodyAccJerk.StdDev.Y
-----------------------
Body Acceleration Jerk signal Standard Deviation in the Y dimension

tBodyAccJerk.StdDev.Z
-----------------------
Body Acceleration Jerk signal Standard Deviation in the Z dimension

tBodyGyro.Mean.X
----------------
Body Linear Gyroscope signal Mean in the X dimension

tBodyGyro.Mean.Y
----------------
Body Linear Gyroscope signal Mean in the Y dimension

tBodyGyro.Mean.Z
----------------
Body Linear Gyroscope signal Mean in the Z dimension

tBodyGyro.StdDev.X
------------------
Body Linear Gyroscope signal Standard Deviation in the X dimension

tBodyGyro.StdDev.Y
------------------
Body Linear Gyroscope signal Standard Deviation in the Y dimension

tBodyGyro.StdDev.Z
------------------
Body Linear Gyroscope signal Standard Deviation in the Z dimension

tBodyGyroJerk.Mean.X
-----------------------
Body Acceleration Jerk signal Mean in the X dimension

tBodyGyroJerk.Mean.Y
-----------------------
Body Gyroscope Jerk signal Mean in the Y dimension

tBodyGyroJerk.Mean.Z
-----------------------
Body Gyroscope Jerk signal Mean in the Z dimension

tBodyGyroJerk.StdDev.X
-----------------------
Body Gyroscope Jerk signal Standard Deviation in the X dimension

tBodyGyroJerk.StdDev.Y
-----------------------
Body Gyroscope Jerk signal Standard Deviation in the Y dimension

tBodyGyroJerk.StdDev.Z
-----------------------
Body Gyroscope Jerk signal Standard Deviation in the Z dimension

tBodyAccMagnitude.Mean
-----------------------
Body Acceleration Magnitude using the Euclidean norm Mean

tBodyAccMagnitude.StdDev
---------------------------
Body Acceleration Magnitude using the Euclidean norm Standard Deviation

tGravityAccMagnitude.Mean
---------------------------
Gravity Acceleration Magnitude using the Euclidean norm Mean

tGravityAccMagnitude.StdDev
-----------------------------
Gravity Acceleration Magnitude using the Euclidean norm Standard Deviation

tBodyAccJerkMagnitude.Mean
------------------------------
Body Acceleration Jerk signal Magnitude using the Euclidean norm Mean

tBodyAccJerkMagnitude.StdDev
-------------------------------
Body Acceleration Jerk signal Magnitude using the Euclidean norm Standard Deviation

tBodyGyroMagnitude.Mean
-----------------------
Body Gyroscope Magnitude using the Euclidean norm Mean

tBodyGyroMagnitude.StdDev
---------------------------
Body Gyroscope Magnitude using the Euclidean norm Standard Deviation

tBodyGyroJerkMagnitude.Mean
------------------------------
Body Gyroscope Jerk signal Magnitude using the Euclidean norm Mean

tBodyGyroJerkMagnitude.StdDev
-------------------------------
Body Gyroscope Jerk signal Magnitude using the Euclidean norm Standard Deviation

fBodyAcc.Mean.X
----------------
Body Linear Acceleration frequency domain signal Mean in the X dimension

fBodyAcc.Mean.Y
----------------
Body Linear Acceleration frequency domain signal Mean in the Y dimension

fBodyAcc.Mean.Z
----------------
Body Linear Acceleration frequency domain signal Mean in the Z dimension

fBodyAcc.StdDev.X
------------------
Body Linear Acceleration frequency domain signal Standard Deviation in the X dimension

fBodyAcc.StdDev.Y
------------------
Body Linear Acceleration frequency domain signal Standard Deviation in the Y dimension

fBodyAcc.StdDev.Z
------------------
Body Linear Acceleration frequency domain signal Standard Deviation in the Z dimension

fBodyAccJerk.Mean.X
-----------------------
Body Acceleration Jerk frequency domain signal Mean in the X dimension

fBodyAccJerk.Mean.Y
-----------------------
Body Acceleration Jerk frequency domain signal Mean in the Y dimension

fBodyAccJerk.Mean.Z
-----------------------
Body Acceleration Jerk frequency domain signal Mean in the Z dimension

fBodyAccJerk.StdDev.X
-----------------------
Body Acceleration Jerk frequency domain signal Standard Deviation in the X dimension

fBodyAccJerk.StdDev.Y
-----------------------
Body Acceleration Jerk frequency domain signal Standard Deviation in the Y dimension

fBodyAccJerk.StdDev.Z
-----------------------
Body Acceleration Jerk frequency domain signal Standard Deviation in the Z dimension

fBodyGyro.Mean.X
----------------
Body Linear Gyroscope frequency domain signal Mean in the X dimension

fBodyGyro.Mean.Y
----------------
Body Linear Gyroscope frequency domain signal Mean in the Y dimension

fBodyGyro.Mean.Z
----------------
Body Linear Gyroscope frequency domain signal Mean in the Z dimension

fBodyGyro.StdDev.X
------------------
Body Linear Gyroscope frequency domain signal Standard Deviation in the X dimension

fBodyGyro.StdDev.Y
------------------
Body Linear Gyroscope frequency domain signal Standard Deviation in the Y dimension

fBodyGyro.StdDev.Z
------------------
Body Linear Gyroscope frequency domain signal Standard Deviation in the Z dimension

fBodyAccMagnitude.Mean
-----------------------
Body Acceleration frequency domain signal Magnitude using the Euclidean norm Mean

fBodyAccMagnitude.StdDev
---------------------------
Body Acceleration frequency domain signal Magnitude using the Euclidean norm Standard Deviation

fBodyAccJerkMagnitude.Mean
------------------------------
Body Acceleration Jerk frequency domain signal Magnitude using the Euclidean norm Mean

fBodyAccJerkMagnitude.StdDev
-------------------------------
Body Acceleration Jerk frequency domain signal Magnitude using the Euclidean norm Standard Deviation

fBodyGyroMagnitude.Mean
-----------------------
Body Gyroscope frequency domain signal Magnitude using the Euclidean norm Mean

fBodyGyroMagnitude.StdDev
---------------------------
Body Gyroscope frequency domain signal Magnitude using the Euclidean norm Standard Deviation

fBodyGyroJerkMagnitude.Mean
------------------------------
Body Gyroscope Jerk frequency domain signal Magnitude using the Euclidean norm Mean

fBodyGyroJerkMagnitude.StdDev
-------------------------------
Body Gyroscope Jerk frequency domain signal Magnitude using the Euclidean norm Standard Deviation
