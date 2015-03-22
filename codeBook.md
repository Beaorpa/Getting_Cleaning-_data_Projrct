# Getting_and_Cleaning_data_Project - codeBook
Project for Coursera Getting and Cleaning Data Course

## Introduction

Following is the information about variables in the data sets. Also there are a description of how the data has been collected and Data files have been extracted and tidied. 
 
## Study Design

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

## Estimated Variables

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

## Data sets used in the project

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 



## Project Summary

  R script call run_analysis.R does the following. 

 1.- Download and unzip the source data file:
 
 	https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip" 

 2.- Read the X, Y and Subject test and training files and Feature and Activity_labels files

 3.- Naming all the columns in the files

 4.- Merges the training and the test sets to create one data set.

 5.- Extracts only the measurements on the mean and standard deviation for each measurement. 

 6.- Uses descriptive activity names to name the activities in the data set

 7.- Appropriately labels the data set with descriptive variable names. 
 
 8.- From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## DATA DICTIONARY 

Act_ID    1 

	Activity Identifier 

	1 - 6
Activity   

	Activity Description 

	1- WALKING 
	2- WALKING_UPSTAIRS
	3- WALKING_DOWNSTAIRS
	4- SITTING
	5- STANDING
	6- LAYING

Subjects   1

	Id of subjects who was selected
	
	Range from 1 - 30
	Age Bracket of 19-48

--- All the following variables takes values between [-1, 1] ---- 	

tBodyAcc-mean()-X  --- standard gravity units 'g'

	Mean of Time Body Linear Acceleration - X Direction


tBodyAcc-mean()-Y --- standard gravity units 'g'

	Mean of Time Body Linear Acceleration - Y Direction

tBodyAcc-mean()-Z --- standard gravity units 'g'

	Mean of Time Body Linear Acceleration - Y Direction


tBodyAcc-std()-X --- standard gravity units 'g'

	Standar Desviation of Time Body Linear Acceleration - X Direction

tBodyAcc-std()-Y --- standard gravity units 'g'

	Standar Desviation of Time Body Linear Acceleration - Y Direction

tBodyAcc-std()-Z --- standard gravity units 'g'

	Standar Desviation of Time Body Linear Acceleration - Z Direction

tBodyAcc-mad()-X --- standard gravity units 'g'

	Median absolute deviation of Time Body Linear Acceleration - X Direction

tBodyAcc-mad()-Y --- standard gravity units 'g'

	Median absolute deviation of Time Body Linear Acceleration - Y Direction

tBodyAcc-mad()-Z --- standard gravity units 'g'

	Median absolute deviation of Time Body Linear Acceleration - Z Direction

tBodyAcc-max()-X --- standard gravity units 'g'

	Largest value in array of Time Body Linear Acceleration - X Direction

tBodyAcc-max()-Y

	Largest value in array of Time Body Linear Acceleration - Y Direction

tBodyAcc-max()-Z --- standard gravity units 'g'

	Largest value in array of Time Body Linear Acceleration - Z Direction

tBodyAcc-min()-X --- standard gravity units 'g'

	Smallest value in array of Time Body Linear Acceleration - X Direction

tBodyAcc-min()-Y --- standard gravity units 'g'

	Smallest value in array of Time Body Linear Acceleration - Y Direction

tBodyAcc-min()-Z --- standard gravity units 'g'

	Smallest value in array of Time Body Linear Acceleration - Z Direction

tBodyAcc-sma() --- standard gravity units 'g'

	Signal magnitude area of Time Body Linear Acceleration

tBodyAcc-energy()-X --- standard gravity units 'g'

	Energy measure. Sum of the squares divided by the number of values. 
	Time Body Linear Acceleration - X Direction

tBodyAcc-energy()-Y --- standard gravity units 'g'

	Energy measure. Sum of the squares divided by the number of values. 
	Time Body Linear Acceleration - Y Direction

tBodyAcc-energy()-Z --- standard gravity units 'g'

	Energy measure. Sum of the squares divided by the number of values. 
	Time Body Linear Acceleration - Z Direction

tBodyAcc-iqr()-X --- standard gravity units 'g'

	Interquartile range of Time Body Linear Acceleration - X Direction

tBodyAcc-iqr()-Y --- standard gravity units 'g'

	Interquartile range of Time Body Linear Acceleration - Y Direction

tBodyAcc-iqr()-Z --- standard gravity units 'g'

	Interquartile range of Time Body Linear Acceleration - Z Direction

tBodyAcc-entropy()-X --- standard gravity units 'g'

	Signal entropy of Time Body Linear Acceleration - X Direction

tBodyAcc-entropy()-Y --- standard gravity units 'g'

	Signal entropy of Time Body Linear Acceleration - Y Direction

tBodyAcc-entropy()-Z --- standard gravity units 'g'

	Signal entropy of Time Body Linear Acceleration - Z Direction


tBodyAcc-arCoeff()-X,1 --- standard gravity units 'g'
tBodyAcc-arCoeff()-X,2 --- standard gravity units 'g'
tBodyAcc-arCoeff()-X,3 --- standard gravity units 'g'
tBodyAcc-arCoeff()-X,4 --- standard gravity units 'g'

	Autorregresion coefficients with Burg order equal to 4 of time Body Acceleration - X Direction

tBodyAcc-arCoeff()-Y,1 --- standard gravity units 'g'
tBodyAcc-arCoeff()-Y,2 --- standard gravity units 'g'
tBodyAcc-arCoeff()-Y,3 --- standard gravity units 'g'
tBodyAcc-arCoeff()-Y,4 --- standard gravity units 'g'

	Autorregresion coefficients with Burg order equal to 4 of time Body Acceleration - Y Direction

tBodyAcc-arCoeff()-Z,1 --- standard gravity units 'g'
tBodyAcc-arCoeff()-Z,2 --- standard gravity units 'g'
tBodyAcc-arCoeff()-Z,3 --- standard gravity units 'g'
tBodyAcc-arCoeff()-Z,4 --- standard gravity units 'g'

	Autorregresion coefficients with Burg order equal to 4 of time Body Acceleration - Z Direction

tBodyAcc-correlation()-X,Y --- standard gravity units 'g'

	Correlation coefficient between two signals of time Body Acceleration - X, Y Direction

tBodyAcc-correlation()-X,Z --- standard gravity units 'g'

	Correlation coefficient between two signals of time Body Acceleration - X, Z Direction

tBodyAcc-correlation()-Y,Z --- standard gravity units 'g'

	Correlation coefficient between two signals of time Body Acceleration - Y, Z Direction


tGravityAcc-mean()-X --- standard gravity units 'g'

	Mean of Time Gravity Linear Acceleration - X Direction


tGravityAcc-mean()-Y --- standard gravity units 'g'

	Mean of Time Gravity Linear Acceleration - Y Direction

tGravityAcc-mean()-Z --- standard gravity units 'g'

	Mean of Time Gravity Linear Acceleration - Y Direction


tGravityAcc-std()-X --- standard gravity units 'g'

	Standar Desviation of Time Gravity Linear Acceleration - X Direction

tGravityAcc-std()-Y --- standard gravity units 'g'

	Standar Desviation of Time Gravity Linear Acceleration - Y Direction

tGravityAcc-std()-Z --- standard gravity units 'g'

	Standar Desviation of Time Gravity Linear Acceleration - Z Direction

tGravityAcc-mad()-X --- standard gravity units 'g'

	Median absolute deviation of Time Gravity Linear Acceleration - X Direction

tGravityAcc-mad()-Y --- standard gravity units 'g'

	Median absolute deviation of Time Gravity Linear Acceleration - Y Direction

tGravityAcc-mad()-Z --- standard gravity units 'g'

	Median absolute deviation of Time Gravity Linear Acceleration - Z Direction

tGravityAcc-max()-X --- standard gravity units 'g'

	Largest value in array of Time Gravity Linear Acceleration - X Direction

tGravityAcc-max()-Y --- standard gravity units 'g'

	Largest value in array of Time Gravity Linear Acceleration - Y Direction

tGravityAcc-max()-Z --- standard gravity units 'g'

	Largest value in array of Time Gravity Linear Acceleration - Z Direction

tGravityAcc-min()-X --- standard gravity units 'g'

	Smallest value in array of Time Gravity Linear Acceleration - X Direction

tGravityAcc-min()-Y --- standard gravity units 'g'

	Smallest value in array of Time Gravity Linear Acceleration - Y Direction

tGravityAcc-min()-Z --- standard gravity units 'g'

	Smallest value in array of Time Gravity Linear Acceleration - Z Direction

tGravityAcc-sma() --- standard gravity units 'g'

	Signal magnitude area of Time Gravity Linear Acceleration

tGravityAcc-energy()-X --- standard gravity units 'g'

	Energy measure. Sum of the squares divided by the number of values. 
	Time Gravity Linear Acceleration - X Direction

