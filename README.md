##Step 1: 
 - Load the R script called run_analysis.R in R Studion via the Open file option.
 - Follow the steps outlined in the script file by executing every line of code hitting contr+enter. If a red STOP 
sign apprears in the Console, pause until R completed the last command.

##Step 2:
 - Excute the first three lines of code from the script file. R will create a folder called Data in your home directory.
 - If you are using a MAC, add an additional argument (method) to the download.file command.
 - Check that the zip has been successfully downloaded by running the list.files command
 - Record the date of the download
 - Unzip the file. A new subfolder called UCI HAR Dataset should apprear in the Data folder.

##Step 3:
 - Set the working directory to be the newly created UCI HAR Dataset folder.
 - Read the features.txt file and remove the numbers in front of each feature label
 - Read the activity_labels.txt file and remove the numbers in front of each activity label.

##Step 4:
 - Set the train subfolder as your working directory.
 - Read the files subject_train.txt, y_train.txt and X_train.txt. Combine the files into a data set called "train".
 - Check if the data set train has exactly 7352 observations and 563 variables.

##Step 5:
 - Set the test folder as your working directory.
 - Read the files subject_test.txt, y_test.txt and X_test.txt. Combine the three files into a new data set called "test".
 - Check if the new data set has exactly 2947 observations and 563 variables.

##Step 6:
 - Merge the two data sets into a new dataset called combineSet. Coerse the subject variable to a numeric vector and
rearrange the dataset by the subject variable. 
 - Remove the row names and check the variables.

##Step 7:
 - Coerce the subject variable back to a factor variable with 30 levels and add labels to the activity variable.

##Step 8:
 - Extract the variables' names that correspond only to the mean or standard deviation measurement for each measurement.
   Note: For the purpuse of this project I decided not to select the mean values calculated for the angle() variables. 
 - Review if the selection output is correct.
 - Create an index for the variables that will only be extracted and subset these variables from the totalSet dataset.
 - Review the new dataset's structure. There should be 68 variables left in the finalSet dataset.

##Step 9:
 - Load the reshape2 library
 - Melt the dataframe using the melt() function by keeping only the two factor variables.
 - Recast the dataset by calculating means for all numeric variables.
 - Check the results
 - Set your working directory back to the Data folder and record the final tidy dataset as a csv file called "tidydata.csv"

