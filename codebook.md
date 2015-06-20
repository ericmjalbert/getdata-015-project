The variables of this tidied up data set are described in the [table below](#table).

There are a few items to note.
* This data is gathered from accelerometers and gyroscope 3-axial raw signals 
* There are time delimited signals (vairables prefixed with `t`) and there are frequency delimited signals (variables prefixed with `f`)
    * The time domain signals were captured at a constant 50 Hz.
    * The frequency domain signals had a Fast Fourier Transform applied.
* The accelerometer data were seperated by those produced by body movements (Variables with `Body`) and those produced by gravity accelerations (variables with `Grav`)
* The signals were seperated based on the 3-axis vectors, X,Y, and Z
* The jerk signals were produced with the body linear acceleration and angular velocity
* The magnitudes were calculated with the use of the Euclidiean norms


<a id="table"></a>
## Table
Index | Variable                    | Description
:---: | ---                         | ---
1     | activity                    | Verbal description of subject's activity
2     | subject                     | Subject index
3     | tBodyAcc-mean()-X           | Time domain signal measuring mean body acceleration in X-plane
4     | tBodyAcc-mean()-Y           | Time domain signal measuring mean body acceleration in Y-plane
5     | tBodyAcc-mean()-Z           | Time domain signal measuring mean body acceleration in Z-plane
6     | tBodyAcc-std()-X            | Time domain signal measuring standard deviation of body acceleration in X-plane
7     | tBodyAcc-std()-Y            | Time domain signal measuring standard deviation of body acceleration in Y-plane
8     | tBodyAcc-std()-Z            | Time domain signal measuring standard deviation of body acceleration in Z-plane
9     | tGravityAcc-mean()-X        | Time domain signal measuring mean gravity acceleration in X-plane                 
10    | tGravityAcc-mean()-Y        | Time domain signal measuring mean gravity acceleration in Y-plane                  
11    | tGravityAcc-mean()-Z        | Time domain signal measuring mean gravity acceleration in Z-plane                  
12    | tGravityAcc-std()-X         | Time domain signal measuring standard deviation of gravity acceleration in X-plane  
13    | tGravityAcc-std()-Y         | Time domain signal measuring standard deviation of gravity acceleration in Y-plane  
14    | tGravityAcc-std()-Z         | Time domain signal measuring standard deviation of gravity acceleration in Z-plane  
15    | tBodyAccJerk-mean()-X       | Time domain signal measuring mean jerk signals from body acceleration in X-plane 
16    | tBodyAccJerk-mean()-Y       | Time domain signal measuring mean jerk signals from body acceleration in Y-plane 
17    | tBodyAccJerk-mean()-Z       | Time domain signal measuring mean jerk signals from body acceleration in Z-plane 
18    | tBodyAccJerk-std()-X        | Time domain signal measuring standard deviation jerk signals from body acceleration in Z-plane 
19    | tBodyAccJerk-std()-Y        | Time domain signal measuring standard deviation jerk signals from body acceleration in Z-plane 
20    | tBodyAccJerk-std()-Z        | Time domain signal measuring standard deviation jerk signals from body acceleration in Z-plane 
21    | tBodyGyro-mean()-X          | Time domain signal measuring mean raw signals from gyroscope in X-plane
22    | tBodyGyro-mean()-Y          | Time domain signal measuring mean raw signals from gyroscope in Y-plane
23    | tBodyGyro-mean()-Z          | Time domain signal measuring mean raw signals from gyroscope in Z-plane
24    | tBodyGyro-std()-X           | Time domain signal measuring standard deviation raw signals from gyroscope in Z-plane
25    | tBodyGyro-std()-Y           | Time domain signal measuring standard deviation raw signals from gyroscope in Z-plane
26    | tBodyGyro-std()-Z           | Time domain signal measuring standard deviation raw signals from gyroscope in Z-plane
27    | tBodyGyroJerk-mean()-X      | Time domain signal measuring mean jerk signals from gyroscope in X-plane               
28    | tBodyGyroJerk-mean()-Y      | Time domain signal measuring mean jerk signals from gyroscope in Y-plane               
29    | tBodyGyroJerk-mean()-Z      | Time domain signal measuring mean jerk signals from gyroscope in Z-plane               
30    | tBodyGyroJerk-std()-X       | Time domain signal measuring standard deviation jerk signals from gyroscope in Z-plane 
31    | tBodyGyroJerk-std()-Y       | Time domain signal measuring standard deviation jerk signals from gyroscope in Z-plane 
32    | tBodyGyroJerk-std()-Z       | Time domain signal measuring standard deviation jerk signals from gyroscope in Z-plane 
33    | tBodyAccMag-mean()          | Time domain signal measuring mean of euclidean-norm-calculated magnitude from body accelerations
34    | tBodyAccMag-std()           | Time domain signal measuring standard deviation of euclidean-norm-calculated magnitude from body accelerations
35    | tGravityAccMag-mean()       | Time domain signal measuring mean of euclidean-norm-calculated magnitude from gravity accelerations
36    | tGravityAccMag-std()        | Time domain signal measuring standard deviation of euclidean-norm-calculated magnitude from gravity accelerations 
37    | tBodyAccJerkMag-mean()      | Time domain signal measuring mean of euclidean-norm-calculated magnitude from jerk signals of body accelerations               
38    | tBodyAccJerkMag-std()       | Time domain signal measuring standard deviation of euclidean-norm-calculated magnitude from jerk signals of body accelerations  
39    | tBodyGyroMag-mean()         | Time domain signal measuring mean of euclidean-norm-calculated magnitude from gyroscope 
40    | tBodyGyroMag-std()          | Time domain signal measuring standard deviation of euclidean-norm-calculated magnitude from gyroscope 
41    | tBodyGyroJerkMag-mean()     | Time domain signal measuring mean of euclidean-norm-calculated magnitude from jerk signals of gyroscope               
42    | tBodyGyroJerkMag-std()      | Time domain signal measuring standard deviation of euclidean-norm-calculated magnitude from jerk signals of gyroscope  
43    | fBodyAcc-mean()-X           | Frequency domain signal measuring mean body acceleration in X-plane                  
44    | fBodyAcc-mean()-Y           | Frequency domain signal measuring mean body acceleration in Y-plane                  
45    | fBodyAcc-mean()-Z           | Frequency domain signal measuring mean body acceleration in Z-plane                  
46    | fBodyAcc-std()-X            | Frequency domain signal measuring standard deviation of body acceleration in X-plane 
47    | fBodyAcc-std()-Y            | Frequency domain signal measuring standard deviation of body acceleration in Y-plane 
48    | fBodyAcc-std()-Z            | Frequency domain signal measuring standard deviation of body acceleration in Z-plane 
49    | fBodyAccJerk-mean()-X       | Frequency domain signal measuring mean jerk signals from body acceleration in X-plane                
50    | fBodyAccJerk-mean()-Y       | Frequency domain signal measuring mean jerk signals from body acceleration in Y-plane                
51    | fBodyAccJerk-mean()-Z       | Frequency domain signal measuring mean jerk signals from body acceleration in Z-plane                
52    | fBodyAccJerk-std()-X        | Frequency domain signal measuring standard deviation jerk signals from body acceleration in Z-plane  
53    | fBodyAccJerk-std()-Y        | Frequency domain signal measuring standard deviation jerk signals from body acceleration in Z-plane  
54    | fBodyAccJerk-std()-Z        | Frequency domain signal measuring standard deviation jerk signals from body acceleration in Z-plane  
55    | fBodyGyro-mean()-X          | Frequency domain signal measuring mean raw signals from gyroscope in X-plane                 
56    | fBodyGyro-mean()-Y          | Frequency domain signal measuring mean raw signals from gyroscope in Y-plane                 
57    | fBodyGyro-mean()-Z          | Frequency domain signal measuring mean raw signals from gyroscope in Z-plane                 
58    | fBodyGyro-std()-X           | Frequency domain signal measuring standard deviation raw signals from gyroscope in Z-plane   
59    | fBodyGyro-std()-Y           | Frequency domain signal measuring standard deviation raw signals from gyroscope in Z-plane   
60    | fBodyGyro-std()-Z           | Frequency domain signal measuring standard deviation raw signals from gyroscope in Z-plane   
61    | fBodyAccMag-mean()          | Frequency domain signal measuring mean of euclidean-norm-calculated magnitude from body accelerations
62    | fBodyAccMag-std()           | Frequency domain signal measuring standard deviation of euclidean-norm-calculated magnitude from body accelerations
63    | fBodyAccJerkMag-mean()      | Frequency domain signal measuring mean of euclidean-norm-calculated magnitude from jerk signals of body accelerations                   
64    | fBodyAccJerkMag-std()       | Frequency domain signal measuring standard deviation of euclidean-norm-calculated magnitude from jerk signals of body accelerations     
65    | fBodyGyroMag-mean()         | Frequency domain signal measuring mean of euclidean-norm-calculated magnitude from gyroscope                                            
66    | fBodyGyroMag-std()          | Frequency domain signal measuring standard deviation of euclidean-norm-calculated magnitude from gyroscope                              
67    | fBodyGyroJerkMag-mean()     | Frequency domain signal measuring mean of euclidean-norm-calculated magnitude from jerk signals of gyroscope                            
68    | fBodyGyroJerkMag-std()      | Frequency domain signal measuring standard deviation of euclidean-norm-calculated magnitude from jerk signals of gyroscope              
                                      
                                      
