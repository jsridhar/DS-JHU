# Getting & Cleaning Data - Project - Code Book
---

## Human Activity Recognition Using Smartphones Data Set 

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

---

## Data dictionary to interpret variables names

Variable name       | Description
-------------       | -----------
Subject             | ID of the Subject who performed the activity for each window sample.
Activity            | Name of the actvity performed (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
FeatureDomain       | Feature: Time domain signal or frequency domain signal (Time or Freq)
FeatureInstrument   | Feature: Measuring instrument (Accelerometer or Gyroscope)
FeatureAcceleration | Feature: Acceleration signal (Body or Gravity)
Feature-mean()      | Feature: Mean or Standard Deviation (mean() or std())
FeatureJerk         | Feature: Jerk signal
FeatureMagnitude    | Feature: Magnitude of the signals calculated using the Euclidean norm
FeatureAxis         | Feature: 3-axial signals in the X, Y and Z directions

---

## List of all variables - names(data.tidy)

<pre>
[1] "Subject"                                        "Activity"                                      
 [3] "TimeBodyAccelerometer-mean()-X"                 "TimeBodyAccelerometer-mean()-Y"                
 [5] "TimeBodyAccelerometer-mean()-Z"                 "TimeBodyAccelerometer-std()-X"                 
 [7] "TimeBodyAccelerometer-std()-Y"                  "TimeBodyAccelerometer-std()-Z"                 
 [9] "TimeGravityAccelerometer-mean()-X"              "TimeGravityAccelerometer-mean()-Y"             
[11] "TimeGravityAccelerometer-mean()-Z"              "TimeGravityAccelerometer-std()-X"              
[13] "TimeGravityAccelerometer-std()-Y"               "TimeGravityAccelerometer-std()-Z"              
[15] "TimeBodyAccelerometerJerk-mean()-X"             "TimeBodyAccelerometerJerk-mean()-Y"            
[17] "TimeBodyAccelerometerJerk-mean()-Z"             "TimeBodyAccelerometerJerk-std()-X"             
[19] "TimeBodyAccelerometerJerk-std()-Y"              "TimeBodyAccelerometerJerk-std()-Z"             
[21] "TimeBodyGyroscope-mean()-X"                     "TimeBodyGyroscope-mean()-Y"                    
[23] "TimeBodyGyroscope-mean()-Z"                     "TimeBodyGyroscope-std()-X"                     
[25] "TimeBodyGyroscope-std()-Y"                      "TimeBodyGyroscope-std()-Z"                     
[27] "TimeBodyGyroscopeJerk-mean()-X"                 "TimeBodyGyroscopeJerk-mean()-Y"                
[29] "TimeBodyGyroscopeJerk-mean()-Z"                 "TimeBodyGyroscopeJerk-std()-X"                 
[31] "TimeBodyGyroscopeJerk-std()-Y"                  "TimeBodyGyroscopeJerk-std()-Z"                 
[33] "TimeBodyAccelerometerMagnitude-mean()"          "TimeBodyAccelerometerMagnitude-std()"          
[35] "TimeGravityAccelerometerMagnitude-mean()"       "TimeGravityAccelerometerMagnitude-std()"       
[37] "TimeBodyAccelerometerJerkMagnitude-mean()"      "TimeBodyAccelerometerJerkMagnitude-std()"      
[39] "TimeBodyGyroscopeMagnitude-mean()"              "TimeBodyGyroscopeMagnitude-std()"              
[41] "TimeBodyGyroscopeJerkMagnitude-mean()"          "TimeBodyGyroscopeJerkMagnitude-std()"          
[43] "FrequencyBodyAccelerometer-mean()-X"            "FrequencyBodyAccelerometer-mean()-Y"           
[45] "FrequencyBodyAccelerometer-mean()-Z"            "FrequencyBodyAccelerometer-std()-X"            
[47] "FrequencyBodyAccelerometer-std()-Y"             "FrequencyBodyAccelerometer-std()-Z"            
[49] "FrequencyBodyAccelerometerJerk-mean()-X"        "FrequencyBodyAccelerometerJerk-mean()-Y"       
[51] "FrequencyBodyAccelerometerJerk-mean()-Z"        "FrequencyBodyAccelerometerJerk-std()-X"        
[53] "FrequencyBodyAccelerometerJerk-std()-Y"         "FrequencyBodyAccelerometerJerk-std()-Z"        
[55] "FrequencyBodyGyroscope-mean()-X"                "FrequencyBodyGyroscope-mean()-Y"               
[57] "FrequencyBodyGyroscope-mean()-Z"                "FrequencyBodyGyroscope-std()-X"                
[59] "FrequencyBodyGyroscope-std()-Y"                 "FrequencyBodyGyroscope-std()-Z"                
[61] "FrequencyBodyAccelerometerMagnitude-mean()"     "FrequencyBodyAccelerometerMagnitude-std()"     
[63] "FrequencyBodyAccelerometerJerkMagnitude-mean()" "FrequencyBodyAccelerometerJerkMagnitude-std()" 
[65] "FrequencyBodyGyroscopeMagnitude-mean()"         "FrequencyBodyGyroscopeMagnitude-std()"         
[67] "FrequencyBodyGyroscopeJerkMagnitude-mean()"     "FrequencyBodyGyroscopeJerkMagnitude-std()"
</pre>

---

