##Readme: Getting and cleaning data

To load the tidy summary dataset, run the following code:

read.table(url("https://s3.amazonaws.com/coursera-uploads/user-09db74fbd1c929bb31f862fe/975119/asst-3/26ef8ec0ac1611e594fa21fccc3ce2c8.txt"), header=T)


##About the Analysis File

This section describes the steps I used to download, merge, and clean the final dataset of averages for the course project.

The top section of the file loads necessary libraries and sets the working directory.

* Step One: Download and Unzip Data

I use the download.file and unzip commands to download and unzip the file. This creates a folder called "UCI Har Data" within the working directory. This folder has several subfolders, including /test (which contains the test data) and /train (which includes the training data).

* Step Two: Assemble the Data

The "features.txt" file contains a list of all 561 variable names for the test and training data. I save this data to a vector called "varnames" which I will use to label the data later.

Next, I import the test data measuresments (test/X_test.txt), activity labels(test/y_test.txt), and subject labels(subject_test.txt) using read.table. I use the varnames vector created before to label the test data columns.

The subect labels and test labels have the same number of rows as the test measurements (which makes sense--they are lists of each record), so I use cbind to combine all three of these data sources together and then rename ActivityLabel and SubjectLabel to remember what those variables contain. 

I use the same steps to assemble the training data.

Finally, I combine both datasets together using rbind into a dataset called samsung. To ensure that everything has compile properly, I use data.table commands to ensure that there are only 30 unique subjects, and that each subject completed 6 activities.

* Step 3: Choose only vars with mean or standard deviation measures

I use regular expressions and hte grep command to select the columns in samsung that contain "mean" or "std". I create a new dataset, samsung_use, that contains these variables plus the first two columns (which contain the subject and activity labels).

* Step 4: Relabel activities and edit variable names
Using the info in activity_labels.txt, I replace the numbers in the activities label variable with words.

The other variables are already descriptively labeled. Each name gives information about the type/transformations applied to the data (t or f), the type of measurement (eg BodyAcc GravityAcc), the axis (X,Y,Z), and the type of summary stat (mean or std)

In order to make them slightly cleaner, I use gsub to remove parentheses. Throughout this section and the next one I switch my data from data.frame to data.table format because I find it easier to edit names in data.frame but to perform summary operations in data.table

* Step 5: Create tidy dataset of averages

Using the data.table package (I am more familiar with data.table than dplyr) and lapply (using it with .SD applies the mean command to each colunn; the by=.(Subject, Activity) performs the function within these nested groups), I create a new dataset called samsung_clean which contains the mean of each column in samsung_use by participant and activity to fulfill the requirement. I add the prefix Avg_ to each of the measurement columns to clarify what they contain.

This is a tidy dataset because:
- there are no duplicate columns
- each column is clearly labeled
- each column contains only one type of data
- each row is a unique observation (one activity of one person)