tGravityAcc-energy()-Y --- standard gravity units 'g'

	Energy measure. Sum of the squares divided by the number of values. 
	Time Gravity Linear Acceleration - Y Direction

tGravityAcc-energy()-Z --- standard gravity units 'g'

	Energy measure. Sum of the squares divided by the number of values. 
	Time Gravity Linear Acceleration - Z Direction

tGravityAcc-iqr()-X --- standard gravity units 'g'

	Interquartile range of Time Gravity Linear Acceleration - X Direction

tGravityAcc-iqr()-Y --- standard gravity units 'g'

	Interquartile range of Time Gravity Linear Acceleration - Y Direction

tGravityAcc-iqr()-Z --- standard gravity units 'g'

	Interquartile range of Time Gravity Linear Acceleration - Z Direction

tGravityAcc-entropy()-X --- standard gravity units 'g'

	Signal entropy of Time Gravity Linear Acceleration - X Direction

tGravityAcc-entropy()-Y --- standard gravity units 'g'

	Signal entropy of Time Gravity Linear Acceleration - Y Direction

tGravityAcc-entropy()-Z --- standard gravity units 'g'

	Signal entropy of Time Gravity Linear Acceleration - Z Direction


tGravityAcc-arCoeff()-X,1 --- standard gravity units 'g'
tGravityAcc-arCoeff()-X,2 --- standard gravity units 'g'
tGravityAcc-arCoeff()-X,3 --- standard gravity units 'g'
tGravityAcc-arCoeff()-X,4 --- standard gravity units 'g'

	Autorregresion coefficients with Burg order equal to 4 of time Gravity Acceleration - X Direction

tGravityAcc-arCoeff()-Y,1 --- standard gravity units 'g'
tGravityAcc-arCoeff()-Y,2 --- standard gravity units 'g'
tGravityAcc-arCoeff()-Y,3 --- standard gravity units 'g'
tGravityAcc-arCoeff()-Y,4 --- standard gravity units 'g'

	Autorregresion coefficients with Burg order equal to 4 of time Gravity Acceleration - Y Direction

tGravityAcc-arCoeff()-Z,1 --- standard gravity units 'g'
tGravityAcc-arCoeff()-Z,2 --- standard gravity units 'g'
tGravityAcc-arCoeff()-Z,3 --- standard gravity units 'g'
tGravityAcc-arCoeff()-Z,4 --- standard gravity units 'g'

	Autorregresion coefficients with Burg order equal to 4 of time Gravity Acceleration - Z Direction

tGravityAcc-correlation()-X,Y --- standard gravity units 'g'

	Correlation coefficient between two signals of time Gravity Acceleration - X, Y Direction

tGravityAcc-correlation()-X,Z --- standard gravity units 'g'

	Correlation coefficient between two signals of time Gravity Acceleration - X, Z Direction

tGravityAcc-correlation()-Y,Z --- standard gravity units 'g'

	Correlation coefficient between two signals of time Gravity Acceleration - Y, Z Direction


tBodyAccJerk-mean()-X --- standard gravity units 'g'

	Mean of Time Body Linear Acceleration Jerk - X Direction


tBodyAccJerk-mean()-Y --- standard gravity units 'g'

	Mean of Time Body Linear Acceleration Jerk - Y Direction

tBodyAccJerk-mean()-Z --- standard gravity units 'g'

	Mean of Time Body Linear Acceleration Jerk - Y Direction


tBodyAccJerk-std()-X --- standard gravity units 'g'

	Standar Desviation of Time Body Linear Acceleration Jerk - X Direction

tBodyAccJerk-std()-Y --- standard gravity units 'g'

	Standar Desviation of Time Body Linear Acceleration Jerk - Y Direction

tBodyAccJerk-std()-Z --- standard gravity units 'g'

	Standar Desviation of Time Body Linear Acceleration Jerk - Z Direction

tBodyAccJerk-mad()-X --- standard gravity units 'g'

	Median absolute deviation of Time Body Linear Acceleration Jerk - X Direction

tBodyAccJerk-mad()-Y --- standard gravity units 'g'

	Median absolute deviation of Time Body Linear Acceleration Jerk - Y Direction

tBodyAccJerk-mad()-Z --- standard gravity units 'g'

	Median absolute deviation of Time Body Linear Acceleration Jerk - Z Direction

tBodyAccJerk-max()-X --- standard gravity units 'g'

	Largest value in array of Time Body Linear Acceleration Jerk - X Direction

tBodyAccJerk-max()-Y --- standard gravity units 'g'

	Largest value in array of Time Body Linear Acceleration Jerk - Y Direction

tBodyAccJerk-max()-Z --- standard gravity units 'g'

	Largest value in array of Time Body Linear Acceleration Jerk - Z Direction

tBodyAccJerk-min()-X --- standard gravity units 'g'

	Smallest value in array of Time Body Linear Acceleration Jerk - X Direction

tBodyAccJerk-min()-Y --- standard gravity units 'g'

	Smallest value in array of Time Body Linear Acceleration Jerk - Y Direction

tBodyAccJerk-min()-Z --- standard gravity units 'g'

	Smallest value in array of Time Body Linear Acceleration Jerk - Z Direction

tBodyAccJerk-sma() --- standard gravity units 'g'

	Signal magnitude area of Time Body Linear Acceleration Jerk

tBodyAccJerk-energy()-X --- standard gravity units 'g'

	Energy measure. Sum of the squares divided by the number of values. 
	Time Body Linear Acceleration Jerk - X Direction

tBodyAccJerk-energy()-Y --- standard gravity units 'g'

	Energy measure. Sum of the squares divided by the number of values. 
	Time Body Linear Acceleration Jerk - Y Direction

tBodyAccJerk-energy()-Z --- standard gravity units 'g'

	Energy measure. Sum of the squares divided by the number of values. 
	Time Body Linear Acceleration Jerk - Z Direction

tBodyAccJerk-iqr()-X --- standard gravity units 'g'

	Interquartile range of Time Body Linear Acceleration Jerk - X Direction

tBodyAccJerk-iqr()-Y --- standard gravity units 'g'

	Interquartile range of Time Body Linear Acceleration Jerk - Y Direction

tBodyAccJerk-iqr()-Z --- standard gravity units 'g'

	Interquartile range of Time Body Linear Acceleration Jerk - Z Direction

tBodyAccJerk-entropy()-X --- standard gravity units 'g'

	Signal entropy of Time Body Linear Acceleration Jerk - X Direction

tBodyAccJerk-entropy()-Y --- standard gravity units 'g'

	Signal entropy of Time Body Linear Acceleration Jerk - Y Direction

tBodyAccJerk-entropy()-Z --- standard gravity units 'g'

	Signal entropy of Time Body Linear Acceleration Jerk - Z Direction


tBodyAccJerk-arCoeff()-X,1 --- standard gravity units 'g'
tBodyAccJerk-arCoeff()-X,2 --- standard gravity units 'g'
tBodyAccJerk-arCoeff()-X,3 --- standard gravity units 'g'
tBodyAccJerk-arCoeff()-X,4 --- standard gravity units 'g'

	Autorregresion coefficients with Burg order equal to 4 of time Body Acceleration - X Direction

tBodyAccJerk-arCoeff()-Y,1 --- standard gravity units 'g'
tBodyAccJerk-arCoeff()-Y,2 --- standard gravity units 'g'
tBodyAccJerk-arCoeff()-Y,3 --- standard gravity units 'g'
tBodyAccJerk-arCoeff()-Y,4 --- standard gravity units 'g'

	Autorregresion coefficients with Burg order equal to 4 of time Body Acceleration - Y Direction

tBodyAccJerk-arCoeff()-Z,1 --- standard gravity units 'g'
tBodyAccJerk-arCoeff()-Z,2 --- standard gravity units 'g'
tBodyAccJerk-arCoeff()-Z,3 --- standard gravity units 'g'
tBodyAccJerk-arCoeff()-Z,4 --- standard gravity units 'g'

	Autorregresion coefficients with Burg order equal to 4 of time Body Acceleration - Z Direction

tBodyAccJerk-correlation()-X,Y --- standard gravity units 'g'

	Correlation coefficient between two signals of time Body Acceleration - X, Y Direction

tBodyAccJerk-correlation()-X,Z --- standard gravity units 'g'

	Correlation coefficient between two signals of time Body Acceleration - X, Z Direction

tBodyAccJerk-correlation()-Y,Z --- standard gravity units 'g'

	Correlation coefficient between two signals of time Body Acceleration - Y, Z Direction	



tBodyGyro-mean()-X --- radians/second

	Mean of Time Body Linear Angular Velocity - X Direction


tBodyGyro-mean()-Y --- radians/second

	Mean of Time Body Linear Angular Velocity - Y Direction

tBodyGyro-mean()-Z --- radians/second

	Mean of Time Body Linear Angular Velocity - Y Direction


