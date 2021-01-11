# Project Code Book

This code book will list/describe the variables that were extracted from the given Samsung dataset that tracked the Galaxy Smartphone's accelerometer. The initial dataset had many fields but we were most interested in those that included a mean or standard deviation value.
We then merged both the train and test datasets while simultaneously filering out the variables that we didn't need. The variables that we did pull out and use are listed in the table below:

**Note:** I couldn't access the dataset description so the majority of the measurements will not have a description

**Identifiers**

| Name | Description |
| --------- | ----------------------------------------- |
| Subject_Number | Subject identifier for each subject |
|  Activity |  The activity name for the test subject  |

**Activity Codes**
| Number | Name | Description |
| ------ | ---- | ----------- |
| 1      | WALKING | Subject was walking during the test |
| 2      |WALKING_UPSTAIRS | Subject was walking up a staircase during the test |
| 3      |WALKING_DOWNSTAIRS | Subject was walking down a staircase during the test |
| 4      |SITTING | Subject was sitting during the test |
| 5      |STANDING | Subject was standing during the test |
|6       |LAYING  | Subject was laying down during the test |

**Measurements**
| Name | Description |
| --------- | ----------------------------------------- |
tBodyAccMean-X        
tBodyAccMean-Y           
tBodyAccMean-Z           
tBodyAccStd-X           
tBodyAccStd-Y            
tBodyAccStd-Z
tGravityAccMean-X
tGravityAccMean-Y
tGravityAccMean-Z
tGravityAccStd-X        
tGravityAccStd-Y         
tGravityAccStd-Z         
tBodyAccJerkMean-X       
tBodyAccJerkMean-Y       
tBodyAccJerkMean-Z       
tBodyAccJerkStd-X       
tBodyAccJerkStd-Y        
tBodyAccJerkStd-Z        
tBodyGyroMean-X          
tBodyGyroMean-Y          
tBodyGyroMean-Z          
tBodyGyroStd-X          
tBodyGyroStd-Y           
tBodyGyroStd-Z           
tBodyGyroJerkMean-X      
tBodyGyroJerkMean-Y      
tBodyGyroJerkMean-Z      
tBodyGyroJerkStd-X      
tBodyGyroJerkStd-Y       
tBodyGyroJerkStd-Z       
tBodyAccMagMean          
tBodyAccMagStd           
tGravityAccMagMean       
tGravityAccMagStd       
tBodyAccJerkMagMean      
tBodyAccJerkMagStd       
tBodyGyroMagMean         
tBodyGyroMagStd          
tBodyGyroJerkMagMean     
tBodyGyroJerkMagStd     
fBodyAccMean-X           
fBodyAccMean-Y           
fBodyAccMean-Z           
fBodyAccStd-X            
fBodyAccStd-Y            
fBodyAccStd-Z           
fBodyAccMeanFreq-X       
fBodyAccMeanFreq-Y       
fBodyAccMeanFreq-Z       
fBodyAccJerkMean-X       
fBodyAccJerkMean-Y       
fBodyAccJerkMean-Z      
fBodyAccJerkStd-X        
fBodyAccJerkStd-Y        
fBodyAccJerkStd-Z        
fBodyAccJerkMeanFreq-X   
fBodyAccJerkMeanFreq-Y   
fBodyAccJerkMeanFreq-Z  
fBodyGyroMean-X          
fBodyGyroMean-Y          
fBodyGyroMean-Z          
fBodyGyroStd-X           
fBodyGyroStd-Y           
fBodyGyroStd-Z          
fBodyGyroMeanFreq-X      
fBodyGyroMeanFreq-Y      
fBodyGyroMeanFreq-Z      
fBodyAccMagMean          
fBodyAccMagStd           
fBodyAccMagMeanFreq     
fBodyAccJerkMagMean      
fBodyAccJerkMagStd       
fBodyAccJerkMagMeanFreq  
fBodyGyroMagMean         
fBodyGyroMagStd          
fBodyGyroMagMeanFreq    
fBodyGyroJerkMagMean     
fBodyGyroJerkMagStd      
fBodyGyroJerkMagMeanFreq
