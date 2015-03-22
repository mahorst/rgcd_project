# rgcd_project
R Getting and Cleaning Data Course Project
### R Getting and Cleaning Data Project
===============================
Mike Horst
mahorst@lghealth.org
===============================

From the project requirements:
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.  

You should create one R script called run_analysis.R that does the following.
1.	Merges the training and the test sets to create one data set.
2.	Extracts only the measurements on the mean and standard deviation for each measurement. 
3.	Uses descriptive activity names to name the activities in the data set
4.	Appropriately labels the data set with descriptive variable names. 
5.	From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

The dataset provided for this project comes from:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

A description of the data source and citation:
==================================================================
Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

===============================
Codebook for:
tidydata.txt
Note: mean values for each signal were calculated for each subject and activity
===============================

subject: subject number for the 30 volunteers (1-30)

activity: activity completed by the subjects (walking, walking upstairs, walking downstairs, sitting, standing, laying)

tBodyAcc.mean.X: mean body acceleration time in X direction

tBodyAcc.mean.Y: mean body acceleration time in Y direction

tBodyAcc.mean.Z: mean body acceleration time in Z direction

tBodyAcc.std.X: standard deviation body acceleration time in X direction

tBodyAcc.std.Y: standard deviation body acceleration time in Y direction

tBodyAcc.std.Z: standard deviation body acceleration time in Z direction

tGravityAcc.mean.X: mean gravity acceleration time in X direction

tGravityAcc.mean.Y: mean gravity acceleration time in Y direction

tGravityAcc.mean.Z: mean gravity acceleration time in Z direction

tGravityAcc.std.X: standard deviation gravity acceleration time in X direction

tGravityAcc.std.Y: standard deviation gravity acceleration time in Y direction

tGravityAcc.std.Z: standard deviation gravity acceleration time in Z direction

tBodyAccJerk.mean.X: mean acceleration Jerk time in X direction

tBodyAccJerk.mean.Y: mean acceleration Jerk time in Y direction

tBodyAccJerk.mean.Z: mean acceleration Jerk time in Z direction

tBodyAccJerk.std.X: standard deviation acceleration Jerk time in X direction

tBodyAccJerk.std.Y: standard deviation acceleration Jerk time in Y direction

tBodyAccJerk.std.Z: standard deviation acceleration Jerk time in Z direction

tBodyGyro.mean.X: mean gyro time in X direction

tBodyGyro.mean.Y: mean gyro time in Y direction

tBodyGyro.mean.Z: mean gyro time in Z direction

tBodyGyro.std.X: standard deviation gyro time in X direction

tBodyGyro.std.Y: standard deviation gyro time in Y direction

tBodyGyro.std.Z: standard deviation gyro time in Z direction

tBodyGyroJerk.mean.X: mean gyro Jerk time in X direction

tBodyGyroJerk.mean.Y: mean gyro Jerk time in Y direction

tBodyGyroJerk.mean.Z: mean gyro Jerk time in Z direction

tBodyGyroJerk.std.X: standard deviation gyro Jerk time in X direction

tBodyGyroJerk.std.Y: standard deviation gyro Jerk time in Y direction

tBodyGyroJerk.std.Z: standard deviation gyro Jerk time in Z direction

tBodyAccMag.mean: mean magnitude of acceleration time

tBodyAccMag.std: standard deviation magnitude of acceleration time

tGravityAccMag.mean: mean magnitude of gravity time

tGravityAccMag.std: standard deviation magnitude of gravity time

tBodyAccJerkMag.mean: mean magnitude of acceleration Jerk time

tBodyAccJerkMag.std: standard deviation magnitude of acceleration Jerk time

tBodyGyroMag.mean: mean magnitude of gyro time

tBodyGyroMag.std: standard deviation magnitude of gyro time

tBodyGyroJerkMag.mean: mean magnitude of gyro Jerk time

tBodyGyroJerkMag.std: standard deviation magnitude of gyro Jerk time

fBodyAcc.mean.X: Fast Fourier Transform (FFT) mean body acceleration in X direction

fBodyAcc.mean.Y: Fast Fourier Transform (FFT) mean body acceleration in Y direction

fBodyAcc.mean.Z: Fast Fourier Transform (FFT) mean body acceleration in Z direction

fBodyAcc.std.X: Fast Fourier Transform (FFT) standard deviation body acceleration in X direction

fBodyAcc.std.Y: Fast Fourier Transform (FFT) standard deviation body acceleration in Y direction

fBodyAcc.std.Z: Fast Fourier Transform (FFT) standard deviation body acceleration in Z direction