tBodyGyro-std()-X --- radians/second

	Standar Desviation of Time Body Linear Angular Velocity - X Direction

tBodyGyro-std()-Y --- radians/second

	Standar Desviation of Time Body Linear Angular Velocity - Y Direction

tBodyGyro-std()-Z --- radians/second

	Standar Desviation of Time Body Linear Angular Velocity - Z Direction

tBodyGyro-mad()-X --- radians/second

	Median absolute deviation of Time Body Linear Angular Velocity - X Direction

tBodyGyro-mad()-Y --- radians/second

	Median absolute deviation of Time Body Linear Angular Velocity - Y Direction

tBodyGyro-mad()-Z --- radians/second

	Median absolute deviation of Time Body Linear Angular Velocity - Z Direction

tBodyGyro-max()-X --- radians/second

	Largest value in array of Time Body Linear Angular Velocity - X Direction

tBodyGyro-max()-Y --- radians/second

	Largest value in array of Time Body Linear Angular Velocity - Y Direction

tBodyGyro-max()-Z --- radians/second

	Largest value in array of Time Body Linear Angular Velocity - Z Direction

tBodyGyro-min()-X --- radians/second

	Smallest value in array of Time Body Linear Angular Velocity - X Direction

tBodyGyro-min()-Y --- radians/second

	Smallest value in array of Time Body Linear Angular Velocity - Y Direction

tBodyGyro-min()-Z --- radians/second

	Smallest value in array of Time Body Linear Angular Velocity - Z Direction

tBodyGyro-sma() --- radians/second

	Signal magnitude area of Time Body Linear Angular Velocity

tBodyGyro-energy()-X --- radians/second

	Energy measure. Sum of the squares divided by the number of values. 
	Time Body Linear Angular Velocity - X Direction

tBodyGyro-energy()-Y --- radians/second

	Energy measure. Sum of the squares divided by the number of values. 
	Time Body Linear Angular Velocity - Y Direction

tBodyGyro-energy()-Z --- radians/second

	Energy measure. Sum of the squares divided by the number of values. 
	Time Body Linear Angular Velocity - Z Direction

tBodyGyro-iqr()-X --- radians/second

	Interquartile range of Time Body Linear Angular Velocity - X Direction

tBodyGyro-iqr()-Y --- radians/second

	Interquartile range of Time Body Linear Angular Velocity - Y Direction

tBodyGyro-iqr()-Z --- radians/second

	Interquartile range of Time Body Linear Angular Velocity - Z Direction

tBodyGyro-entropy()-X --- radians/second

	Signal entropy of Time Body Linear Angular Velocity - X Direction

tBodyGyro-entropy()-Y --- radians/second

	Signal entropy of Time Body Linear Angular Velocity - Y Direction

tBodyGyro-entropy()-Z --- radians/second

	Signal entropy of Time Body Linear Angular Velocity - Z Direction


tBodyGyro-arCoeff()-X,1 --- radians/second
tBodyGyro-arCoeff()-X,2 --- radians/second
tBodyGyro-arCoeff()-X,3 --- radians/second
tBodyGyro-arCoeff()-X,4 --- radians/second

	Autorregresion coefficients with Burg order equal to 4 of time Body Angular Velocity - X Direction

tBodyGyro-arCoeff()-Y,1 --- radians/second
tBodyGyro-arCoeff()-Y,2 --- radians/second
tBodyGyro-arCoeff()-Y,3 --- radians/second
tBodyGyro-arCoeff()-Y,4 --- radians/second

	Autorregresion coefficients with Burg order equal to 4 of time Body Angular Velocity - Y Direction

tBodyGyro-arCoeff()-Z,1 --- radians/second
tBodyGyro-arCoeff()-Z,2 --- radians/second
tBodyGyro-arCoeff()-Z,3 --- radians/second
tBodyGyro-arCoeff()-Z,4 --- radians/second

	Autorregresion coefficients with Burg order equal to 4 of time Body Angular Velocity - Z Direction

tBodyGyro-correlation()-X,Y --- radians/second

	Correlation coefficient between two signals of time Body Angular Velocity - X, Y Direction

tBodyGyro-correlation()-X,Z --- radians/second

	Correlation coefficient between two signals of time Body Angular Velocity - X, Z Direction

tBodyGyro-correlation()-Y,Z --- radians/second

	Correlation coefficient between two signals of time Body Angular Velocity - Y, Z Direction


tBodyGyroJerk-mean()-X --- radians/second

	Mean of Time Body Linear Angular Velocity Jerk - X Direction


tBodyGyroJerk-mean()-Y --- radians/second

	Mean of Time Body Linear Angular Velocity Jerk - Y Direction

tBodyGyroJerk-mean()-Z --- radians/second

	Mean of Time Body Linear Angular Velocity Jerk - Y Direction


tBodyGyroJerk-std()-X --- radians/second

	Standar Desviation of Time Body Linear Angular Velocity Jerk - X Direction

tBodyGyroJerk-std()-Y --- radians/second

	Standar Desviation of Time Body Linear Angular Velocity Jerk - Y Direction

tBodyGyroJerk-std()-Z --- radians/second

	Standar Desviation of Time Body Linear Angular Velocity Jerk - Z Direction

tBodyGyroJerk-mad()-X --- radians/second

	Median absolute deviation of Time Body Linear Angular Velocity Jerk - X Direction

tBodyGyroJerk-mad()-Y --- radians/second

	Median absolute deviation of Time Body Linear Angular Velocity Jerk - Y Direction

tBodyGyroJerk-mad()-Z --- radians/second

	Median absolute deviation of Time Body Linear Angular Velocity Jerk - Z Direction

tBodyGyroJerk-max()-X --- radians/second

	Largest value in array of Time Body Linear Angular Velocity Jerk - X Direction

tBodyGyroJerk-max()-Y --- radians/second

	Largest value in array of Time Body Linear Angular Velocity Jerk - Y Direction

tBodyGyroJerk-max()-Z --- radians/second

	Largest value in array of Time Body Linear Angular Velocity Jerk - Z Direction

tBodyGyroJerk-min()-X --- radians/second

	Smallest value in array of Time Body Linear Angular Velocity Jerk - X Direction

tBodyGyroJerk-min()-Y --- radians/second

	Smallest value in array of Time Body Linear Angular Velocity Jerk - Y Direction

tBodyGyroJerk-min()-Z --- radians/second

	Smallest value in array of Time Body Linear Angular Velocity Jerk - Z Direction

tBodyGyroJerk-sma() --- radians/second

	Signal magnitude area of Time Body Linear Angular Velocity Jerk

tBodyGyroJerk-energy()-X --- radians/second

	Energy measure. Sum of the squares divided by the number of values. 
	Time Body Linear Angular Velocity Jerk - X Direction

tBodyGyroJerk-energy()-Y --- radians/second

	Energy measure. Sum of the squares divided by the number of values. 
	Time Body Linear Angular Velocity Jerk - Y Direction

tBodyGyroJerk-energy()-Z --- radians/second

	Energy measure. Sum of the squares divided by the number of values. 
	Time Body Linear Angular Velocity Jerk - Z Direction

tBodyGyroJerk-iqr()-X --- radians/second

	Interquartile range of Time Body Linear Angular Velocity Jerk - X Direction

tBodyGyroJerk-iqr()-Y --- radians/second

	Interquartile range of Time Body Linear Angular Velocity Jerk - Y Direction

tBodyGyroJerk-iqr()-Z --- radians/second

	Interquartile range of Time Body Linear Angular Velocity Jerk - Z Direction

tBodyGyroJerk-entropy()-X --- radians/second

	Signal entropy of Time Body Linear Angular Velocity Jerk - X Direction

tBodyGyroJerk-entropy()-Y --- radians/second

	Signal entropy of Time Body Linear Angular Velocity Jerk - Y Direction

tBodyGyroJerk-entropy()-Z --- radians/second

	Signal entropy of Time Body Linear Angular Velocity Jerk - Z Direction


tBodyGyroJerk-arCoeff()-X,1 --- radians/second
tBodyGyroJerk-arCoeff()-X,2 --- radians/second
tBodyGyroJerk-arCoeff()-X,3 --- radians/second
tBodyGyroJerk-arCoeff()-X,4 --- radians/second

	Autorregresion coefficients with Burg order equal to 4 of time Body Angular Velocity Jerk - X Direction

tBodyGyroJerk-arCoeff()-Y,1 --- radians/second
tBodyGyroJerk-arCoeff()-Y,2 --- radians/second
tBodyGyroJerk-arCoeff()-Y,3 --- radians/second
tBodyGyroJerk-arCoeff()-Y,4 --- radians/second

	Autorregresion coefficients with Burg order equal to 4 of time Body Angular Velocity Jerk - Y Direction

