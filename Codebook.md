##Codebook

#ID Variables
"Subject" - Indicator for identity of subject. There are 30 subjects 

"Activity"- Type of activity

#Measure Variables - In general, these var names contain 5 compontents: "Avg_" indicates that this is the mean of all measuresments for one subject and 
activity in a particular column. The next letter, a t or an f, indicates the measure domain (t = time, f = frequency).
The next characters until the period indicate the type of motion (Body Accerlation, Gravity Accelartion, Body Gyro,
Body Gyro Jerk). Mean means mean, std means Standard Deviation. The final XYZ indicates the axis in three dimensions.

ALL of the variables below are averages of the measure in question by subject and activity

"Avg_tBodyAcc.mean.X" - mean of mean time signal for BodyAcc on the X axis

"Avg_tBodyAcc.mean.Y" - mean of mean time signal for BodyAcc on the Y axis  

"Avg_tBodyAcc.mean.Z" - mean of mean time signal for BodyAcc on the Z axis

"Avg_tBodyAcc.std.X"  - mean of standard deviation of time signal for BodyAcc on the X axis 

"Avg_tBodyAcc.std.Y"  - mean of standard deviation of time signal for BodyAcc on the Y axiss 

"Avg_tBodyAcc.std.Z"  - mean of standard deviation of time signal for BodyAcc on the Z axis   

"Avg_tGravityAcc.mean.X"  - mean of mean time signal for GravityAcc on the X axis    

"Avg_tGravityAcc.mean.Y"   - mean of mean time signal for GravityAcc on the Y axis    

"Avg_tGravityAcc.mean.Z"   - mean of mean time signal for GravityAcc on the Z axis 

"Avg_tGravityAcc.std.X" - mean of standard deviation of time signal for GravityAcc on the X axis

"Avg_tGravityAcc.std.Y"  - mean of standard deviation of signal for GravityAcc on the Y axis

"Avg_tGravityAcc.std.Z" - mean of standard deviation of time signal for GravityAcc on the Z axis  

"Avg_tBodyAccJerk.mean.X"   - mean of mean of time signal for BodyAccJerk on the X axis

"Avg_tBodyAccJerk.mean.Y"   - mean of mean of time signal for BodyAccJerk on the Y axis   

"Avg_tBodyAccJerk.mean.Z"      - mean of mean of time signal for BodyAccJerk on the Z axis   

"Avg_tBodyAccJerk.std.X" - mean of standard deviation of time signal for BodyAccJerk on the X axis 

"Avg_tBodyAccJerk.std.Y" - mean of standard deviation of time signal for BodyAccJerk on the Y axis    

"Avg_tBodyAccJerk.std.Z" - mean of standard deviation of time signal for BodyAccJerk on the Z axis    

"Avg_tBodyGyro.mean.X"- mean of mean of time signal for BodyGyro on the X axis 

"Avg_tBodyGyro.mean.Y" - mean of mean of time signal for BodyGyro on the Y axis  

"Avg_tBodyGyro.mean.Z"  - mean of mean of time signal for BodyGyro on the Z axis   

"Avg_tBodyGyro.std.X" - mean of standard deviation of time signal for BodyGyro on the X axis 

"Avg_tBodyGyro.std.Y" - mean of standard deviation of time signal for BodyGyro on the Y axis               

"Avg_tBodyGyro.std.Z" - mean of standard deviation of time signal for BodyGyro on the Z axis               

"Avg_tBodyGyroJerk.mean.X"  - mean of mean of time signal for BodyGyroJerk on the X axis 

"Avg_tBodyGyroJerk.mean.Y"  - mean of mean of time signal for BodyGyroJerk on the Y axis       

"Avg_tBodyGyroJerk.mean.Z"   - mean of mean of time signal for BodyGyroJerk on the Z axis    

"Avg_tBodyGyroJerk.std.X" - mean of standard deviation of time signal for BodyGyroJerk on the X axis 

"Avg_tBodyGyroJerk.std.Y"  - mean of standard deviation of time signal for BodyGyroJerk on the Y axis   

"Avg_tBodyGyroJerk.std.Z"   - mean of standard deviation of time signal for BodyGyroJerk on the Z axis     

"Avg_tBodyAccMag.mean"    - mean of mean of time signal for magnitude of BodyAcc 

"Avg_tBodyAccMag.std" - mean of standard deviation of time signal for magnitude of BodyAcc   

"Avg_tGravityAccMag.mean"           -  mean of mean of time signal for magnitude of GravityAcc

"Avg_tGravityAccMag.std" -  mean of standard deviation of time signal for magnitude of GravityAcc   

"Avg_tBodyAccJerkMag.mean"  - mean of mean of time signal for magnitude of BodyAccJerk

"Avg_tBodyAccJerkMag.std" - mean of standard deviation of time signal for magnitude of BodyAccJerk 

"Avg_tBodyGyroMag.mean" - mean of mean of time signal for magnitude of BodyGyro 

"Avg_tBodyGyroMag.std" - mean of standard deviation of time signal for magnitude of BodyGyro