fBodyAcc.meanFreq.X: Fast Fourier Transform (FFT) weighted mean body acceleration in X direction

fBodyAcc.meanFreq.Y: Fast Fourier Transform (FFT) weighted mean body acceleration in Y direction

fBodyAcc.meanFreq.Z: Fast Fourier Transform (FFT) weighted mean body acceleration in Z direction

fBodyAccJerk.mean.X: Fast Fourier Transform (FFT) mean acceleration Jerk in X direction

fBodyAccJerk.mean.Y: Fast Fourier Transform (FFT) mean acceleration Jerk in Y direction

fBodyAccJerk.mean.Z: Fast Fourier Transform (FFT) mean acceleration Jerk in Z direction

fBodyAccJerk.std.X: Fast Fourier Transform (FFT) standard deviation acceleration Jerk in X direction

fBodyAccJerk.std.Y: Fast Fourier Transform (FFT) standard deviation acceleration Jerk in Y direction

fBodyAccJerk.std.Z: Fast Fourier Transform (FFT) standard deviation acceleration Jerk in Z direction

fBodyAccJerk.meanFreq.X: Fast Fourier Transform (FFT) weighted mean acceleration Jerk in X direction

fBodyAccJerk.meanFreq.Y: Fast Fourier Transform (FFT) weighted mean acceleration Jerk in Y direction

fBodyAccJerk.meanFreq.Z: Fast Fourier Transform (FFT) weighted mean acceleration Jerk in Z direction

fBodyGyro.mean.X: Fast Fourier Transform (FFT) mean gyro in X direction

fBodyGyro.mean.Y: Fast Fourier Transform (FFT) mean gyro in Y direction

fBodyGyro.mean.Z: Fast Fourier Transform (FFT) mean gyro in Z direction

fBodyGyro.std.X: Fast Fourier Transform (FFT) standard deviation gyro in X direction

fBodyGyro.std.Y: Fast Fourier Transform (FFT) standard deviation gyro in Y direction

fBodyGyro.std.Z: Fast Fourier Transform (FFT) standard deviation gyro in Z direction

fBodyGyro.meanFreq.X: Fast Fourier Transform (FFT) weighted mean gyro in X direction

fBodyGyro.meanFreq.Y: Fast Fourier Transform (FFT) weighted mean gyro in Y direction

fBodyGyro.meanFreq.Z: Fast Fourier Transform (FFT) weighted mean gyro in Z direction

fBodyAccMag.mean: Fast Fourier Transform (FFT) mean body acceleration magnitude

fBodyAccMag.std: Fast Fourier Transform (FFT) standard deviation body acceleration magnitude

fBodyAccMag.meanFreq: Fast Fourier Transform (FFT) weighted mean body acceleration magnitude

fBodyBodyAccJerkMag.mean: Fast Fourier Transform (FFT) mean body acceleration Jerk magnitude

fBodyBodyAccJerkMag.std: Fast Fourier Transform (FFT) standard deviation body acceleration Jerk magnitude

fBodyBodyAccJerkMag.meanFreq: Fast Fourier Transform (FFT) weighted mean body acceleration Jerk magnitude

fBodyBodyGyroMag.mean: Fast Fourier Transform (FFT) mean body gyro magnitude

fBodyBodyGyroMag.std: Fast Fourier Transform (FFT) standard deviation body gyro magnitude

fBodyBodyGyroMag.meanFreq: Fast Fourier Transform (FFT) weighted mean body gyro magnitude

fBodyBodyGyroJerkMag.mean: Fast Fourier Transform (FFT) mean body gyro Jerk magnitude

fBodyBodyGyroJerkMag.std: Fast Fourier Transform (FFT) standard deviation body gyro Jerk magnitude

fBodyBodyGyroJerkMag.meanFreq: Fast Fourier Transform (FFT) weighted mean body gyro Jerk magnitude



===============================
Script description to create tidy data set
===============================

The data files are loaded in including the test and training data, activity types, subject codes and column headers (measures). The columns to keep are determined by the grepl command finding text strings of “mean” and “std” for the mean and standard deviations in the data file containing the column names. The column numbers are recorded in a vector to be used in selecting the columns along with a Boolean value to mark which are to be selected. The remaining column names are simplified by eliminating punctuation characters with the gsub command. Next, the actual columns in the x.test and x.train files containing the data to keep are selected using the vector for selecting the columns. Column names are assigned and then the test and train subjects and activity labels are added to the respective files. The test and train data sets are then merged using the rbind command and the activity labels are defined and assigned. Finally, the mean values for each column are calculated per each subject and activity. The file is then written as a tidy data file to a text file named tidydata.txt.