tBodyGyroJerk-arCoeff()-Z,1 --- radians/second
tBodyGyroJerk-arCoeff()-Z,2 --- radians/second
tBodyGyroJerk-arCoeff()-Z,3 --- radians/second
tBodyGyroJerk-arCoeff()-Z,4 --- radians/second

	Autorregresion coefficients with Burg order equal to 4 of time Body Angular Velocity Jerk - Z Direction

tBodyGyroJerk-correlation()-X,Y --- radians/second

	Correlation coefficient between two signals of time Body Angular Velocity Jerk - X, Y Direction

tBodyGyroJerk-correlation()-X,Z --- radians/second

	Correlation coefficient between two signals of time Body Angular Velocity Jerk - X, Z Direction

tBodyGyroJerk-correlation()-Y,Z --- radians/second

	Correlation coefficient between two signals of time Body Angular Velocity Jerk - Y, Z Direction


tBodyAccMag-mean() --- standard gravity units 'g'

	Mean of Time Body Linear Acceleration Magnitude 


tBodyAccMag-std() --- standard gravity units 'g'

	Standar Desviation of Time Body Linear Acceleration Magnitude 


tBodyAccMag-mad() --- standard gravity units 'g'

	Median absolute deviation of Time Body Linear Acceleration Magnitude 


tBodyAccMag-max() --- standard gravity units 'g'

	Largest value in array of Time Body Linear Acceleration Magnitude 


tBodyAccMag-min() --- standard gravity units 'g'

	Smallest value in array of Time Body Linear Acceleration Magnitude 


tBodyAccMag-sma() --- standard gravity units 'g'

	Signal magnitude area of Time Body Linear Acceleration Magnitude

tBodyAccMag-energy() --- standard gravity units 'g'

	Energy measure. Sum of the squares divided by the number of values. 
	Time Body Linear Acceleration Magnitude 



tBodyAccMag-iqr() --- standard gravity units 'g'

	Interquartile range of Time Body Linear Acceleration Magnitude 

tBodyAccMag-entropy() --- standard gravity units 'g'

	Signal entropy of Time Body Linear Acceleration Magnitude 


tBodyAccMag-arCoeff()1 --- standard gravity units 'g'
tBodyAccMag-arCoeff()2 --- standard gravity units 'g'
tBodyAccMag-arCoeff()3 --- standard gravity units 'g'
tBodyAccMag-arCoeff()4 --- standard gravity units 'g'

	Autorregresion coefficients with Burg order equal to 4 of time Body Acceleration Magnitude


tGravityAccMag-mean() --- standard gravity units 'g'

	Mean of Time Gravity Linear Acceleration Magnitude 


tGravityAccMag-std() --- standard gravity units 'g'

	Standar Desviation of Time Gravity Linear Acceleration Magnitude 


tGravityAccMag-mad() --- standard gravity units 'g'

	Median absolute deviation of Time Gravity Linear Acceleration Magnitude 


tGravityAccMag-max() --- standard gravity units 'g'

	Largest value in array of Time Gravity Linear Acceleration Magnitude 


tGravityAccMag-min() --- standard gravity units 'g'

	Smallest value in array of Time Gravity Linear Acceleration Magnitude 


tGravityAccMag-sma() --- standard gravity units 'g'

	Signal magnitude area of Time Gravity Linear Acceleration Magnitude

tGravityAccMag-energy() --- standard gravity units 'g'

	Energy measure. Sum of the squares divided by the number of values. 
	Time Gravity Linear Acceleration Magnitude 



tGravityAccMag-iqr() --- standard gravity units 'g'

	Interquartile range of Time Gravity Linear Acceleration Magnitude 

tGravityAccMag-entropy() --- standard gravity units 'g'

	Signal entropy of Time Gravity Linear Acceleration Magnitude 


tGravityAccMag-arCoeff()1 --- standard gravity units 'g'
tGravityAccMag-arCoeff()2 --- standard gravity units 'g'
tGravityAccMag-arCoeff()3 --- standard gravity units 'g'
tGravityAccMag-arCoeff()4 --- standard gravity units 'g'

	Autorregresion coefficients with Burg order equal to 4 of time Gravity Acceleration Magnitude



tBodyAccJerkMag-mean() --- standard gravity units 'g'

	Mean of Time Body Linear Acceleration Jerk Magnitude  


tBodyAccJerkMag-std() --- standard gravity units 'g'

	Standar Desviation of Time Body Linear Acceleration Jerk Magnitude 


tBodyAccJerkMag-mad() --- standard gravity units 'g'

	Median absolute deviation of Time Body Linear Acceleration Jerk Magnitude 


tBodyAccJerkMag-max() --- standard gravity units 'g'

	Largest value in array of Time Body Linear Acceleration Jerk Magnitude 


tBodyAccJerkMag-min() --- standard gravity units 'g'

	Smallest value in array of Time Body Linear Acceleration Jerk Magnitude 


tBodyAccJerkMag-sma() --- standard gravity units 'g'

	Signal magnitude area of Time Body Linear Acceleration Jerk Magnitude

tBodyAccJerkMag-energy() --- standard gravity units 'g'

	Energy measure. Sum of the squares divided by the number of values. 
	Time Body Linear Acceleration Jerk Magnitude 



tBodyAccJerkMag-iqr() --- standard gravity units 'g'

	Interquartile range of Time Body Linear Acceleration Jerk Magnitude 

tBodyAccJerkMag-entropy() --- standard gravity units 'g'

	Signal entropy of Time Body Linear Acceleration Jerk Magnitude 


tBodyAccJerkMag-arCoeff()1 --- standard gravity units 'g'
tBodyAccJerkMag-arCoeff()2 --- standard gravity units 'g'
tBodyAccJerkMag-arCoeff()3 --- standard gravity units 'g'
tBodyAccJerkMag-arCoeff()4 --- standard gravity units 'g'

	Autorregresion coefficients with Burg order equal to 4 of time Body Acceleration Jerk Magnitude


tBodyGyroMag-mean() --- radians/second

	Mean of Time Body Angular velocity Magnitude 


tBodyGyroMag-std() --- radians/second

	Standar Desviation of Time Body Angular velocity Magnitude 


tBodyGyroMag-mad() --- radians/second

	Median absolute deviation of Time Body Angular velocity Magnitude 


tBodyGyroMag-max() --- radians/second

	Largest value in array of Time Body Angular velocity Magnitude 


tBodyGyroMag-min() --- radians/second

	Smallest value in array of Time Body Angular velocity Magnitude 


tBodyGyroMag-sma() --- radians/second

	Signal magnitude area of Time Body Angular velocity Magnitude

tBodyGyroMag-energy() --- radians/second

	Energy measure. Sum of the squares divided by the number of values. 
	Time Body Angular velocity Magnitude 



tBodyGyroMag-iqr() --- radians/second

	Interquartile range of Time Body Angular velocity Magnitude 

tBodyGyroMag-entropy() --- radians/second

	Signal entropy of Time Body Angular velocity Magnitude 


tBodyGyroMag-arCoeff()1 --- radians/second
tBodyGyroMag-arCoeff()2 --- radians/second
tBodyGyroMag-arCoeff()3 --- radians/second
tBodyGyroMag-arCoeff()4 --- radians/second

	Autorregresion coefficients with Burg order equal to 4 of time Body Angular velocity Magnitude




tBodyGyroJerkMag-mean() --- radians/second

	Mean of Time Body Angular velocity Jerk Magnitude 


tBodyGyroJerkMag-std() --- radians/second

	Standar Desviation of Time Body Angular velocity Jerk Magnitude 


tBodyGyroJerkMag-mad() --- radians/second

	Median absolute deviation of Time Body Angular velocity Jerk Magnitude 


tBodyGyroJerkMag-max() --- radians/second

	Largest value in array of Time Body Angular velocity Jerk Magnitude 


tBodyGyroJerkMag-min() --- radians/second

	Smallest value in array of Time Body Angular velocity Jerk Magnitude 


tBodyGyroJerkMag-sma() --- radians/second

	Signal magnitude area of Time Body Angular velocity Jerk Magnitude

tBodyGyroJerkMag-energy() --- radians/second

	Energy measure. Sum of the squares divided by the number of values. 
	Time Body Angular velocity Jerk Magnitude 



tBodyGyroJerkMag-iqr() --- radians/second

	Interquartile range of Time Body Angular velocity Jerk Magnitude 

tBodyGyroJerkMag-entropy() --- radians/second

	Signal entropy of Time Body Angular velocity Jerk Magnitude 


tBodyGyroJerkMag-arCoeff()1 --- radians/second
tBodyGyroJerkMag-arCoeff()2 --- radians/second
tBodyGyroJerkMag-arCoeff()3 --- radians/second
tBodyGyroJerkMag-arCoeff()4 --- radians/second

	Autorregresion coefficients with Burg order equal to 4 of time Body Angular Velocity Jerk Magnitude