"Avg_tBodyGyroJerkMag.mean"  - mean of mean of time signal for magnitude of BodyGyroJerk    

"Avg_tBodyGyroJerkMag.std"  - mean of standard deviation of time signal for magnitude of BodyGyroJerk     

"Avg_fBodyAcc.mean.X" - mean of mean of frequency signal BodyAcc on the X axis  

"Avg_fBodyAcc.mean.Y" - mean of mean of frequency signal BodyAcc on the Y axis    

"Avg_fBodyAcc.mean.Z" - mean of mean of frequency signal BodyAcc on the Z axis      

"Avg_fBodyAcc.std.X" -  mean of standard deviation of frequency signal BodyAcc on the X axis  

"Avg_fBodyAcc.std.Y" -  mean of standard deviation of frequency signal BodyAcc on the Y axis     

"Avg_fBodyAcc.std.Z" -  mean of standard deviation of frequency signal BodyAcc on the Z axis        

"Avg_fBodyAcc.meanFreq.X" - mean of mean frequency of frequency signal BodyAcc on the X axis      

"Avg_fBodyAcc.meanFreq.Y"  - mean of mean frequency of frequency signal BodyAcc on the Y axis         

"Avg_fBodyAcc.meanFreq.Z"   - mean of mean frequency of frequency signal BodyAcc on the Z axis        

"Avg_fBodyAccJerk.mean.X" - mean of mean of frequency signal BodyAccJerk on the X axis 

"Avg_fBodyAccJerk.mean.Y" -  mean of mean of frequency signal BodyAccJerk on the Y axis    

"Avg_fBodyAccJerk.mean.Z"-  mean of mean of frequency signal BodyAccJerk on the Z axis      

"Avg_fBodyAccJerk.std.X"  - mean of standard deviation of frequency signal BodyAccJerk on the X axis   

"Avg_fBodyAccJerk.std.Y"   - mean of standard deviation of frequency signal BodyAccJerk on the Y axis 

"Avg_fBodyAccJerk.std.Z"   - mean of standard deviation of frequency signal BodyAccJerk on the Z axis       

"Avg_fBodyAccJerk.meanFreq.X"  - mean of mean frequency of frequency signal BodyAccJerk on the X axis      

"Avg_fBodyAccJerk.meanFreq.Y"  - mean of mean frequency of frequency signal BodyAccJerk on the Y axis      

"Avg_fBodyAccJerk.meanFreq.Z"   - mean of meanfrequency  of frequency signal BodyAccJerk on the Z axis    

"Avg_fBodyGyro.mean.X"- mean of mean of frequency signal BodyGyro on the X axis   

"Avg_fBodyGyro.mean.Y"  - mean of mean of frequency signal BodyGyro on the Y axis  

"Avg_fBodyGyro.mean.Z"   - mean of mean of frequency signal BodyGyro on the Z axis      

"Avg_fBodyGyro.std.X" - mean of standard deviation of frequency signal BodyGyro on the X axis  

"Avg_fBodyGyro.std.Y"  -mean of standard deviation of frequency signal BodyGyro on the Y axis       

"Avg_fBodyGyro.std.Z"  - mean of standard deviation of frequency signal BodyGyro on the Z axis      

"Avg_fBodyGyro.meanFreq.X"  - mean of mean frequency of frequency signal BodyGyro on the X axis      

"Avg_fBodyGyro.meanFreq.Y"  - mean of mean frequency of frequency signal BodyGyro on the Y axis        

"Avg_fBodyGyro.meanFreq.Z"   - mean of mean frequency of frequency signal BodyGyro on the Z axis      

"Avg_fBodyAccMag.mean"  - mean of mean of frequency signal magnitude of BodyAcc            

"Avg_fBodyAccMag.std" - mean of standard deviation of frequency signal magnitude of BodyAcc       

"Avg_fBodyAccMag.meanFreq" - mean of mean frequency of frequency signal magnitude of BodyAcc      

"Avg_fBodyBodyAccJerkMag.mean" - mean of mean of frequency signal magnitude of BodyAccJerk        

"Avg_fBodyBodyAccJerkMag.std" - mean of standard deviation of frequency signal magnitude of BodyAccJerk   

"Avg_fBodyBodyAccJerkMag.meanFreq" - mean of mean frequency of frequency signal magnitude of BodyAccJerk   

"Avg_fBodyBodyGyroMag.mean"  - mean of mean of frequency signal magnitude of BodyGyro         

"Avg_fBodyBodyGyroMag.std" - mean of standard deviation of frequency signal magnitude of BodyGyro       

"Avg_fBodyBodyGyroMag.meanFreq"  - mean of mean frequency  of frequency signal magnitude of BodyGyro    

"Avg_fBodyBodyGyroJerkMag.mean"- mean of mean frequency signal magnitude of BodyGyroJerk     

"Avg_fBodyBodyGyroJerkMag.std" - mean of standard deviation of frequency signal magnitude of BodyGyroJerk

"Avg_fBodyBodyGyroJerkMag.meanFreq"- mean frequency of mean frequency signal magnitude of BodyGyroJerk
