##This is a codebook for the Getting and Cleaning Data Course Project.

##Content of the final dataset:
 - Variables - 68
 - Observations - 180
 
##Variables Description:
 - subjects: A categorical variable of 30 levels. Identifies the subjects that participates in the Samsung study. Values:    the numbers from 1 to 30.
 - activity: A categorical variable of 6 levels. Identifies for which activity the data was recorded. Values: WALKING, 
WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
 - Measurements - the mean and the standard deviation of each measurement were calculated. Then the variables were averaged across activities for each subject.
 
 [1] tBodyAcc-mean()-X           
 [2] tBodyAcc-mean()-Y        
 [3] tBodyAcc-mean()-Z
 [4] tBodyAcc-std()-X          
 [5] tBodyAcc-std()-Y
 [6] tBodyAcc-std()-Z           
 [7] tGravityAcc-mean()-X        
 [8] tGravityAcc-mean()-Y      
 [9] tGravityAcc-mean()-Z        
[10] tGravityAcc-std()-X        
[11] tGravityAcc-std()-Y         
[12] tGravityAcc-std()-Z       
[13] tBodyAccJerk-mean()-X       
[14] tBodyAccJerk-mean()-Y     
[15] tBodyAccJerk-mean()-Z       
[16] tBodyAccJerk-std()-X       
[17] tBodyAccJerk-std()-Y        
[18] tBodyAccJerk-std()-Z       
[19] tBodyGyro-mean()-X         
[20] tBodyGyro-mean()-Y        
[21] tBodyGyro-mean()-Z          
[22] tBodyGyro-std()-X          
[23] tBodyGyro-std()-Y           
[24] tBodyGyro-std()-Z          
[25] tBodyGyroJerk-mean()-X      
[26] tBodyGyroJerk-mean()-Y    
[27] tBodyGyroJerk-mean()-Z      
[28] tBodyGyroJerk-std()-X      
[29] tBodyGyroJerk-std()-Y       
[30] tBodyGyroJerk-std()-Z      
[31] tBodyAccMag-mean()        
[32] tBodyAccMag-std()       
[33] tGravityAccMag-mean()       
[34] tGravityAccMag-std()      
[35] tBodyAccJerkMag-mean()      
[36] tBodyAccJerkMag-std()      
[37] tBodyGyroMag-mean()         
[38] tBodyGyroMag-std()      
[39] tBodyGyroJerkMag-mean()     
[40] tBodyGyroJerkMag-std()     
[41] fBodyAcc-mean()-X           
[42] fBodyAcc-mean()-Y          
[43] fBodyAcc-mean()-Z           
[44] fBodyAcc-std()-X           
[45] fBodyAcc-std()-Y            
[46] fBodyAcc-std()-Z        
[47] fBodyAccJerk-mean()-X       
[48] fBodyAccJerk-mean()-Y      
[49] fBodyAccJerk-mean()-Z       
[50] fBodyAccJerk-std()-X      
[51] fBodyAccJerk-std()-Y        
[52] fBodyAccJerk-std()-Z      
[53] fBodyGyro-mean()-X          
[54] fBodyGyro-mean()-Y         
[55] fBodyGyro-mean()-Z          
[56] fBodyGyro-std()-X          
[57] fBodyGyro-std()-Y           
[58] fBodyGyro-std()-Z          
[59] fBodyAccMag-mean()          
[60] fBodyAccMag-std()          
[61] fBodyBodyAccJerkMag-mean()  
[60] fBodyBodyAccJerkMag-std()  
[63] fBodyBodyGyroMag-mean()     
[64] fBodyBodyGyroMag-std()     
[65] fBodyBodyGyroJerkMag-mean() 
[66] fBodyBodyGyroJerkMag-std() 

 - The variables containing the following descriptive statistics of the initially collected data were removed as per the requirements. The additional vectors obtained by averaging the signals in the signal window sample (gravityMean, tBodyAccMean, tBodyAccJerkMean, tBodyGyroMean, tBodyGyroJerkMean) across the angle() variable were also removed. 

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