fBodyAcc-mean()-X --- standard gravity units 'g'

	Mean of Frequency Body Linear Acceleration - X Direction


fBodyAcc-mean()-Y --- 

	Mean of Frequency Body Linear Acceleration - Y Direction

fBodyAcc-mean()-Z --- standard gravity units 'g'

	Mean of Frequency Body Linear Acceleration - Y Direction


fBodyAcc-std()-X --- standard gravity units 'g'

	Standar Desviation of Frequency Body Linear Acceleration - X Direction

fBodyAcc-std()-Y --- standard gravity units 'g'

	Standar Desviation of Frequency Body Linear Acceleration - Y Direction

fBodyAcc-std()-Z --- standard gravity units 'g'
	Standar Desviation of Frequency Body Linear Acceleration - Z Direction

fBodyAcc-mad()-X --- standard gravity units 'g'

	Median absolute deviation of Frequency Body Linear Acceleration - X Direction

fBodyAcc-mad()-Y --- standard gravity units 'g'

	Median absolute deviation of Frequency Body Linear Acceleration - Y Direction

fBodyAcc-mad()-Z --- standard gravity units 'g'

	Median absolute deviation of Frequency Body Linear Acceleration - Z Direction

fBodyAcc-max()-X --- standard gravity units 'g'

	Largest value in array of Frequency Body Linear Acceleration - X Direction

fBodyAcc-max()-Y --- standard gravity units 'g'

	Largest value in array of Frequency Body Linear Acceleration - Y Direction

fBodyAcc-max()-Z --- standard gravity units 'g'

	Largest value in array of Frequency Body Linear Acceleration - Z Direction

fBodyAcc-min()-X --- standard gravity units 'g'

	Smallest value in array of Frequency Body Linear Acceleration - X Direction

fBodyAcc-min()-Y --- standard gravity units 'g'

	Smallest value in array of Frequency Body Linear Acceleration - Y Direction

fBodyAcc-min()-Z --- standard gravity units 'g'

	Smallest value in array of Frequency Body Linear Acceleration - Z Direction

fBodyAcc-sma() --- standard gravity units 'g'

	Signal magnitude area of Frequency Body Linear Acceleration

fBodyAcc-energy()-X --- standard gravity units 'g'

	Energy measure. Sum of the squares divided by the number of values. 
	Frequency Body Linear Acceleration - X Direction

fBodyAcc-energy()-Y --- standard gravity units 'g'

	Energy measure. Sum of the squares divided by the number of values. 
	Frequency Body Linear Acceleration - Y Direction

fBodyAcc-energy()-Z --- standard gravity units 'g'

	Energy measure. Sum of the squares divided by the number of values. 
	Frequency Body Linear Acceleration - Z Direction

fBodyAcc-iqr()-X --- standard gravity units 'g'

	Interquartile range of Frequency Body Linear Acceleration - X Direction

fBodyAcc-iqr()-Y --- standard gravity units 'g'

	Interquartile range of Frequency Body Linear Acceleration - Y Direction

fBodyAcc-iqr()-Z --- standard gravity units 'g'

	Interquartile range of Frequency Body Linear Acceleration - Z Direction

fBodyAcc-entropy()-X --- standard gravity units 'g'

	Signal entropy of Frequency Body Linear Acceleration - X Direction

fBodyAcc-entropy()-Y --- standard gravity units 'g'

	Signal entropy of Frequency Body Linear Acceleration - Y Direction
 
fBodyAcc-entropy()-Z --- standard gravity units 'g'

	Signal entropy of Frequency Body Linear Acceleration - Z Direction



fBodyAcc-maxInds-X --- standard gravity units 'g'

	Index of the frequency component with largest magnitude of Body Linear Acceleration - X Direction

fBodyAcc-maxInds-Y --- standard gravity units 'g'

	Index of the frequency component with largest magnitude of Body Linear Acceleration - Y Direction

fBodyAcc-maxInds-Z --- standard gravity units 'g'

	Index of the frequency component with largest magnitude of Body Linear Acceleration - Z Direction

fBodyAcc-meanFreq()-X --- standard gravity units 'g'

	Weighted average of the frequency components to obtain a mean frequency of Body Linear Acceleration - X Direction

fBodyAcc-meanFreq()-Y --- standard gravity units 'g'

	Weighted average of the frequency components to obtain a mean frequency of Body Linear Acceleration - Y Direction

fBodyAcc-meanFreq()-Z --- standard gravity units 'g'

	Weighted average of the frequency components to obtain a mean frequency of Body Linear Acceleration - Z Direction


fBodyAcc-skewness()-X --- standard gravity units 'g'

	skewness of the frequency domain signal of Body Linear Acceleration - X Direction

fBodyAcc-kurtosis()-X --- standard gravity units 'g'

	kurtosis of the frequency domain signal of Body Linear Acceleration - X Direction


fBodyAcc-skewness()-Y --- standard gravity units 'g'

	skewness of the frequency domain signal of Body Linear Acceleration - Y Direction

fBodyAcc-kurtosis()-Y --- standard gravity units 'g'

	kurtosis of the frequency domain signal of Body Linear Acceleration - Y Direction

fBodyAcc-skewness()-Z --- standard gravity units 'g'

	skewness of the frequency domain signal of Body Linear Acceleration - Z Direction

fBodyAcc-kurtosis()-Z --- standard gravity units 'g'

	kurtosis of the frequency domain signal of Body Linear Acceleration - Z Direction



fBodyAcc-bandsEnergy()-1,8 --- standard gravity units 'g'
fBodyAcc-bandsEnergy()-9,16 --- standard gravity units 'g'
fBodyAcc-bandsEnergy()-17,24 --- standard gravity units 'g'
fBodyAcc-bandsEnergy()-25,32 --- standard gravity units 'g'
fBodyAcc-bandsEnergy()-33,40 --- standard gravity units 'g'
fBodyAcc-bandsEnergy()-41,48 --- standard gravity units 'g'
fBodyAcc-bandsEnergy()-49,56 --- standard gravity units 'g'
fBodyAcc-bandsEnergy()-57,64 --- standard gravity units 'g'
fBodyAcc-bandsEnergy()-1,16 --- standard gravity units 'g'
fBodyAcc-bandsEnergy()-17,32 --- standard gravity units 'g'
fBodyAcc-bandsEnergy()-33,48 --- standard gravity units 'g'
fBodyAcc-bandsEnergy()-49,64 --- standard gravity units 'g'
fBodyAcc-bandsEnergy()-1,24 --- standard gravity units 'g'
fBodyAcc-bandsEnergy()-25,48 --- standard gravity units 'g'
fBodyAcc-bandsEnergy()-1,8 --- standard gravity units 'g'
fBodyAcc-bandsEnergy()-9,16 --- standard gravity units 'g'
fBodyAcc-bandsEnergy()-17,24 --- standard gravity units 'g'
fBodyAcc-bandsEnergy()-25,32 --- standard gravity units 'g'
fBodyAcc-bandsEnergy()-33,40 --- standard gravity units 'g'
fBodyAcc-bandsEnergy()-41,48 --- standard gravity units 'g'
fBodyAcc-bandsEnergy()-49,56 --- standard gravity units 'g'
fBodyAcc-bandsEnergy()-57,64 --- standard gravity units 'g'
fBodyAcc-bandsEnergy()-1,16 --- standard gravity units 'g'
fBodyAcc-bandsEnergy()-17,32 --- standard gravity units 'g'
fBodyAcc-bandsEnergy()-33,48 --- standard gravity units 'g'
fBodyAcc-bandsEnergy()-49,64 --- standard gravity units 'g'
fBodyAcc-bandsEnergy()-1,24 --- standard gravity units 'g'
fBodyAcc-bandsEnergy()-25,48 --- standard gravity units 'g'
fBodyAcc-bandsEnergy()-1,8 --- standard gravity units 'g'
fBodyAcc-bandsEnergy()-9,16 --- standard gravity units 'g'
fBodyAcc-bandsEnergy()-17,24 --- standard gravity units 'g'
fBodyAcc-bandsEnergy()-25,32 --- standard gravity units 'g'
fBodyAcc-bandsEnergy()-33,40 --- standard gravity units 'g'
fBodyAcc-bandsEnergy()-41,48 --- standard gravity units 'g'
fBodyAcc-bandsEnergy()-49,56 --- standard gravity units 'g'
fBodyAcc-bandsEnergy()-57,64 --- standard gravity units 'g'
fBodyAcc-bandsEnergy()-1,16 --- standard gravity units 'g'
fBodyAcc-bandsEnergy()-17,32 --- standard gravity units 'g'
fBodyAcc-bandsEnergy()-33,48 --- standard gravity units 'g'
fBodyAcc-bandsEnergy()-49,64 --- standard gravity units 'g' 
fBodyAcc-bandsEnergy()-1,24 --- standard gravity units 'g'
fBodyAcc-bandsEnergy()-25,48 --- standard gravity units 'g'

Energy of a frequency interval within the 64 bins of the FFT of each window of Body Acceleration



fBodyAccJerk-mean()-X --- standard gravity units 'g'

	Mean of Frequency Body Linear Acceleration Jerk - X Direction


fBodyAccJerk-mean()-Y --- standard gravity units 'g'

	Mean of Frequency Body Linear Acceleration Jerk - Y Direction

fBodyAccJerk-mean()-Z --- standard gravity units 'g'

	Mean of Frequency Body Linear Acceleration Jerk - Y Direction


fBodyAccJerk-std()-X --- standard gravity units 'g'

	Standar Desviation of Frequency Body Linear Acceleration Jerk - X Direction

fBodyAccJerk-std()-Y --- standard gravity units 'g'

	Standar Desviation of Frequency Body Linear Acceleration Jerk - Y Direction

fBodyAccJerk-std()-Z --- standard gravity units 'g'

	Standar Desviation of Frequency Body Linear Acceleration Jerk - Z Direction

fBodyAccJerk-mad()-X --- standard gravity units 'g'

	Median absolute deviation of Frequency Body Linear Acceleration Jerk - X Direction

fBodyAccJerk-mad()-Y --- standard gravity units 'g'

	Median absolute deviation of Frequency Body Linear Acceleration Jerk - Y Direction

fBodyAccJerk-mad()-Z --- standard gravity units 'g'

	Median absolute deviation of Frequency Body Linear Acceleration Jerk - Z Direction

fBodyAccJerk-max()-X --- standard gravity units 'g'

	Largest value in array of Frequency Body Linear Acceleration Jerk - X Direction

fBodyAccJerk-max()-Y --- standard gravity units 'g'

	Largest value in array of Frequency Body Linear Acceleration Jerk - Y Direction

fBodyAccJerk-max()-Z --- standard gravity units 'g'

	Largest value in array of Frequency Body Linear Acceleration Jerk - Z Direction

fBodyAccJerk-min()-X --- standard gravity units 'g'

	Smallest value in array of Frequency Body Linear Acceleration Jerk - X Direction

fBodyAccJerk-min()-Y --- standard gravity units 'g'

	Smallest value in array of Frequency Body Linear Acceleration Jerk - Y Direction

fBodyAccJerk-min()-Z --- standard gravity units 'g'

	Smallest value in array of Frequency Body Linear Acceleration Jerk - Z Direction

fBodyAccJerk-sma() --- standard gravity units 'g'

	Signal magnitude area of Frequency Body Linear Acceleration Jerk

fBodyAccJerk-energy()-X --- standard gravity units 'g'

	Energy measure. Sum of the squares divided by the number of values. 
	Frequency Body Linear Acceleration Jerk - X Direction

fBodyAccJerk-energy()-Y --- standard gravity units 'g'

	Energy measure. Sum of the squares divided by the number of values. 
	Frequency Body Linear Acceleration Jerk - Y Direction

fBodyAccJerk-energy()-Z --- standard gravity units 'g'

	Energy measure. Sum of the squares divided by the number of values. 
	Frequency Body Linear Acceleration Jerk - Z Direction

fBodyAccJerk-iqr()-X --- standard gravity units 'g'

	Interquartile range of Frequency Body Linear Acceleration Jerk - X Direction

fBodyAccJerk-iqr()-Y --- standard gravity units 'g'

	Interquartile range of Frequency Body Linear Acceleration Jerk - Y Direction

fBodyAccJerk-iqr()-Z --- standard gravity units 'g'

	Interquartile range of Frequency Body Linear Acceleration Jerk - Z Direction

fBodyAccJerk-entropy()-X --- standard gravity units 'g'

	Signal entropy of Frequency Body Linear Acceleration Jerk - X Direction

fBodyAccJerk-entropy()-Y --- standard gravity units 'g'

	Signal entropy of Frequency Body Linear Acceleration Jerk - Y Direction

fBodyAccJerk-entropy()-Z --- standard gravity units 'g'

	Signal entropy of Frequency Body Linear Acceleration Jerk - Z Direction



fBodyAccJerk-maxInds-X --- standard gravity units 'g'

	Index of the frequency component with largest magnitude of Body Linear Acceleration Jerk - X Direction

fBodyAccJerk-maxInds-Y --- standard gravity units 'g'

	Index of the frequency component with largest magnitude of Body Linear Acceleration Jerk - Y Direction

fBodyAccJerk-maxInds-Z --- standard gravity units 'g'

	Index of the frequency component with largest magnitude of Body Linear Acceleration Jerk - Z Direction

fBodyAccJerk-meanFreq()-X --- standard gravity units 'g'

	Weighted average of the frequency components to obtain a mean frequency of Body Linear Acceleration Jerk - X Direction

fBodyAccJerk-meanFreq()-Y --- standard gravity units 'g'

	Weighted average of the frequency components to obtain a mean frequency of Body Linear Acceleration Jerk - Y Direction

fBodyAccJerk-meanFreq()-Z --- standard gravity units 'g'

	Weighted average of the frequency components to obtain a mean frequency of Body Linear Acceleration Jerk - Z Direction


fBodyAccJerk-skewness()-X --- standard gravity units 'g'

	skewness of the frequency domain signal of Body Linear Acceleration Jerk - X Direction

fBodyAccJerk-kurtosis()-X --- standard gravity units 'g'

	kurtosis of the frequency domain signal of Body Linear Acceleration Jerk - X Direction


fBodyAccJerk-skewness()-Y --- standard gravity units 'g'

	skewness of the frequency domain signal of Body Linear Acceleration Jerk - Y Direction

fBodyAccJerk-kurtosis()-Y --- standard gravity units 'g'

	kurtosis of the frequency domain signal of Body Linear Acceleration Jerk - Y Direction

fBodyAccJerk-skewness()-Z --- standard gravity units 'g'

	skewness of the frequency domain signal of Body Linear Acceleration Jerk - Z Direction

fBodyAccJerk-kurtosis()-Z --- standard gravity units 'g'

	kurtosis of the frequency domain signal of Body Linear Acceleration Jerk - Z Direction



382 fBodyAccJerk-bandsEnergy()-1,8 --- standard gravity units 'g'
383 fBodyAccJerk-bandsEnergy()-9,16 --- standard gravity units 'g'
384 fBodyAccJerk-bandsEnergy()-17,24 --- standard gravity units 'g'
385 fBodyAccJerk-bandsEnergy()-25,32 --- standard gravity units 'g'
386 fBodyAccJerk-bandsEnergy()-33,40 --- standard gravity units 'g'
387 fBodyAccJerk-bandsEnergy()-41,48 --- standard gravity units 'g'
388 fBodyAccJerk-bandsEnergy()-49,56 --- standard gravity units 'g'
389 fBodyAccJerk-bandsEnergy()-57,64 --- standard gravity units 'g'
390 fBodyAccJerk-bandsEnergy()-1,16 --- standard gravity units 'g'
391 fBodyAccJerk-bandsEnergy()-17,32 --- standard gravity units 'g'
392 fBodyAccJerk-bandsEnergy()-33,48 --- standard gravity units 'g'
393 fBodyAccJerk-bandsEnergy()-49,64 --- standard gravity units 'g'
394 fBodyAccJerk-bandsEnergy()-1,24 --- standard gravity units 'g'
395 fBodyAccJerk-bandsEnergy()-25,48 --- standard gravity units 'g'
396 fBodyAccJerk-bandsEnergy()-1,8 --- standard gravity units 'g'
397 fBodyAccJerk-bandsEnergy()-9,16 --- standard gravity units 'g'
398 fBodyAccJerk-bandsEnergy()-17,24 --- standard gravity units 'g'
399 fBodyAccJerk-bandsEnergy()-25,32 --- standard gravity units 'g'
400 fBodyAccJerk-bandsEnergy()-33,40 --- standard gravity units 'g'
401 fBodyAccJerk-bandsEnergy()-41,48 --- standard gravity units 'g'
402 fBodyAccJerk-bandsEnergy()-49,56 --- standard gravity units 'g'
403 fBodyAccJerk-bandsEnergy()-57,64 --- standard gravity units 'g'
404 fBodyAccJerk-bandsEnergy()-1,16 --- standard gravity units 'g'
405 fBodyAccJerk-bandsEnergy()-17,32 --- standard gravity units 'g'
406 fBodyAccJerk-bandsEnergy()-33,48 --- standard gravity units 'g'
407 fBodyAccJerk-bandsEnergy()-49,64 --- standard gravity units 'g'
408 fBodyAccJerk-bandsEnergy()-1,24 --- standard gravity units 'g'
409 fBodyAccJerk-bandsEnergy()-25,48 --- standard gravity units 'g'
410 fBodyAccJerk-bandsEnergy()-1,8 --- standard gravity units 'g'
411 fBodyAccJerk-bandsEnergy()-9,16 --- standard gravity units 'g'
412 fBodyAccJerk-bandsEnergy()-17,24 --- standard gravity units 'g'
413 fBodyAccJerk-bandsEnergy()-25,32 --- standard gravity units 'g'
414 fBodyAccJerk-bandsEnergy()-33,40 --- standard gravity units 'g'
415 fBodyAccJerk-bandsEnergy()-41,48 --- standard gravity units 'g'
416 fBodyAccJerk-bandsEnergy()-49,56 --- standard gravity units 'g'
417 fBodyAccJerk-bandsEnergy()-57,64 --- standard gravity units 'g'
418 fBodyAccJerk-bandsEnergy()-1,16 --- standard gravity units 'g'
419 fBodyAccJerk-bandsEnergy()-17,32 --- standard gravity units 'g'
420 fBodyAccJerk-bandsEnergy()-33,48 --- standard gravity units 'g'
421 fBodyAccJerk-bandsEnergy()-49,64 --- standard gravity units 'g'
422 fBodyAccJerk-bandsEnergy()-1,24 --- standard gravity units 'g'
423 fBodyAccJerk-bandsEnergy()-25,48 --- standard gravity units 'g'

Energy of a frequency interval within the 64 bins of the FFT of each window of Body Acceleration Jerk


fBodyGyro-mean()-X --- radians/second

	Mean of Frequency Body Linear Angular Velocity - X Direction


fBodyGyro-mean()-Y --- radians/second

	Mean of Frequency Body Linear Angular Velocity - Y Direction

fBodyGyro-mean()-Z --- radians/second

	Mean of Frequency Body Linear Angular Velocity - Y Direction


fBodyGyro-std()-X --- radians/second

	Standar Desviation of Frequency Body Linear Angular Velocity - X Direction

fBodyGyro-std()-Y --- radians/second

	Standar Desviation of Frequency Body Linear Angular Velocity - Y Direction

fBodyGyro-std()-Z --- radians/second

	Standar Desviation of Frequency Body Linear Angular Velocity - Z Direction

fBodyGyro-mad()-X --- radians/second

	Median absolute deviation of Frequency Body Linear Angular Velocity - X Direction

fBodyGyro-mad()-Y --- radians/second

	Median absolute deviation of Frequency Body Linear Angular Velocity - Y Direction

fBodyGyro-mad()-Z --- radians/second

	Median absolute deviation of Frequency Body Linear Angular Velocity - Z Direction

fBodyGyro-max()-X --- radians/second

	Largest value in array of Frequency Body Linear Angular Velocity - X Direction

fBodyGyro-max()-Y --- radians/second

	Largest value in array of Frequency Body Linear Angular Velocity - Y Direction

fBodyGyro-max()-Z --- radians/second

	Largest value in array of Frequency Body Linear Angular Velocity - Z Direction

fBodyGyro-min()-X --- radians/second

	Smallest value in array of Frequency Body Linear Angular Velocity - X Direction

fBodyGyro-min()-Y --- radians/second

	Smallest value in array of Frequency Body Linear Angular Velocity - Y Direction

fBodyGyro-min()-Z --- radians/second

	Smallest value in array of Frequency Body Linear Angular Velocity - Z Direction

fBodyGyro-sma() --- radians/second

	Signal magnitude area of Frequency Body Linear Angular Velocity

fBodyGyro-energy()-X --- radians/second

	Energy measure. Sum of the squares divided by the number of values. 
	Frequency Body Linear Angular Velocity - X Direction

fBodyGyro-energy()-Y --- radians/second

	Energy measure. Sum of the squares divided by the number of values. 
	Frequency Body Linear Angular Velocity - Y Direction

fBodyGyro-energy()-Z --- radians/second

	Energy measure. Sum of the squares divided by the number of values. 
	Frequency Body Linear Angular Velocity - Z Direction

fBodyGyro-iqr()-X --- radians/second

	Interquartile range of Frequency Body Linear Angular Velocity - X Direction

fBodyGyro-iqr()-Y --- radians/second

	Interquartile range of Frequency Body Linear Angular Velocity - Y Direction

fBodyGyro-iqr()-Z --- radians/second

	Interquartile range of Frequency Body Linear Angular Velocity - Z Direction

fBodyGyro-entropy()-X --- radians/second

	Signal entropy of Frequency Body Linear Angular Velocity - X Direction

fBodyGyro-entropy()-Y --- radians/second

	Signal entropy of Frequency Body Linear Angular Velocity - Y Direction

fBodyGyro-entropy()-Z --- radians/second

	Signal entropy of Frequency Body Linear Angular Velocity - Z Direction



fBodyGyro-maxInds-X --- radians/second

	Index of the frequency component with largest magnitude of Body Linear Angular Velocity - X Direction

fBodyGyro-maxInds-Y --- radians/second

	Index of the frequency component with largest magnitude of Body Linear Angular Velocity - Y Direction

fBodyGyro-maxInds-Z --- radians/second

	Index of the frequency component with largest magnitude of Body Linear Angular Velocity - Z Direction

fBodyGyro-meanFreq()-X --- radians/second

	Weighted average of the frequency components to obtain a mean frequency of Body Linear Angular Velocity - X Direction

fBodyGyro-meanFreq()-Y --- radians/second

	Weighted average of the frequency components to obtain a mean frequency of Body Linear Angular Velocity - Y Direction

fBodyGyro-meanFreq()-Z --- radians/second

	Weighted average of the frequency components to obtain a mean frequency of Body Linear Angular Velocity - Z Direction


fBodyGyro-skewness()-X --- radians/second

	skewness of the frequency domain signal of Body Linear Angular Velocity - X Direction

fBodyGyro-kurtosis()-X

	kurtosis of the frequency domain signal of Body Linear Angular Velocity - X Direction


fBodyGyro-skewness()-Y

	skewness of the frequency domain signal of Body Linear Angular Velocity - Y Direction

fBodyGyro-kurtosis()-Y --- radians/second

	kurtosis of the frequency domain signal of Body Linear Angular Velocity - Y Direction

fBodyGyro-skewness()-Z --- radians/second

	skewness of the frequency domain signal of Body Linear Angular Velocity - Z Direction

fBodyGyro-kurtosis()-Z --- radians/second

	kurtosis of the frequency domain signal of Body Linear Angular Velocity - Z Direction


461 fBodyGyro-bandsEnergy()-1,8 --- radians/second
462 fBodyGyro-bandsEnergy()-9,16 --- radians/second
463 fBodyGyro-bandsEnergy()-17,24 --- radians/second
464 fBodyGyro-bandsEnergy()-25,32 --- radians/second
465 fBodyGyro-bandsEnergy()-33,40 --- radians/second
466 fBodyGyro-bandsEnergy()-41,48 --- radians/second
467 fBodyGyro-bandsEnergy()-49,56 --- radians/second
468 fBodyGyro-bandsEnergy()-57,64 --- radians/second
469 fBodyGyro-bandsEnergy()-1,16 --- radians/second
470 fBodyGyro-bandsEnergy()-17,32 --- radians/second
471 fBodyGyro-bandsEnergy()-33,48 --- radians/second
472 fBodyGyro-bandsEnergy()-49,64 --- radians/second
473 fBodyGyro-bandsEnergy()-1,24 --- radians/second
474 fBodyGyro-bandsEnergy()-25,48 --- radians/second
475 fBodyGyro-bandsEnergy()-1,8 --- radians/second
476 fBodyGyro-bandsEnergy()-9,16 --- radians/second
477 fBodyGyro-bandsEnergy()-17,24 --- radians/second
478 fBodyGyro-bandsEnergy()-25,32 --- radians/second
479 fBodyGyro-bandsEnergy()-33,40 --- radians/second
480 fBodyGyro-bandsEnergy()-41,48 --- radians/second
481 fBodyGyro-bandsEnergy()-49,56 --- radians/second
482 fBodyGyro-bandsEnergy()-57,64 --- radians/second
483 fBodyGyro-bandsEnergy()-1,16 --- radians/second
484 fBodyGyro-bandsEnergy()-17,32 --- radians/second
485 fBodyGyro-bandsEnergy()-33,48 --- radians/second
486 fBodyGyro-bandsEnergy()-49,64 --- radians/second
487 fBodyGyro-bandsEnergy()-1,24 --- radians/second
488 fBodyGyro-bandsEnergy()-25,48 --- radians/second
489 fBodyGyro-bandsEnergy()-1,8 --- radians/second
490 fBodyGyro-bandsEnergy()-9,16 --- radians/second
491 fBodyGyro-bandsEnergy()-17,24 --- radians/second
492 fBodyGyro-bandsEnergy()-25,32 --- radians/second
493 fBodyGyro-bandsEnergy()-33,40 --- radians/second
494 fBodyGyro-bandsEnergy()-41,48 --- radians/second
495 fBodyGyro-bandsEnergy()-49,56 --- radians/second
496 fBodyGyro-bandsEnergy()-57,64 --- radians/second
497 fBodyGyro-bandsEnergy()-1,16 --- radians/second
498 fBodyGyro-bandsEnergy()-17,32 --- radians/second
499 fBodyGyro-bandsEnergy()-33,48 --- radians/second
500 fBodyGyro-bandsEnergy()-49,64 --- radians/second
501 fBodyGyro-bandsEnergy()-1,24 --- radians/second
502 fBodyGyro-bandsEnergy()-25,48 --- radians/second

Energy of a frequency interval within the 64 bins of the FFT of each window of Body Angular Velocity 


fBodyAccMag-mean()  --- standard gravity units 'g'

	Mean of frequency Body Linear Acceleration Magnitude 


fBodyAccMag-std() --- standard gravity units 'g'

	Standar Desviation of frequency Body Linear Acceleration Magnitude 


fBodyAccMag-mad() --- standard gravity units 'g'

	Median absolute deviation of frequency Body Linear Acceleration Magnitude 


fBodyAccMag-max() --- standard gravity units 'g'

	Largest value in array of frequency Body Linear Acceleration Magnitude 


fBodyAccMag-min() --- standard gravity units 'g'

	Smallest value in array of frequency Body Linear Acceleration Magnitude 


fBodyAccMag-sma() --- standard gravity units 'g'

	Signal magnitude area of frequency Body Linear Acceleration Magnitude

fBodyAccMag-energy() --- standard gravity units 'g'

	Energy measure. Sum of the squares divided by the number of values. 
	frequency Body Linear Acceleration Magnitude 



fBodyAccMag-iqr() --- standard gravity units 'g' 

	Interquartile range of frequency Body Linear Acceleration Magnitude 

fBodyAccMag-entropy() --- standard gravity units 'g'

	Signal entropy of frequency Body Linear Acceleration Magnitude 


fBodyGyro-maxInds  ---radians/second

	Index of the frequency component with largest magnitude of Body Linear Acceleration


fBodyGyro-meanFreq() --- radians/second

	Weighted average of the frequency components to obtain a mean frequency of Body Linear Acceleration


fBodyGyro-skewness() --- radians/second

	skewness of the frequency domain signal of Body Linear Acceleration

fBodyGyro-kurtosis() --- radians/second 

	kurtosis of the frequency domain signal of Body Linear Acceleration


fBodyBodyAccJerkMag-mean() --- standard gravity units 'g'

	Mean of frequency Body Linear Acceleration Magnitude 


fBodyBodyAccJerkMag-std() --- standard gravity units 'g'

	Standar Desviation of frequency Body Linear Acceleration Jerk Magnitude 


fBodyBodyAccJerkMag-mad() --- standard gravity units 'g'

	Median absolute deviation of frequency Body Linear Acceleration Jerk Magnitude 


fBodyBodyAccJerkMag-max() --- standard gravity units 'g'

	Largest value in array of frequency Body Linear Acceleration Jerk Magnitude 


fBodyBodyAccJerkMag-min() --- standard gravity units 'g'

	Smallest value in array of frequency Body Linear Acceleration Jerk Magnitude 


fBodyBodyAccJerkMag-sma() --- standard gravity units 'g'

	Signal magnitude area of frequency Body Linear Acceleration Jerk Magnitude

fBodyBodyAccJerkMag-energy() --- standard gravity units 'g'

	Energy measure. Sum of the squares divided by the number of values. 
	frequency Body Linear Acceleration Jerk Magnitude 


fBodyBodyAccJerkMag-iqr() --- standard gravity units 'g'

	Interquartile range of frequency Body Linear Acceleration Jerk Magnitude 

fBodyBpdyAccJerkMag-entropy()

	Signal entropy of frequency Body Linear Acceleration Jerk Magnitude 



fBodyBodyAccJerkMag-maxInds --- standard gravity units 'g'

	Index of the frequency component with largest magnitude of Body Linear Acceleration Jerk Magnitud


fBodyBodyAccJerkMag-meanFreq() --- standard gravity units 'g'

	Weighted average of the frequency components to obtain a mean frequency of Body Linear Acceleration Jerk Magnitud


fBodyBodyAccJerkMag-skewness() --- standard gravity units 'g'

	skewness of the frequency domain signal of Body Linear Acceleration Jerk Magnitud

fBodyBodyAccJerkMag-kurtosis() --- standard gravity units 'g'

	kurtosis of the frequency domain signal of Body Linear Acceleration Jerk Magnitud


fBodyBodyGyroMag-mean() --- radians/second

	Mean of frequency Body angular velocity Magnitude 


fBodyBodyGyroMag-std() --- radians/second

	Standar Desviation of frequency Body angular velocity  Magnitude 


fBodyBodyGyroMag-mad() --- radians/second

	Median absolute deviation of frequency Body angular velocity Magnitude 


fBodyBodyGyroMag-max() --- radians/second

	Largest value in array of frequency Body angular velocity Magnitude 


fBodyBodyGyroMag-min() --- radians/second

	Smallest value in array of frequency Body angular velocity  Magnitude 


fBodyBodyGyroMag-sma() --- radians/second

	Signal magnitude area of frequency Body angular velocity  Magnitude

fBodyBodyGyroMag-energy() --- radians/second

	Energy measure. Sum of the squares divided by the number of values. 
	frequency Body angular velocity  Magnitude 


fBodyBodyGyroMag-iqr() --- radians/second

	Interquartile range of frequency Body angular velocity  Magnitude 

fBodyBodyGyroMag-entropy() --- radians/second

	Signal entropy of frequency Body angular velocity  Magnitude 



fBodyBodyGyroMag-maxInds --- radians/second

	Index of the frequency component with largest magnitude of Body angular velocity  Magnitud


fBodyBodyGyroMag-meanFreq() --- radians/second

	Weighted average of the frequency components to obtain a mean frequency of Body angular velocity Magnitud


fBodyBodyGyroMag-skewness() --- radians/second

	skewness of the frequency domain signal of Body angular velocity Magnitud

fBodyBodyGyroMag-kurtosis() --- radians/second

	kurtosis of the frequency domain signal of Body angular velocity Magnitud


fBodyBodyGyroJerkMag-mean() --- radians/second

	Mean of frequency Body angular velocity Magnitude 


fBodyBodyGyroJerkMag-std() --- radians/second

	Standar Desviation of frequency Body angular velocity Jerk Magnitude 


fBodyBodyGyroJerkMag-mad() --- radians/second

	Median absolute deviation of frequency Body angular velocity Jerk Magnitude 


fBodyBodyGyroJerkMag-max() --- radians/second

	Largest value in array of frequency Body angular velocity Jerk Magnitude 


fBodyBodyGyroJerkMag-min() --- radians/second

	Smallest value in array of frequency Body angular velocity Jerk Magnitude 


fBodyBodyGyroJerkMag-sma() --- radians/second

	Signal magnitude area of frequency Body angular velocity Jerk Magnitude

fBodyBodyGyroJerkMag-energy() --- radians/second

	Energy measure. Sum of the squares divided by the number of values. 
	frequency Body angular velocity Jerk Magnitude 


fBodyBodyGyroJerkMag-iqr() --- radians/second

	Interquartile range of frequency Body angular velocity Jerk Magnitude 

fBodyBodyGyroJerkMag-entropy() --- radians/second

	Signal entropy of frequency Body angular velocity Jerk Magnitude 



fBodyBodyGyroJerkMag-maxInds --- radians/second

	Index of the frequency component with largest magnitude of Body angular velocity Jerk Magnitud


fBodyBodyGyroJerkMag-meanFreq() --- radians/second

	Weighted average of the frequency components to obtain a mean frequency of Body angular velocity Jerk Magnitud


fBodyBodyGyroJerkMag-skewness() --- radians/second

	skewness of the frequency domain signal of Body angular velocity Jerk Magnitud

fBodyBodyGyroJerkMag-kurtosis() --- radians/second

	kurtosis of the frequency domain signal of Body angular velocity Jerk Magnitud






angle(tBodyAccMean,gravity) --- radians

	Angle bettween vectors tBodyAccMean and gravity

angle(tBodyAccJerkMean),gravityMean) --- radians

	Angle bettween vectors tBodyAccJerkMean and gravityMean


angle(tBodyGyroMean,gravityMean) --- radians

	Angle bettween vectors tBodyGyroMean and gravityMean

angle(tBodyGyroJerkMean,gravityMean) --- radians

	Angle bettween vectors tBodyGyroJerkMean and gravityMean

angle(X,gravityMean) --- radians

	Angle bettween X and vector gravityMean

angle(Y,gravityMean) --- radians

	Angle bettween Y and vector gravityMean

angle(Z,gravityMean) --- radians

Angle bettween Z and vector gravityMea



